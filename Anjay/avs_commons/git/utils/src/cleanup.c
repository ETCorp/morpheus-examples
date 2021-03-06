/*
 * Copyright 2018-2019 AVSystem <avsystem@avsystem.com>
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

#include <avs_commons_config.h>

#include <avsystem/commons/cleanup.h>

VISIBILITY_SOURCE_BEGIN

void avs_cleanup_global_state(void) {
#ifdef WITH_AVS_NET
    void _avs_net_cleanup_global_state(void);
    _avs_net_cleanup_global_state();
#endif // WITH_AVS_NET

#ifdef WITH_AVS_LOG
    void _avs_log_cleanup_global_state(void);
    _avs_log_cleanup_global_state();
#endif // WITH_AVS_LOG

#ifdef WITH_AVS_SCHED
    void _avs_sched_cleanup_global_state(void);
    _avs_sched_cleanup_global_state();
#endif
}
