#ifndef __SMARTMI2C_H__
#define __SMARTMI2C_H__



//IO Direction setting 
#define SDA_IN()   		{GPIO_SetMode(PE, BIT13, GPIO_MODE_INPUT);}
#define SDA_OUT()  		{GPIO_SetMode(PE, BIT13, GPIO_MODE_OUTPUT);}

//IO Operational function 	 
#define IIC_SCL(x)    PE12=(x) //SCL
#define IIC_SDA(x)    PE13=(x) //SDA	 
#define READ_SDA      PE13

//IIC Operational function 
void IIC_Init(void);                //Initialize the IO port of IIC  				 
void IIC_Start(void);								//Send the Start Signal of IIC  
void IIC_Stop(void);	  						//Send the Stop Signal of IIC 
void IIC_Send_Byte(uint8_t txd);					//IIC sends a byte 
uint8_t IIC_Read_Byte(uint8_t ack);//IIC read a byte 
uint8_t IIC_Wait_Ack(void); 							//IIC wait ACK Signal 
void IIC_Ack(void);									//IIC send ACK Signal
void IIC_NAck(void);								//IIC not send ACK Signal 

void IIC_Write_One_Byte(uint8_t daddr,uint8_t addr,uint8_t data);
uint8_t IIC_Read_One_Byte(uint8_t daddr,uint8_t addr);	  


#endif

