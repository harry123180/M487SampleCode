/*
 * Copyright (c) 2019 Nuvoton Technology Corp.
 * Description:   ESP8266 network interface source file
 */

#include <stdio.h>

/* Kernel includes. */
#include "FreeRTOS.h"
#include "task.h"

/* Hardware includes. */
#include "NuMicro.h"
#include "gpio.h"

/* ESP8266 includes. */
#include "esp/esp.h"

/* Netconn server includes */
#include "NetConnServer.h"

//Init UART device
#define ESP_RESET_PIN PH3
#define ESP_RESET_PIN_PORT PH
#define ESP_RESET_PIN_PIN BIT3

extern int configure_uart(
	uint32_t u32BaudRate
);

uint8_t esp_ll_hardreset(uint8_t state)
{
	GPIO_SetMode(ESP_RESET_PIN_PORT, ESP_RESET_PIN_PIN, GPIO_MODE_OUTPUT);
	//Hard reset pin, active low
	ESP_RESET_PIN = ~state;
	return 1; //Need to return 1
}

void esp_ll_switch_pin_fun(
    int bUARTMode
)
{
    if (bUARTMode)
    {
        //Setup UART1 multi function pin
        //TX/RX
        SYS->GPH_MFPH &= ~(SYS_GPH_MFPH_PH8MFP_Msk | SYS_GPH_MFPH_PH9MFP_Msk);
        SYS->GPH_MFPH |= (SYS_GPH_MFPH_PH8MFP_UART1_TXD | SYS_GPH_MFPH_PH9MFP_UART1_RXD);

        //CTS/RTS
        SYS->GPB_MFPH &= ~(SYS_GPB_MFPH_PB8MFP_Msk | SYS_GPB_MFPH_PB9MFP_Msk);
        SYS->GPB_MFPH |= (SYS_GPB_MFPH_PB9MFP_UART1_nCTS | SYS_GPB_MFPH_PB8MFP_UART1_nRTS);

        //Hard reset pin
        GPIO_SetMode(ESP_RESET_PIN_PORT, ESP_RESET_PIN_PIN, GPIO_MODE_OUTPUT);
    }
    else
    {
        SYS->GPH_MFPH &= ~(SYS_GPH_MFPH_PH8MFP_Msk | SYS_GPH_MFPH_PH9MFP_Msk);
        SYS->GPA_MFPL &= ~(SYS_GPB_MFPH_PB8MFP_Msk | SYS_GPB_MFPH_PB9MFP_Msk);
        SYS->GPH_MFPL &= ~(SYS_GPH_MFPL_PH3MFP_Msk);
    }
}

void *esp_ll_get_uart_obj(void)
{
    return (void *)UART1;
}

/**
 * \brief           Event callback function for ESP stack
 * \param[in]       evt: Event information with data
 * \return          espOK on success, member of \ref espr_t otherwise
 */
static espr_t esp_callback_func(esp_evt_t *evt)
{
    switch (esp_evt_get_type(evt))
    {
        case ESP_EVT_AT_VERSION_NOT_SUPPORTED:
        {
            esp_sw_version_t v_min, v_curr;

            esp_get_min_at_fw_version(&v_min);
            esp_get_current_at_fw_version(&v_curr);

            printf("Current ESP8266 AT version is not supported by library!\r\n");
            printf("Minimum required AT version is: %d.%d.%d\r\n", (int)v_min.major, (int)v_min.minor, (int)v_min.patch);
            printf("Current AT version is: %d.%d.%d\r\n", (int)v_curr.major, (int)v_curr.minor, (int)v_curr.patch);
            break;
        }

        case ESP_EVT_INIT_FINISH:
        {
            printf("Library initialized!\r\n");
            break;
        }

        case ESP_EVT_RESET_DETECTED:
        {
            printf("Device reset detected!\r\n");
            break;
        }

        case ESP_EVT_AP_CONNECTED_STA:
        {
            esp_mac_t *mac = esp_evt_ap_connected_sta_get_mac(evt);
            printf("New station connected to access point with MAC address: %02X:%02X:%02X:%02X:%02X:%02X\r\n",
                   (int)mac->mac[0], (int)mac->mac[1], (int)mac->mac[2],
                   (int)mac->mac[3], (int)mac->mac[4], (int)mac->mac[5]
                  );
            break;
        }

        case ESP_EVT_AP_IP_STA:
        {
            esp_mac_t *mac = esp_evt_ap_ip_sta_get_mac(evt);
            esp_ip_t *ip = esp_evt_ap_ip_sta_get_ip(evt);
            printf("IP %d.%d.%d.%d assigned to station with MAC address: %02X:%02X:%02X:%02X:%02X:%02X\r\n",
                   (int)ip->ip[0], (int)ip->ip[1], (int)ip->ip[2], (int)ip->ip[3],
                   (int)mac->mac[0], (int)mac->mac[1], (int)mac->mac[2],
                   (int)mac->mac[3], (int)mac->mac[4], (int)mac->mac[5]
                  );
            break;
        }

        case ESP_EVT_AP_DISCONNECTED_STA:
        {
            esp_mac_t *mac = esp_evt_ap_disconnected_sta_get_mac(evt);
            printf("Station disconnected from access point with MAC address: %02X:%02X:%02X:%02X:%02X:%02X\r\n",
                   (int)mac->mac[0], (int)mac->mac[1], (int)mac->mac[2],
                   (int)mac->mac[3], (int)mac->mac[4], (int)mac->mac[5]
                  );
            break;
        }

        default:
            break;
    }

    return espOK;
}

//ESP8266 network interface task
void NetworkIF_ESP8266_Task(void *pvParameter)
{
    espr_t res;

    printf("Starting ESP application!\r\n");

    /* Initialize ESP with default callback function */
    printf("Initializing ESP-AT Lib\r\n");

    if (esp_init(esp_callback_func, 1) != espOK)
    {
        printf("Cannot initialize ESP-AT Lib!\r\n");
		goto exit_NetworkIF_ESP8266_Task;
    }
    else
    {
        printf("ESP-AT Lib initialized!\r\n");
    }

#if 1
	#define DEF_SPEED_UP	(115200 * 2)
	/* Set baudrate to DEF_SPEED_UP and enable flow-control function. */
	if ( esp_set_at_baudrate(DEF_SPEED_UP, NULL, NULL, 1)  != espOK) 
	{
		printf("Cannot set baudrate to %d!\r\n", DEF_SPEED_UP);
		goto exit_NetworkIF_ESP8266_Task;
	} else{
		configure_uart(DEF_SPEED_UP); /* re-configuration UART baudrate. */
	}
#endif


    /* Enable access point only mode */
    if ((res = esp_set_wifi_mode(ESP_MODE_AP, 1, NULL, NULL, 1)) == espOK)
    {
        printf("ESP set to access-point-only mode\r\n");
    }
    else
    {
        printf("Problems setting ESP to access-point-only mode: %d\r\n", (int)res);
		goto exit_NetworkIF_ESP8266_Task;
    }

    /* Configure access point */
    res = esp_ap_configure("ESP_AccessPoint", "12345678", 10, ESP_ECN_WPA2_PSK, 5, 0, 0, NULL, NULL, 1);

    if (res == espOK)
    {
        printf("Access point configured!\r\n");
    }

    /* Create server thread */
    esp_sys_thread_create(NULL, "netconn_server", (esp_sys_thread_fn)netconn_server_thread, NULL, 512, ESP_SYS_THREAD_PRIO);

    /*
     * Do not stop program here.
     * New threads were created for ESP processing
     */
    while (1)
    {
        esp_delay(1000);
    }

exit_NetworkIF_ESP8266_Task:
		/* Terminate current thread */
    esp_sys_thread_terminate(NULL);		

}
