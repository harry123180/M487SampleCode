/**************************************************************************//**
 * @file     M48x_ISR.c
 * @version  V0.01
 * @brief    M480 series ISR HAL source file
 *
 * @copyright (C) 2019 Nuvoton Technology Corp. All rights reserved.
 *****************************************************************************/
#include <stdio.h>

#include "NuMicro.h"

#include "hal/M48x_UART.h"
#include "hal/dma.h"

/*---------------------------------------------------------------------------------------------------------*/
/* ISR to handle PDMA Channel interrupt event                                                            */
/*---------------------------------------------------------------------------------------------------------*/

void PDMA_IRQHandler(void)
{
    Handle_PDMA_Irq();
}

/*---------------------------------------------------------------------------------------------------------*/
/* ISR to handle UART Channel interrupt event                                                            */
/*---------------------------------------------------------------------------------------------------------*/
void UART0_IRQHandler(void)
{
    Handle_UART_Irq(UART0);
}

void UART1_IRQHandler(void)
{
    Handle_UART_Irq(UART1);
}

void UART2_IRQHandler(void)
{
    Handle_UART_Irq(UART2);
}

void UART3_IRQHandler(void)
{
    Handle_UART_Irq(UART3);
}

void UART4_IRQHandler(void)
{
    Handle_UART_Irq(UART4);
}

void UART5_IRQHandler(void)
{
    Handle_UART_Irq(UART5);
}
