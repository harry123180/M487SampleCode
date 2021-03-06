/**************************************************************************//**
 * @file     main.c
 * @brief 	 uses M451 GPIO to simulate I2C to initialize
 *					 6-axis sensor, reads 6-axis sensor data through
 *					 I2C??and sends data to PC through UART.
 *            
 * @note
 * Copyright (C) 2018 Nuvoton Technology Corp. All rights reserved.
 *****************************************************************************/
#include "SmartM_M4.h"
/*-------------------------------------------------------*/
/*                   Global variables                             */
/*-------------------------------------------------------*/

/*-------------------------------------------------------*/
/*                    Function area                      */
/*-------------------------------------------------------*/

/**
  * @brief      Send data by serial port 0
  * @param[in]  fun is control comand. 0XA0~0XAF
  * @param[in]  data is databuffer ,most 28 byte
  * @param[in]  len is Number of valid data
  * @return     None
  *
  * @details    Transfer data to four-axis host computer software(V2.6)
  */
void Uart0NimingReport(uint8_t fun, uint8_t *data, uint8_t len)
{
    uint8_t send_buf[32];
    uint8_t i;

    if (len > 28)return;    //most of 28 byte

    send_buf[len + 3] = 0;  //Check number set 0
    send_buf[0] = 0X88; 		//frame head
    send_buf[1] = fun;  		//command
    send_buf[2] = len;  		//data length

    for (i = 0; i < len; i++)send_buf[3 + i] = data[i];         		//copy data

    for (i = 0; i < len + 3; i++)send_buf[len + 3] += send_buf[i];  //Checksum

    for (i = 0; i < len + 4; i++)UART_Write(UART0, &send_buf[i], 1);//Send data to serial port 0
}

/**
  * @brief      Send data from MPU6050 sensor
  * @param[in]  aacx is Acceleration values in x directions
  * @param[in]  aacy is Acceleration values in y directions
  * @param[in]  aacz is Acceleration values in z directions
	* @param[in]  gyrox is Gyroscope values in x directions
  * @param[in]  gyroy is Gyroscope values in y directions
  * @param[in]  gyroz is Gyroscope values in z directions
  * @return     None
  *
  * @details    Sending Acceleration Sensor Data and Gyroscope Data
  */
void MPU6050SendData(int16_t aacx, int16_t aacy, int16_t aacz, int16_t gyrox, int16_t gyroy, int16_t gyroz)
{
    uint8_t tbuf[12];

    tbuf[0] = (aacx >> 8) & 0XFF;
    tbuf[1] = aacx & 0XFF;
    tbuf[2] = (aacy >> 8) & 0XFF;
    tbuf[3] = aacy & 0XFF;
    tbuf[4] = (aacz >> 8) & 0XFF;
    tbuf[5] = aacz & 0XFF;
    tbuf[6] = (gyrox >> 8) & 0XFF;
    tbuf[7] = gyrox & 0XFF;
    tbuf[8] = (gyroy >> 8) & 0XFF;
    tbuf[9] = gyroy & 0XFF;
    tbuf[10] = (gyroz >> 8) & 0XFF;
    tbuf[11] = gyroz & 0XFF;
    Uart0NimingReport(0XA1, tbuf, 12); //customized frame ,0XA1
}

/**
  * @brief      Send processed data
  * @param[in]  aacx is Acceleration values in x directions.
  * @param[in]  aacy is Acceleration values in y directions.
  * @param[in]  aacz is Acceleration values in z directions.
	* @param[in]  gyrox is Gyroscope values in x directions.
  * @param[in]  gyroy is Gyroscope values in y directions.
  * @param[in]  gyroz is Gyroscope values in z directions.
	* @param[in]  roll is Roll angle.
	* 						Unit 0.01 degrees.-18000 -> 18000 equal -180.00 degrees ->  180.00 degrees.
  * @param[in]  pitch is Elevation angle.
	*             Unit 0.01 degrees.-9000 - 9000 equal -90.00 -> 90.00 degrees.
  * @param[in]  yaw is Heading angle.
	*   					Unit 0.1 degrees 0 -> 3600  equal 0 -> 360.0 degrees.
  * @return     None
  *
  * @details    Reporting the calculated attitude data to the computer through serial port 0
  */
void Uart0ReportImu(int16_t aacx, int16_t aacy, int16_t aacz, int16_t gyrox, int16_t gyroy, int16_t gyroz, int16_t roll, int16_t pitch, short yaw)
{
    uint8_t tbuf[28];
    uint8_t i;

    for (i = 0; i < 28; i++)tbuf[i] = 0; //set 0

    tbuf[0] = (aacx >> 8) & 0XFF;
    tbuf[1] = aacx & 0XFF;
    tbuf[2] = (aacy >> 8) & 0XFF;
    tbuf[3] = aacy & 0XFF;
    tbuf[4] = (aacz >> 8) & 0XFF;
    tbuf[5] = aacz & 0XFF;
    tbuf[6] = (gyrox >> 8) & 0XFF;
    tbuf[7] = gyrox & 0XFF;
    tbuf[8] = (gyroy >> 8) & 0XFF;
    tbuf[9] = gyroy & 0XFF;
    tbuf[10] = (gyroz >> 8) & 0XFF;
    tbuf[11] = gyroz & 0XFF;
    tbuf[18] = (roll >> 8) & 0XFF;
    tbuf[19] = roll & 0XFF;
    tbuf[20] = (pitch >> 8) & 0XFF;
    tbuf[21] = pitch & 0XFF;
    tbuf[22] = (yaw >> 8) & 0XFF;
    tbuf[23] = yaw & 0XFF;
    Uart0NimingReport(0XAF, tbuf, 28); //Flight Control Display Frame ,0XAF
}

INT32 main(VOID)
{
    float pitch, roll, yaw;         //Euler angle
    int16_t aacx, aacy, aacz;     //Acceleration sensor raw data
    int16_t gyrox, gyroy, gyroz;  //Raw data of gyroscope
    int16_t temp;                 //temperature

    PROTECT_REG
    (
        SYS_Init(PLL_CLOCK);
        UART0_Init(115200);
    )

    GPIO_SetMode(PD, BIT2 | BIT3, GPIO_MODE_OUTPUT);
    PD2 = 1;
    PD3 = 1;

    MPU_Init();                 //Initialization MPU6050

    while (mpu_dmp_init())
    {
        printf("MPU6050 ERROR \r\n");
        Delayms(500);


    }

    while (1)
    {
        if (mpu_dmp_get_data(&pitch, &roll, &yaw) == 0)
        {
            temp = MPU_Get_Temperature();   //Get the temperature value

            if (temp > 100)
                printf("Temperature = %d\r\n", temp);

            MPU_Get_Accelerometer(&aacx, &aacy, &aacz); //Acquisition of Acceleration Sensor Data
            MPU_Get_Gyroscope(&gyrox, &gyroy, &gyroz);  //Acquisition of gyroscope data
            MPU6050SendData(aacx, aacy, aacz, gyrox, gyroy, gyroz); //Sending Acceleration and Gyroscope Raw Data with Custom Frame
            Uart0ReportImu(aacx, aacy, aacz, gyrox, gyroy, gyroz, (int)(roll * 100), (int)(pitch * 100), (int)(yaw * 10));

        }

    }
}
