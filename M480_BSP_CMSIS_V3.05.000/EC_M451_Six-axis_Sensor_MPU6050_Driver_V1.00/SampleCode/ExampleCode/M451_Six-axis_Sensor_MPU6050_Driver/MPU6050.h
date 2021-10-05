#ifndef __MPU6050_H
#define __MPU6050_H
 												  	  


#define MPU_SELF_TESTX_REG		0X0D	//Self-Check Register X
#define MPU_SELF_TESTY_REG		0X0E	//Self-Check Register Y
#define MPU_SELF_TESTZ_REG		0X0F	//Self-Check Register Z
#define MPU_SELF_TESTA_REG		0X10	//Self-Check Register A
#define MPU_SAMPLE_RATE_REG		0X19	//Sampling Frequency Divider 
#define MPU_CFG_REG				0X1A	//Configuration Register 
#define MPU_GYRO_CFG_REG		0X1B	//Gyro Configuration Register 
#define MPU_ACCEL_CFG_REG		0X1C	//Accelerometer Configuration Register 
#define MPU_MOTION_DET_REG		0X1F	//Motion Detection Threshold Setting Register 
#define MPU_FIFO_EN_REG			0X23	//FIFO Enabling Register 
#define MPU_I2CMST_CTRL_REG		0X24	//IIC Host Control Register 
#define MPU_I2CSLV0_ADDR_REG	0X25	//IIC Slave 0 Device Address Register 
#define MPU_I2CSLV0_REG			0X26	//IIC Slave 0 data Address Register 
#define MPU_I2CSLV0_CTRL_REG	0X27	//IIC Slave 0 Control Register 
#define MPU_I2CSLV1_ADDR_REG	0X28	//IIC Slave 1 Device Address Register 
#define MPU_I2CSLV1_REG			0X29	//IIC Slave 1 data Address Register
#define MPU_I2CSLV1_CTRL_REG	0X2A	//IIC Slave 1 Control Register 
#define MPU_I2CSLV2_ADDR_REG	0X2B	//IIC Slave 2 Device Address Register 
#define MPU_I2CSLV2_REG			0X2C	//IIC Slave 2 data Address Register 
#define MPU_I2CSLV2_CTRL_REG	0X2D	//IIC Slave 2 Control Register 
#define MPU_I2CSLV3_ADDR_REG	0X2E	//IIC Slave 3 Device Address Register
#define MPU_I2CSLV3_REG			0X2F	//IIC Slave 3 data Address Register 
#define MPU_I2CSLV3_CTRL_REG	0X30	//IIC Slave 3 Control Register 
#define MPU_I2CSLV4_ADDR_REG	0X31	//IICSlave 4 Device Address Register 
#define MPU_I2CSLV4_REG			0X32	//IIC Slave 4 data Address Register 
#define MPU_I2CSLV4_DO_REG		0X33	//IIC Slave 4 Write Data Register  
#define MPU_I2CSLV4_CTRL_REG	0X34	//IIC Slave 4 Control Register
#define MPU_I2CSLV4_DI_REG		0X35	//IIC Slave 4 Read Data Register 

#define MPU_I2CMST_STA_REG		0X36	//IIC Host Status Register 
#define MPU_INTBP_CFG_REG		0X37	//Interrupt/bypass configuration register  
#define MPU_INT_EN_REG			0X38	//Interrupt enable register 
#define MPU_INT_STA_REG			0X3A	//Interrupt status register 

#define MPU_ACCEL_XOUTH_REG		0X3B	//Acceleration value,X-axis high 8-bit register 
#define MPU_ACCEL_XOUTL_REG		0X3C	//Acceleration value,X-axis low 8-bit register 
#define MPU_ACCEL_YOUTH_REG		0X3D	//Acceleration value,Y-axis high 8-bit register
#define MPU_ACCEL_YOUTL_REG		0X3E	//Acceleration value,Y-axis low 8-bit register 
#define MPU_ACCEL_ZOUTH_REG		0X3F	//Acceleration value,Z-axis high 8-bit register
#define MPU_ACCEL_ZOUTL_REG		0X40	//Acceleration value,Z-axis low 8-bit register 

#define MPU_TEMP_OUTH_REG		0X41	// high 8-bit register of Temperature value 
#define MPU_TEMP_OUTL_REG		0X42	// value low 8-bit register of Temperature value 

#define MPU_GYRO_XOUTH_REG		0X43	//Gyroscope value ,X-axis high 8-bit register 
#define MPU_GYRO_XOUTL_REG		0X44	//Gyroscope value ,X-axis low 8-bit register 
#define MPU_GYRO_YOUTH_REG		0X45	//Gyroscope value ,Y-axis high 8-bit register 
#define MPU_GYRO_YOUTL_REG		0X46	//Gyroscope value ,Y-axis low 8-bit register 
#define MPU_GYRO_ZOUTH_REG		0X47	//Gyroscope value ,Z-axis high 8-bit register 
#define MPU_GYRO_ZOUTL_REG		0X48	//Gyroscope value ,Z-axis low 8-bit register 

#define MPU_I2CSLV0_DO_REG		0X63	//IIC Slave 0 data Register 
#define MPU_I2CSLV1_DO_REG		0X64	//IIC Slave 1 data Register 
#define MPU_I2CSLV2_DO_REG		0X65	//IIC Slave 2 data Register 
#define MPU_I2CSLV3_DO_REG		0X66	//IIC Slave 3 data Register 

#define MPU_I2CMST_DELAY_REG	0X67	//IIC Host Delay Management Register 
#define MPU_SIGPATH_RST_REG		0X68	//Signal channel reset register 
#define MPU_MDETECT_CTRL_REG	0X69	//Motion Detection Control Register  
#define MPU_USER_CTRL_REG		0X6A	//User Control Register 
#define MPU_PWR_MGMT1_REG		0X6B	//Power Management Register 1 
#define MPU_PWR_MGMT2_REG		0X6C	//Power Management Register 2 
#define MPU_FIFO_CNTH_REG		0X72	//FIFO Count Register high 8-bit 
#define MPU_FIFO_CNTL_REG		0X73	//FIFO Count Register low 8-bit 
#define MPU_FIFO_RW_REG			0X74	//FIFO Read Write Register 
#define MPU_DEVICE_ID_REG		0X75	//Device ID Register 
 
//If the AD0 pin (9th pin) is grounded, the IIC address is 0x68 (excluding the lowest bit) 
//If connected to V3.3, the IIC address is 0x69 (excluding the lowest bit) 
#define MPU_ADDR				0X68


//Because the development board is grounded, 
//it is 0xD1 and 0xD0 (if connected to GND, 0XD3 and 0XD2) after converting to read and write addresses.
//#define MPU_READ    0XD1
//#define MPU_WRITE   0XD0

uint8_t MPU_Init(void); 											//Initialization MPU6050
uint8_t MPU_Write_Len(uint8_t addr,uint8_t reg,uint8_t len,uint8_t *buf);	//IIC Continuous writing
uint8_t MPU_Read_Len(uint8_t addr,uint8_t reg,uint8_t len,uint8_t *buf); 	//IIC Continuous reading 
uint8_t MPU_Write_Byte(uint8_t reg,uint8_t data);						//IIC write a byte 
uint8_t MPU_Read_Byte(uint8_t reg);									//IIC read a byte 

uint8_t MPU_Set_Gyro_Fsr(uint8_t fsr);
uint8_t MPU_Set_Accel_Fsr(uint8_t fsr);
uint8_t MPU_Set_LPF(uint16_t lpf);
uint8_t MPU_Set_Rate(uint16_t rate);
uint8_t MPU_Set_Fifo(uint8_t sens);


int16_t MPU_Get_Temperature(void);
uint8_t MPU_Get_Gyroscope(int16_t *gx,int16_t *gy,int16_t *gz);
uint8_t MPU_Get_Accelerometer(int16_t *ax,int16_t *ay,int16_t *az);

#endif




































