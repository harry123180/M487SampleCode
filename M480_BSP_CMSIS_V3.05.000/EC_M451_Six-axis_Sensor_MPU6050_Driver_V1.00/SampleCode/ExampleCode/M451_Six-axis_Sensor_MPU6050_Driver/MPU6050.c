/**************************************************************************//**
 * @file     MPU6050.c
 * @brief 	 Through I2C bus, the register of MPU6050 is
 *					 set to complete initialization,Setting MPU6050
 *					 Full Range of Gyroscope,Range of Accelerometer
 *					 Digital Low Pass Filter.etc.
 * 
 * @note
 * Copyright (C) 2018 Nuvoton Technology Corp. All rights reserved.
 *****************************************************************************/
#include "SmartM_M4.h"

/**
  * @brief      Initialization MPU6050    
  * @param  		none
  * @return     0: successful
	*							other: failure
  *
  * @details    Through I2C bus, the register of MPU6050 is set to complete initialization
  */	
uint8_t MPU_Init(void)
{ 
	uint8_t res;
	IIC_Init();//Init IIC bus 
	MPU_Write_Byte(MPU_PWR_MGMT1_REG,0X80);	//RESET MPU6050
	Delayms(100);
	MPU_Write_Byte(MPU_PWR_MGMT1_REG,0X00);	//wake up MPU6050 
	MPU_Set_Gyro_Fsr(3);					//gyroscope ,¡À2000dps
	MPU_Set_Accel_Fsr(0);					//Accelerometer,¡À2g
	MPU_Set_Rate(50);						//Setting Sampling Rate ,50Hz
	MPU_Write_Byte(MPU_INT_EN_REG,0X00);	//Close all interrupts 
	MPU_Write_Byte(MPU_USER_CTRL_REG,0X00);	//I2C Master Mode close 
	MPU_Write_Byte(MPU_FIFO_EN_REG,0X00);	//close FIFO
	MPU_Write_Byte(MPU_INTBP_CFG_REG,0X80);	//INT low level Active 
	res=MPU_Read_Byte(MPU_DEVICE_ID_REG);
	printf("RES=%x\r\n",res);
	if(res==MPU_ADDR)//Device ID is correct  
	{
		MPU_Write_Byte(MPU_PWR_MGMT1_REG,0X01);	
		MPU_Write_Byte(MPU_PWR_MGMT2_REG,0X00);	
		MPU_Set_Rate(50);						//Setting Sampling Rate 50Hz
	}else return 1;
	return 0;
}

/**
  * @brief      Setting MPU6050 Full Range of Gyroscope    
  * @param  		fsr:0,¡À250dps;
	*									1,¡À500dps;
	*									2,¡À1000dps;
	*									3,¡À2000dps
  * @return     0: successful
	*							other: failure
  *
  * @details    Setting Full Range of Gyroscope Sensor
  */	
uint8_t MPU_Set_Gyro_Fsr(uint8_t fsr)
{
	return MPU_Write_Byte(MPU_GYRO_CFG_REG,fsr<<3);
}

/**
  * @brief      Setting MPU6050 Full Range of Accelerometer     
  * @param  		fsr:0,¡À2g;
	*									1,¡À4g;
	*									2,¡À8g;
	*									3,¡À16g
  * @return     0: successful
	*							other: failure
  *
  * @details    Setting Full Range of Accelerometer
  */	
uint8_t MPU_Set_Accel_Fsr(uint8_t fsr)
{
	return MPU_Write_Byte(MPU_ACCEL_CFG_REG,fsr<<3); 
}

/**
  * @brief      Setting MPU6050 Digital Low Pass Filter      
  * @param  		fsr:Digital Low Pass Filtering Frequency(Hz)
  * @return     0: successful
	*							other: failure
  *
  * @details    Setting MPU6050 Digital Low Pass Filtering Frequency
  */	
uint8_t MPU_Set_LPF(uint16_t lpf)
{
	uint8_t data=0;
	if(lpf>=188)data=1;
	else if(lpf>=98)data=2;
	else if(lpf>=42)data=3;
	else if(lpf>=20)data=4;
	else if(lpf>=10)data=5;
	else data=6; 
	return MPU_Write_Byte(MPU_CFG_REG,data);
}

/**
  * @brief      Setting MPU6050 sampling rate       
  * @param  		rate:4~1000(Hz)
  * @return     0: successful
	*							other: failure
  *
  * @details    Setting MPU6050 sampling rate 
  */	
uint8_t MPU_Set_Rate(uint16_t rate)
{
	uint8_t data;
	if(rate>1000)rate=1000;
	if(rate<4)rate=4;
	data=1000/rate-1;
	data=MPU_Write_Byte(MPU_SAMPLE_RATE_REG,data);	
	return MPU_Set_LPF(rate/2);
}


/**
  * @brief      Get the temperature value        
  * @param  		none
  * @return     temperature value
  *
  * @details    Get MPU6050 temperature value 
  */	
int16_t MPU_Get_Temperature(void)
{
	uint8_t buf[2]; 
	int16_t raw;
	float temp;
	MPU_Read_Len(MPU_ADDR,MPU_TEMP_OUTH_REG,2,buf); 
	raw=((u16)buf[0]<<8)|buf[1];  
	temp=36.53+((double)raw)/340;  
	return temp*100;;
}

/**
  * @brief      Obtaining gyroscope values (RAW Data)        
	* @param  		gx:Raw data of gyroscope X-axis
	*							gy:Raw data of gyroscope Y-axis
	*							gz:Raw data of gyroscope Z-axis
  * @return     0: successful
	*							other: failure
  *
  * @details    Obtaining gyroscope values 
  */	
uint8_t MPU_Get_Gyroscope(int16_t *gx,int16_t *gy,int16_t *gz)
{
	uint8_t buf[6],res;  
	res=MPU_Read_Len(MPU_ADDR,MPU_GYRO_XOUTH_REG,6,buf);
	if(res==0)
	{
		*gx=((u16)buf[0]<<8)|buf[1];  
		*gy=((u16)buf[2]<<8)|buf[3];  
		*gz=((u16)buf[4]<<8)|buf[5];
	} 	
	return res;;
}

/**
  * @brief      Obtaining Accelerometer values (RAW Data)        
	* @param  		gx:Raw data of Accelerometer X-axis
	*							gy:Raw data of Accelerometer Y-axis
	*							gz:Raw data of Accelerometer Z-axis
  * @return     0: successful
	*							other: failure
  *
  * @details    Obtaining Accelerometer values 
  */	
uint8_t MPU_Get_Accelerometer(int16_t *ax,int16_t *ay,int16_t *az)
{
	uint8_t buf[6],res;  
	res=MPU_Read_Len(MPU_ADDR,MPU_ACCEL_XOUTH_REG,6,buf);
	if(res==0)
	{
		*ax=((u16)buf[0]<<8)|buf[1];  
		*ay=((u16)buf[2]<<8)|buf[3];  
		*az=((u16)buf[4]<<8)|buf[5];
	} 	
	return res;;
}

/**
  * @brief      IIC Continuous Writing         
	* @param  		addr:Device Address 
	*							reg:Register address 
	*							len:Write data length 
								buf:Data Storage Area 
  * @return     0: successful
	*							other: failure
  *
  * @details    IIC Continuous Writing 
  */	
uint8_t MPU_Write_Len(uint8_t addr,uint8_t reg,uint8_t len,uint8_t *buf)
{
	uint8_t i; 
	IIC_Start(); 
	IIC_Send_Byte((addr<<1)|0);
	if(IIC_Wait_Ack())	
	{
		IIC_Stop();		 
		return 1;		
	}
	IIC_Send_Byte(reg);	
	IIC_Wait_Ack();		
	for(i=0;i<len;i++)
	{
		IIC_Send_Byte(buf[i]);	
		if(IIC_Wait_Ack())		
		{
			IIC_Stop();	 
			return 1;		 
		}		
	}    
	IIC_Stop();	 
	return 0;	
} 

/**
  * @brief      IIC Continuous Reading         
	* @param  		addr:Device Address 
	*							reg:Register address 
	*							len:Read data length 
								buf:Data Storage Area 
  * @return     0: successful
	*							other: failure
  *
  * @details    IIC Continuous Reading 
  */	
uint8_t MPU_Read_Len(uint8_t addr,uint8_t reg,uint8_t len,uint8_t *buf)
{ 
	IIC_Start(); 
	IIC_Send_Byte((addr<<1)|0);	
	if(IIC_Wait_Ack())	
	{
		IIC_Stop();		 
		return 1;		
	}
	IIC_Send_Byte(reg);	
	IIC_Wait_Ack();		
	IIC_Start();
	IIC_Send_Byte((addr<<1)|1);
	IIC_Wait_Ack();		
	while(len)
	{
		if(len==1)*buf=IIC_Read_Byte(0); 
		else *buf=IIC_Read_Byte(1);		 
		len--;
		buf++; 
	}    
	IIC_Stop();	
	return 0;	
}

/**
  * @brief      IIC writes a byte         
	* @param  		reg:Register address 
	*							data:write data 
  * @return     0: successful
	*							other: failure
  *
  * @details    writes a byte to MPU 
  */	
uint8_t MPU_Write_Byte(uint8_t reg,uint8_t data) 				 
{ 
	IIC_Start(); 
	IIC_Send_Byte((MPU_ADDR<<1)|0);	
	if(IIC_Wait_Ack())	
	{
		IIC_Stop();		 
		return 1;		
	}
	IIC_Send_Byte(reg);	
	IIC_Wait_Ack();		
	IIC_Send_Byte(data);
	if(IIC_Wait_Ack())	
	{
		IIC_Stop();	 
		return 1;		 
	}		 
	IIC_Stop();	 
	return 0;
}

/**
  * @brief      IIC read a byte         
	* @param  		reg:Register address 
  * @return     res: read of data
	*							
  * @details    read a byte data from MPU 
  */	
uint8_t MPU_Read_Byte(uint8_t reg)
{
	uint8_t res;
	IIC_Start(); 
	IIC_Send_Byte((MPU_ADDR<<1)|0);
	IIC_Wait_Ack();		 
	IIC_Send_Byte(reg);	
	IIC_Wait_Ack();		
	IIC_Start();
	IIC_Send_Byte((MPU_ADDR<<1)|1);
	IIC_Wait_Ack();		
	res=IIC_Read_Byte(0);
	IIC_Stop();			
	return res;		
}

