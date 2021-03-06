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

#ifndef AVS_COMMONS_COAP_BLOCKBUILDER_H
#define AVS_COMMONS_COAP_BLOCKBUILDER_H

#include <stdlib.h>

#include <avsystem/commons/coap/msg_builder.h>

#ifdef __cplusplus
extern "C" {
#endif

/**
 * A builder object used to split a stream of data into multiple CoAP BLOCK
 * messages.
 */
typedef struct avs_coap_block_builder {
    void *payload_buffer;
    size_t payload_capacity;

    size_t read_offset;
    size_t write_offset;
} avs_coap_block_builder_t;

/**
 * Initializes a block builder object with payload stored in @p msg_builder.
 *
 * @param msg_builder Consumed message builder. After a call to this function,
 *                    it is no longer usable until reinitialized.
 *
 * @returns Initialized block builder object.
 */
avs_coap_block_builder_t
avs_coap_block_builder_init(avs_coap_msg_builder_t *msg_builder);

/**
 * @returns Number of payload bytes ready to read from the block builder.
 */
size_t avs_coap_block_builder_payload_remaining(
        const avs_coap_block_builder_t *builder);

/**
 * Retrieves a message containing next payload block.
 *
 * NOTE: Repeated calls to this function return messages with the same payload
 * until @ref avs_coap_block_builder_next is called.
 *
 * @param builder     Block builder object to retrieve payload from.
 * @param info        Message headers to set for the packet.
 * @param block_size  Size of the payload to include in constructed
 *                    message.
 * @param buffer      Storage for the constructed message.
 * @param buffer_size @p buffer capacity in bytes.
 *                    WARNING: @p buffer must be able to hold at least
 *                    <c>avs_coap_msg_info_get_packet_storage_size(info)</c>
 *                    bytes.
 *
 * @returns A pointer to the message constructed inside @p buffer on success,
 *          NULL if the builder contains no payload data.
 */
const avs_coap_msg_t *
avs_coap_block_builder_build(avs_coap_block_builder_t *builder,
                             const avs_coap_msg_info_t *info,
                             size_t block_size,
                             avs_coap_aligned_msg_buffer_t *buffer,
                             size_t buffer_size);

/**
 * Discards first @p block_size bytes of stored payload, so that following calls
 * to @ref avs_coap_block_builder_build return next part of the payload.
 *
 * @param builder    Block builder object to modify.
 * @param block_size Number of payload bytes to discard.
 */
void avs_coap_block_builder_next(avs_coap_block_builder_t *builder,
                                 size_t block_size);

/**
 * Appends payload to the block builder.
 *
 * @param builder      Block builder to use.
 * @param payload      Payload bytes to append.
 * @param payload_size Number of bytes to append.
 *
 * @returns Number of bytes successfully written. If the value is not equal to
 *          passed @p payload_size, the builder has to be emptied by calling
 *          @p avs_coap_block_builder_build_next before more payload can be
 *          inserted into @p builder.
 */
size_t avs_coap_block_builder_append_payload(avs_coap_block_builder_t *builder,
                                             const void *payload,
                                             size_t payload_size);

#ifdef __cplusplus
}
#endif

#endif // AVS_COMMONS_COAP_BLOCKBUILDER_H
