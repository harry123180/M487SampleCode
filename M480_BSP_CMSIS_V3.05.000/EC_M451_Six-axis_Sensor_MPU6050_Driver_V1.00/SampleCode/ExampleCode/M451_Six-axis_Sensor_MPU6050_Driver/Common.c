/**************************************************************************//**
 * @file     Common.c
 * @brief 	 Initialization System Clock,UART0
 * 
 * @note
 * Copyright (C) 2018 Nuvoton Technology Corp. All rights reserved.
 *****************************************************************************/
#include "stdio.h"
#include "M451Series.h"

/**
  * @brief      System Clock Initialization  
  * @param[in]  u32PllClock is PLL clock frequency
	*						- \ref  12MHz
	*						- \ref  24MHz
	*						- \ref	48Mhz
	*						- \ref	72MHz	
  * @return     None
  *
  * @details   Select the clock source and set the clock frequency 
  */	
void SYS_Init(uint32_t u32PllClock)
{

    /* Enable HXT clock (12MHz)*/
    CLK_EnableXtalRC(CLK_PWRCTL_HXTEN_Msk);

     /* Waiting for HXT clock ready(12MHz) */
    CLK_WaitClockReady(CLK_STATUS_HXTSTB_Msk);

    /* Select HCLK clock source as PLL and HCLK source divider as 2 */ 
    CLK_SetHCLK(CLK_CLKSEL0_HCLKSEL_PLL, CLK_CLKDIV0_HCLK(2));

    /*Set PLL_CLOCK */
    CLK_SetCoreClock(u32PllClock);
	
		/* Setting H clock source as HXT */
		CLK_SetSysTickClockSrc(CLK_CLKSEL0_STCLKSEL_HXT);
}

/**
  * @brief      Initialization UART0 
  * @param  		None
  * @return     None
  *
  * @details   Configuration of UART0 registers 
  */	
void UART0_Init(uint32_t unBaud)
{
		/* Enable UART0 module clock   */
    CLK_EnableModuleClock(UART0_MODULE);

    /* Select HXT source as UART0 module clock,  HXT source divider as 1 */
    CLK_SetModuleClock(UART0_MODULE, CLK_CLKSEL1_UARTSEL_HXT, CLK_CLKDIV0_UART(1));
	
    /* Setting UART0 RXD(PD.0)and TXD(PD.1) */
    SYS->GPD_MFPL &= ~(SYS_GPD_MFPL_PD0MFP_Msk | SYS_GPD_MFPL_PD1MFP_Msk);
    SYS->GPD_MFPL |= (SYS_GPD_MFPL_PD0MFP_UART0_RXD | SYS_GPD_MFPL_PD1MFP_UART0_TXD);  

    /* reset UART module */
    SYS_ResetModule(UART0_RST);

    /* Configuration UART0 and Configuration UART0 baud rate */
    UART_Open(UART0, unBaud);
}

/**
  * @brief      Delay time  
  * @param  		u32ms is Counting of Delay ,Unit ms
  * @return     None
  *
  * @details   Delay for a period of time according to the set value 
  */	
void Delayms(uint32_t u32ms)
{
	 while(u32ms--)			
		CLK_SysTickDelay(1000);
}

/**
  * @brief      Delay time  
  * @param  		u32us is Counting of Delay ,Unit us
  * @return     None
  *
  * @details   Delay for a period of time according to the set value 
  */	
void Delayus(uint32_t u32us)
{	
	 CLK_SysTickDelay(u32us);	
}

