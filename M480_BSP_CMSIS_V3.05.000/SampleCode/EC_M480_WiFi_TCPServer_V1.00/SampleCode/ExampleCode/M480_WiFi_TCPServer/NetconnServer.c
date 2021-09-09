/*
 * Netconn server example is based on single "user" thread
 * which listens for new connections and accepts them.
 *
 * When a new client is accepted by server,
 * separate thread for client is created where
 * data is read, processed and send back to user
 */

#include <string.h>

/* ESP8266 includes. */
#include "esp/esp.h"

/* Hardware includes. */
#include "NuMicro.h"
#include "gpio.h"

//Read pins definition. Read GPIO value
#define READ_PIN0 PF11
#define READ_PIN0_PORT PF
#define READ_PIN0_PIN BIT11

#define READ_PIN1 PG5
#define READ_PIN1_PORT PG
#define READ_PIN1_PIN BIT5

static void netconn_server_processing_thread(void *const arg);

/**
 * \brief           Main page response file
 */
static const uint8_t
resp_data_mainpage_top[] = ""
                           "HTTP/1.1 200 OK\r\n"
                           "Content-Type: text/html\r\n"
                           "\r\n"
                           "<html>"
                           "    <head> <title>M480 Pins</title> </head>"
                           "    <body> <h1>M480 Pins</h1>"
                           "        <table border=\"1\"> <tr><th>Pin</th><th>Value</th></tr>";


/**
 * \brief           Bottom part of main page
 */
static const uint8_t
resp_data_mainpage_bottom[] = ""
                              "       </table>"
                              "   </body>"
                              "</html>";

/**
 * \brief           Style file response
 */
static const uint8_t
resp_data_style[] = ""
                    "HTTP/1.1 200 OK\r\n"
                    "Content-Type: text/css\r\n"
                    "\r\n"
                    "body { color: red; font-family: Tahoma, Arial; };";

/**
 * \brief           404 error response
 */
static const uint8_t
resp_error_404[] = ""
                   "HTTP/1.1 404 Not Found\r\n"
                   "\r\n"
                   "Error 404";

/**
 * \brief           Netconn server thread implementation
 * \param[in]       arg: User argument
 */
void netconn_server_thread(void const *arg)
{
    espr_t res;
    esp_netconn_p server, client;

    /* Set read pins to GPIO inport mode */
    GPIO_SetMode(READ_PIN0_PORT, READ_PIN0_PIN, GPIO_MODE_INPUT);
    GPIO_SetMode(READ_PIN1_PORT, READ_PIN1_PIN, GPIO_MODE_INPUT);

    /*
     * First create a new instance of netconn
     * connection and initialize system message boxes
     * to accept clients and packet buffers
     */
    server = esp_netconn_new(ESP_NETCONN_TYPE_TCP);

    if (server != NULL)
    {
        printf("Server netconn created\r\n");

        /* Bind network connection to port 80 */
        res = esp_netconn_bind(server, 80);

        if (res == espOK)
        {
            printf("Server netconn listens on port 80\r\n");
            /*
             * Start listening for incoming connections
             * on previously binded port
             */
            res = esp_netconn_listen(server);

            while (1)
            {
                /*
                 * Wait and accept new client connection
                 *
                 * Function will block thread until
                 * new client is connected to server
                 */
                res = esp_netconn_accept(server, &client);

                if (res == espOK)
                {
                    printf("Netconn new client connected. Starting new thread...\r\n");

                    /*
                     * Start new thread for this request.
                     *
                     * Read and write back data to user in separated thread
                     * to allow processing of multiple requests at the same time
                     */
                    if (esp_sys_thread_create(NULL, "client", (esp_sys_thread_fn)netconn_server_processing_thread, client, 512, ESP_SYS_THREAD_PRIO))
                    {
                        printf("Netconn client thread created\r\n");
                    }
                    else
                    {
                        printf("Netconn client thread creation failed!\r\n");

                        /* Force close & delete */
                        esp_netconn_close(client);
                        esp_netconn_delete(client);
                    }
                }
                else
                {
                    printf("Netconn connection accept error!\r\n");
                    break;
                }
            }
        }
        else
        {
            printf("Netconn server cannot bind to port\r\n");
        }
    }
    else
    {
        printf("Cannot create server netconn\r\n");
    }

    esp_netconn_delete(server);                 /* Delete netconn structure */
    esp_sys_thread_terminate(NULL);             /* Terminate current thread */
}

/**
* \brief           Get port:pin string
 * \param[in]       arg: User argument
 */
static int GenPinNameStr(
    char *szPinName,
    int szStrLen,
    GPIO_T *pGPIOPort,
    uint32_t u32Pin
)
{
    if (szStrLen < 15)
    {
        return -1;
    }

    memset(szPinName, 0, szStrLen);

    if (pGPIOPort == PA)
    {
        sprintf(szPinName, "PortA:");
    }
    else if (pGPIOPort == PB)
    {
        sprintf(szPinName, "PortB:");
    }
    else if (pGPIOPort == PC)
    {
        sprintf(szPinName, "PortC:");
    }
    else if (pGPIOPort == PD)
    {
        sprintf(szPinName, "PortD:");
    }
    else if (pGPIOPort == PE)
    {
        sprintf(szPinName, "PortE:");
    }
    else if (pGPIOPort == PF)
    {
        sprintf(szPinName, "PortF:");
    }
    else if (pGPIOPort == PG)
    {
        sprintf(szPinName, "PortG:");
    }
    else if (pGPIOPort == PH)
    {
        sprintf(szPinName, "PortH:");
    }
    else
    {
        return -2;
    }

    int i;

    for (i = 0; i < 16; i ++)
    {
        if (u32Pin & (1 << i))
        {
            sprintf(szPinName + strlen(szPinName), "Pin%d", i);
            break;
        }
    }

    return 0;
}


/**
 * \brief           Thread to process single active connection
 * \param[in]       arg: Thread argument
 */
static void netconn_server_processing_thread(void *const arg)
{
    esp_netconn_p client;
    esp_pbuf_p pbuf, p = NULL;
    espr_t res;

    client = arg;                               /* Client handle is passed to argument */

    printf("A new connection accepted!\r\n");   /* Print simple message */

    do
    {
        /*
         * Client was accepted, we are now
         * expecting client will send to us some data
         *
         * Wait for data and block thread for that time
         */
        res = esp_netconn_receive(client, &pbuf);

        if (res == espOK)
        {
            printf("Netconn data received, %d bytes\r\n", (int)esp_pbuf_length(pbuf, 1));

            /* Check reception of all header bytes */
            if (p == NULL)
            {
                p = pbuf;                       /* Set as first buffer */
            }
            else
            {
                esp_pbuf_cat(p, pbuf);          /* Concatenate buffers together */
            }

            if (esp_pbuf_strfind(pbuf, "\r\n\r\n", 0) != ESP_SIZET_MAX)
            {
                if (esp_pbuf_strfind(pbuf, "GET / ", 0) != ESP_SIZET_MAX)
                {
                    printf("Main page request\r\n");
                    char szPinName[20];
                    char szPinStatus[60];

                    memset(szPinStatus, 0, 60);
                    //Write html header
                    esp_netconn_write(client, resp_data_mainpage_top, sizeof(resp_data_mainpage_top) - 1);
                    //Write pin status table row
                    GenPinNameStr(szPinName, 20, READ_PIN0_PORT, READ_PIN0_PIN);
                    sprintf(szPinStatus, "<tr><td>%s</td><td>%d</td></tr>", szPinName, READ_PIN0);
                    esp_netconn_write(client, szPinStatus, strlen(szPinStatus));

                    GenPinNameStr(szPinName, 20, READ_PIN1_PORT, READ_PIN1_PIN);
                    sprintf(szPinStatus, "<tr><td>%s</td><td>%d</td></tr>", szPinName, READ_PIN1);
                    esp_netconn_write(client, szPinStatus, strlen(szPinStatus));
                    //Write html tail
                    esp_netconn_write(client, resp_data_mainpage_bottom, sizeof(resp_data_mainpage_bottom) - 1);
                }
                else if (esp_pbuf_strfind(pbuf, "GET /style.css ", 0) != ESP_SIZET_MAX)
                {
                    printf("Style page request\r\n");
                    esp_netconn_write(client, resp_data_style, sizeof(resp_data_style) - 1);
                }
                else
                {
                    printf("404 error not found\r\n");
                    esp_netconn_write(client, resp_error_404, sizeof(resp_error_404) - 1);
                }

                esp_netconn_close(client);      /* Close netconn connection */
                esp_pbuf_free(p);               /* Do not forget to free memory after usage! */
                p = NULL;
                break;
            }
        }
    } while (res == espOK);

    if (p != NULL)                              /* Free received data */
    {
        esp_pbuf_free(p);
        p = NULL;
    }

    esp_netconn_delete(client);                 /* Destroy client memory */
    esp_sys_thread_terminate(NULL);             /* Terminate this thread */
}
