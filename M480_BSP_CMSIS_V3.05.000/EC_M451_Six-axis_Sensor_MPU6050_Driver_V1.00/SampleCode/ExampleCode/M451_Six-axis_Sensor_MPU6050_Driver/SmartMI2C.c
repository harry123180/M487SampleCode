/**************************************************************************//**
 * @file     SmartMI2C.c
 * @brief 	 I2C driver source file
 * 
 * @note
 * Copyright (C) 2018 Nuvoton Technology Corp. All rights reserved.
 *****************************************************************************/
#include "SmartM_M4.h"

/**
  * @brief      Initial I2C 
  * @param  		None
  * @return     None
  *
  * @details    Configure PE12 PE13 as output mode 
  */	
void IIC_Init(void)
{					     
	GPIO_SetMode(PE, BIT12|BIT13, GPIO_MODE_OUTPUT);
	SDA_OUT();	   
}

/**
  * @brief      Send start signal of I2C
  * @param  		None
  * @return     None
  *
  * @details    First SDA SCL Output High Level,then SDA Output low ,dalay 50us,SCL Output low   
  */	
void IIC_Start(void)
{
	SDA_OUT();     //sda output mode
	IIC_SDA(1);	  	  
	IIC_SCL(1);
	Delayus(50);
	IIC_SDA(0);		//START:when CLK is high,DATA change form high to low 
	Delayus(50);
	IIC_SCL(0);		//Hold the bus, ready to send or receive data
}	  

/**
  * @brief      Send stop signal of I2C
  * @param  		None
  * @return     None
  *
  * @details    First SDA SCL Output low Level,then SDA SCL Output hight   
  */	
void IIC_Stop(void)
{
	SDA_OUT();		//sda output mode
	IIC_SCL(0);
	IIC_SDA(0);		//STOP:when CLK is high DATA change form low to high
	Delayus(50);
	IIC_SCL(1); 
	IIC_SDA(1);		//Send I2C Bus End Signal
	Delayus(50);							   	
}

/**
  * @brief      Waiting for response signal 
  * @param  		None
  * @return     1 Failure of receiving reply 
	*							0 Successful of receiving reply
  *
  * @details    SDA is set as input mode, 
	*						  releasing bus waiting for external response signal will pull SDA down, 
	*						  if pulled down, the response will succeed, otherwise it will fail.   
  */	
uint8_t IIC_Wait_Ack(void)
{
	uint8_t ucErrTime=0;
	SDA_IN();      //SDA input mode  
	IIC_SDA(1);Delayus(10);	   
	IIC_SCL(1);Delayus(10);	 
	while(READ_SDA)
	{
		ucErrTime++;
		if(ucErrTime>250)
		{
			IIC_Stop();
			return 1;
		}
	}
	IIC_SCL(0);		//SCL output low  	   
	return 0;  
} 

/**
  * @brief      Send a response signal  
  * @param  		None
  * @return     None
  *
  * @details    At SCL low level, SDA is set to output mode and output low as a response.   
  */	
void IIC_Ack(void)
{
	IIC_SCL(0);
	SDA_OUT();
	IIC_SDA(0);
	Delayus(20);
	IIC_SCL(1);
	Delayus(20);
	IIC_SCL(0);
}

/**
  * @brief      Not response signal  
  * @param  		None
  * @return     None
  *
  * @details    At SCL low level, SDA is set to output mode and output high .   
  */	
void IIC_NAck(void)
{
	IIC_SCL(0);
	SDA_OUT();
	IIC_SDA(1);
	Delayus(20);
	IIC_SCL(1);
	Delayus(20);
	IIC_SCL(0);
}		

/**
  * @brief      Sends a byte data  
  * @param  		txd is Data to be sent
  * @return     None
  *
  * @details    At CLK is low level, SDA transmits one bit of data, a total of eight times.   
  */	
void IIC_Send_Byte(uint8_t txd)
{                        
	uint8_t t;   
	SDA_OUT(); 	    
	IIC_SCL(0);
	for(t=0;t<8;t++)
	{              
		IIC_SDA((txd&0x80)>>7);
		txd<<=1; 	  
		Delayus(20);   
		IIC_SCL(1);
		Delayus(20); 
		IIC_SCL(0);	
		Delayus(20);
	}	 
} 	    
 
/**
  * @brief      Read a byte data   
  * @param  		ack = 1,send ACK; ack = 0,send nACK
  * @return     Data received
  *
  * @details    At CLK is high level, SDA received one bit of data, a total of eight times. 
	*						  Decide whether to send a response signal based on the value of ack.
  */	
uint8_t IIC_Read_Byte(uint8_t ack)
{
	uint8_t i,receive=0;
	SDA_IN();
	for(i=0;i<8;i++ )
	{
		IIC_SCL(0); 
		Delayus(20);
		IIC_SCL(1);
		receive<<=1;
		if(READ_SDA)receive++;   
		Delayus(1); 
	}					 
	if (!ack)
	IIC_NAck();
	else
	IIC_Ack();   
	return receive;
	
}

