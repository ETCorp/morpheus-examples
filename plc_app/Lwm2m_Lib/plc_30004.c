/*******************************************************************************
 *
 * Copyright (c) 2013, 2014 Intel Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * and Eclipse Distribution License v1.0 which accompany this distribution.
 *
 * The Eclipse Public License is available at
 *    http://www.eclipse.org/legal/epl-v10.html
 * The Eclipse Distribution License is available at
 *    http://www.eclipse.org/org/documents/edl-v10.php.
 *
 * Contributors:
 *    David Navarro, Intel Corporation - initial API and implementation
 *    domedambrosio - Please refer to git log
 *    Fabien Fleutot - Please refer to git log
 *    Axel Lorente - Please refer to git log
 *    Achim Kraus, Bosch Software Innovations GmbH - Please refer to git log
 *    Pascal Rieux - Please refer to git log
 *    Ville Skyttä - Please refer to git log
 *    
 *******************************************************************************/

/*
 Copyright (c) 2013, 2014 Intel Corporation

 Redistribution and use in source and binary forms, with or without modification,
 are permitted provided that the following conditions are met:

     * Redistributions of source code must retain the above copyright notice,
       this list of conditions and the following disclaimer.
     * Redistributions in binary form must reproduce the above copyright notice,
       this list of conditions and the following disclaimer in the documentation
       and/or other materials provided with the distribution.
     * Neither the name of Intel Corporation nor the names of its contributors
       may be used to endorse or promote products derived from this software
       without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
 INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
 THE POSSIBILITY OF SUCH DAMAGE.

 David Navarro <david.navarro@intel.com>

*/

/* Aug 27, 2018:
 * Adapted by Extreme Telematics Corp.
 * 
 * Implements an object for Alien2 Plunger Lift Controller Battery Status
 *
 *                                           Multiple
 *  Object                         |  ID   | Instances | Mandatory |
 *  Plunger Lift Controller State  | 30004 |    No     |    No     |
 *
 *  Resources:
 *                                          Supported    Multiple
 *  Name                             | ID | Operations | Instances | Mandatory |  Type   | Range    |  Units  | Description                                                   |
 *  Battery Value                    |  1 |     R      |    No     |    Yes    | Integer | 350-999  |         | Battery voltage in centivolts                                 |
 *  Battery Voltage Status           |  2 |     R      |    No     |    No     | Integer | 1-6      |         | 1 - scan pending 2 - def change pending 3 – value under range |
 *                                                                                                            | 4 – value over range 5 – value invalid 6 – value valid        |
 *
 */

#include "liblwm2m.h"
#include "lwm2mclient.h"
#include "modbus.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#define PRV_TLV_BUFFER_SIZE 64

/*
 * Multiple instance objects can use userdata to store data that will be shared between the different instances.
 * The lwm2m_object_t object structure - which represent every object of the liblwm2m as seen in the single instance
 * object - contain a chained list called instanceList with the object specific structure prv_instance_t:
 */
typedef struct _prv_instance_
{
    /*
     * The first two are mandatories and represent the pointer to the next instance and the ID of this one. The rest
     * is the instance scope user data (uint8_t test in this case)
     */
    struct _prv_instance_ * next;             // matches lwm2m_list_t::next
    uint16_t shortID;                         // matches lwm2m_list_t::id
    uint64_t batteryValue;                    // 350-999
    uint64_t batteryVoltageStatus;            // 1-6
} prv_instance_t;

static void prv_output_buffer(uint8_t * buffer,
                              int length)
{
    int i;
    uint8_t array[16];

    i = 0;
    while (i < length)
    {
        int j;
        fprintf(stderr, "  ");

        memcpy(array, buffer+i, 16);

        for (j = 0 ; j < 16 && i+j < length; j++)
        {
            fprintf(stderr, "%02X ", array[j]);
        }
        while (j < 16)
        {
            fprintf(stderr, "   ");
            j++;
        }
        fprintf(stderr, "  ");
        for (j = 0 ; j < 16 && i+j < length; j++)
        {
            if (isprint(array[j]))
                fprintf(stderr, "%c ", array[j]);
            else
                fprintf(stderr, ". ");
        }
        fprintf(stderr, "\n");

        i += 16;
    }
}
uint8_t poll_30004_object(lwm2m_object_t *obj, lwm2m_context_t * lwm2mH)
{
    prv_instance_t * targetP;
    lwm2m_uri_t uri;
    int i;
    int result;
    unsigned short reg_buf[MAX_REGS_TO_RES];
    unsigned char char_buf[MAX_REGS_TO_RES];   

    targetP = (prv_instance_t *)lwm2m_list_find(obj->instanceList, 0);
    /* This part is needed to trigger the watcher of the observable */
    if (lwm2m_stringToUri("/30004/0/1", (sizeof("/30004/0/1") - 1), &uri))
    {
        result = read_input(FRIENDLY_NAME, modbus_stn_id, 31, 1, reg_buf);
        if (result == 0)
        {
            targetP->batteryValue = reg_buf[0];
            lwm2m_resource_value_changed(lwm2mH, &uri);
#ifdef WITH_LOGS
            fprintf(stderr, "Battery value: %d\n", targetP->batteryValue);
#endif    
        }
    }   
    if (lwm2m_stringToUri("/30004/0/2", (sizeof("/30004/0/2") - 1), &uri))
    {
        result = read_input(FRIENDLY_NAME, modbus_stn_id, 51, 1, reg_buf);
        if (result == 0)
        {
            targetP->batteryVoltageStatus = reg_buf[0];
            lwm2m_resource_value_changed(lwm2mH, &uri);
#ifdef WITH_LOGS
            fprintf(stderr, "Battery status: %d\n", targetP->batteryVoltageStatus);
#endif    
        }
    }
}
static uint8_t prv_read(uint16_t instanceId,
                        int * numDataP,
                        lwm2m_data_t ** dataArrayP,
                        lwm2m_object_t * objectP)
{
    prv_instance_t * targetP;
    int i;
    int result;
    unsigned short reg_buf[MAX_REGS_TO_RES];
    unsigned char char_buf[MAX_REGS_TO_RES];

    targetP = (prv_instance_t *)lwm2m_list_find(objectP->instanceList, instanceId);
    if (NULL == targetP) return COAP_404_NOT_FOUND;

    if (*numDataP == 0)
    {
        *dataArrayP = lwm2m_data_new(2);
        if (*dataArrayP == NULL) return COAP_500_INTERNAL_SERVER_ERROR;
        *numDataP = 2;
        (*dataArrayP)[0].id = 1;
        result = read_input(FRIENDLY_NAME, modbus_stn_id, 31, 1, reg_buf);
        targetP->batteryValue = reg_buf[0];
        lwm2m_data_encode_int(targetP->batteryValue, *dataArrayP + 0);
        (*dataArrayP)[1].id = 2;
        result = read_input(FRIENDLY_NAME, modbus_stn_id, 51, 1, reg_buf);
        targetP->batteryVoltageStatus = reg_buf[0];
        lwm2m_data_encode_int(targetP->batteryVoltageStatus, *dataArrayP + 1);
    }
    else
    {
        for (i = 0 ; i < *numDataP ; i++)
        {
            switch ((*dataArrayP)[i].id)
            {
            case 1:
                result = read_input(FRIENDLY_NAME, modbus_stn_id, 31, 1, reg_buf);
                targetP->batteryValue = reg_buf[0];
                lwm2m_data_encode_int(targetP->batteryValue, *dataArrayP + 0);
                break;
            case 2:
                result = read_input(FRIENDLY_NAME, modbus_stn_id, 51, 1, reg_buf);
                targetP->batteryVoltageStatus = reg_buf[0];
                lwm2m_data_encode_int(targetP->batteryVoltageStatus, *dataArrayP + 0);
                break;
            default:
                return COAP_404_NOT_FOUND;
            }
        }
    }
    return COAP_205_CONTENT;
}

static uint8_t prv_discover(uint16_t instanceId,
                            int * numDataP,
                            lwm2m_data_t ** dataArrayP,
                            lwm2m_object_t * objectP)
{
    int i;

    // is the server asking for the full object ?
    if (*numDataP == 0)
    {
        *dataArrayP = lwm2m_data_new(2);
        if (*dataArrayP == NULL) return COAP_500_INTERNAL_SERVER_ERROR;
        *numDataP = 2;
        (*dataArrayP)[0].id = 1;
        (*dataArrayP)[1].id = 2;
    }
    else
    {
        for (i = 0; i < *numDataP; i++)
        {
            switch ((*dataArrayP)[i].id)
            {
            case 1:
            case 2:
                break;
            default:
                return COAP_404_NOT_FOUND;
            }
        }
    }

    return COAP_205_CONTENT;
}

static uint8_t prv_write(uint16_t instanceId,
                         int numData,
                         lwm2m_data_t * dataArray,
                         lwm2m_object_t * objectP)
{
    prv_instance_t * targetP;
    int i;

    targetP = (prv_instance_t *)lwm2m_list_find(objectP->instanceList, instanceId);
    if (NULL == targetP) return COAP_404_NOT_FOUND;

    for (i = 0 ; i < numData ; i++)
    {
        switch (dataArray[i].id)
        {
        case 1:
        case 2:
            return COAP_405_METHOD_NOT_ALLOWED;
            break;
        default:
            return COAP_404_NOT_FOUND;
        }
    }
    return COAP_204_CHANGED;
}

static uint8_t prv_delete(uint16_t id,
                          lwm2m_object_t * objectP)
{
    prv_instance_t * targetP;

    objectP->instanceList = lwm2m_list_remove(objectP->instanceList, id, (lwm2m_list_t **)&targetP);
    if (NULL == targetP) return COAP_404_NOT_FOUND;

    lwm2m_free(targetP);

    return COAP_202_DELETED;
}

static uint8_t prv_create(uint16_t instanceId,
                          int numData,
                          lwm2m_data_t * dataArray,
                          lwm2m_object_t * objectP)
{
    prv_instance_t * targetP;
    uint8_t result;


    targetP = (prv_instance_t *)lwm2m_malloc(sizeof(prv_instance_t));
    if (NULL == targetP) return COAP_500_INTERNAL_SERVER_ERROR;
    memset(targetP, 0, sizeof(prv_instance_t));

    targetP->shortID = instanceId;
    objectP->instanceList = LWM2M_LIST_ADD(objectP->instanceList, targetP);

    result = prv_write(instanceId, numData, dataArray, objectP);

    if (result != COAP_204_CHANGED)
    {
        (void)prv_delete(instanceId, objectP);
    }
    else
    {
        result = COAP_201_CREATED;
    }

    return result;
}

static uint8_t prv_exec(uint16_t instanceId,
                        uint16_t resourceId,
                        uint8_t * buffer,
                        int length,
                        lwm2m_object_t * objectP)
{
    int result;
    unsigned char buf[] = { 1, 0 };
    
    if (NULL == lwm2m_list_find(objectP->instanceList, instanceId)) return COAP_404_NOT_FOUND;

    switch (resourceId)
    {
    case 1:
    case 2:
        return COAP_405_METHOD_NOT_ALLOWED;
    default:
        return COAP_404_NOT_FOUND;
    }
}

void display_30004_object(lwm2m_object_t * object)
{
#ifdef WITH_LOGS
    fprintf(stdout, "  /%u: Test object, instances:\r\n", object->objID);
    prv_instance_t * instance = (prv_instance_t *)object->instanceList;
    while (instance != NULL)
    {
        //fprintf(stdout, "    /%u/%u: shortId: %u, test: %u\r\n",
                //object->objID, instance->shortID,
                //instance->shortID, instance->test);
        fprintf(stdout, "    /%u/%u:", object->objID, instance->shortID);
        instance = (prv_instance_t *)instance->next;
    }
#endif
}

lwm2m_object_t * get_30004_object(void)
{
    lwm2m_object_t * obj30004;

    obj30004 = (lwm2m_object_t *)lwm2m_malloc(sizeof(lwm2m_object_t));

    if (NULL != obj30004)
    {
        int i;
        prv_instance_t * targetP;
        obj30004->objID = PLC_BATTERY_STATUS;
        targetP = (prv_instance_t *)lwm2m_malloc(sizeof(prv_instance_t));
        if (NULL == targetP) return NULL;
        memset(targetP, 0, sizeof(prv_instance_t));
        targetP->shortID                        = 0;
        targetP->batteryValue                   = 0;
        targetP->batteryVoltageStatus           = 0;
        obj30004->instanceList = LWM2M_LIST_ADD(obj30004->instanceList, targetP);
        /*
         * From a single instance object, two more functions are available.
         * - The first one (createFunc) create a new instance and filled it with the provided informations. If an ID is
         *   provided a check is done for verifying his disponibility, or a new one is generated.
         * - The other one (deleteFunc) delete an instance by removing it from the instance list (and freeing the memory
         *   allocated to it)
         */
        obj30004->readFunc = prv_read;
        obj30004->discoverFunc = prv_discover;
        obj30004->writeFunc = prv_write;
        obj30004->executeFunc = prv_exec;
        obj30004->createFunc = prv_create;
        obj30004->deleteFunc = prv_delete;
        obj30004->userData = NULL;   // added by Phil after finding spurious data here. Explicitly NULL the pointer
    }

    return obj30004;
}

void free_30004_object(lwm2m_object_t * object)
{
    LWM2M_LIST_FREE(object->instanceList);
    if (object->userData != NULL)
    {
        lwm2m_free(object->userData);
        object->userData = NULL;
    }
    lwm2m_free(object);
}

