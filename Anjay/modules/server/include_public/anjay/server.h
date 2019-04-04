/*
 * Copyright 2017-2019 AVSystem <avsystem@avsystem.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef ANJAY_INCLUDE_ANJAY_SERVER_H
#define ANJAY_INCLUDE_ANJAY_SERVER_H

#include <anjay/dm.h>

#include <avsystem/commons/stream.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    /** Resource: Short Server ID */
    anjay_ssid_t ssid;
    /** Resource: Lifetime */
    int32_t lifetime;
    /** Resource: Default Minimum Period - or a negative value to disable
     * presence */
    int32_t default_min_period;
    /** Resource: Default Maximum Period - or a negative value to disable
     * presence */
    int32_t default_max_period;
    /** Resource: Disable Timeout - or a negative value to disable presence */
    int32_t disable_timeout;
    /** Resource: Binding */
    const char *binding;
    /** Resource: Notification Storing When Disabled or Offline */
    bool notification_storing;
} anjay_server_instance_t;

/**
 * Adds new Instance of Server Object and returns newly created Instance id
 * via @p inout_iid .
 *
 * Note: if @p *inout_iid is set to @ref ANJAY_IID_INVALID then the Instance id
 * is generated automatically, otherwise value of @p *inout_iid is used as a
 * new Server Instance Id.
 *
 * Note: @p instance may be safely freed by the user code after this function
 * finishes (internally a deep copy of @ref anjay_server_instance_t is
 * performed).
 *
 * @param anjay     Anjay instance with Server Object installed to operate on.
 * @param instance  Server Instance to insert.
 * @param inout_iid Server Instance id to use or @ref ANJAY_IID_INVALID .
 *
 * @return 0 on success, negative value in case of an error or if the instance
 * of specified id already exists.
 */
int anjay_server_object_add_instance(anjay_t *anjay,
                                     const anjay_server_instance_t *instance,
                                     anjay_iid_t *inout_iid);

/**
 * Removes all instances of Server Object leaving it in an empty state.
 *
 * @param anjay Anjay instance with Security Object installed to purge.
 */
void anjay_server_object_purge(anjay_t *anjay);

/**
 * Dumps Server Object Instance into the @p out_stream .
 *
 * @param anjay         Anjay instance with Server Object installed.
 * @param out_stream    Stream to write to.
 * @return 0 in case of success, negative value in case of an error.
 */
int anjay_server_object_persist(anjay_t *anjay,
                                avs_stream_abstract_t *out_stream);

/**
 * Attempts to restore Server Object Instances from specified @p in_stream .
 *
 * Note: if restore fails, then Server Object will be left untouched, on
 * success though all Instances stored within the Object will be purged.
 *
 * @param anjay     Anjay instance with Server Object installed.
 * @param in_stream Stream to read from.
 * @return 0 in case of success, negative value in case of an error.
 */
int anjay_server_object_restore(anjay_t *anjay,
                                avs_stream_abstract_t *in_stream);

/**
 * Checks whether the Server Object from Anjay instance has been modified since
 * last successful call to @ref anjay_server_object_persist or @ref
 * anjay_server_object_restore.
 */
bool anjay_server_object_is_modified(anjay_t *anjay);

/**
 * Installs the Server Object in an Anjay instance.
 *
 * The Server module does not require explicit cleanup; all resources
 * will be automatically freed up during the call to @ref anjay_delete.
 *
 * @param anjay Anjay instance for which the Server Object is installed.
 *
 * @returns 0 on success, or a negative value in case of error.
 */
int anjay_server_object_install(anjay_t *anjay);

#ifdef __cplusplus
}
#endif

#endif /* ANJAY_INCLUDE_ANJAY_SERVER_H */
