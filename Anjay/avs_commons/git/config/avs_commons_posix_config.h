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

#ifndef CONFIG_POSIX_CONFIG_H
#define CONFIG_POSIX_CONFIG_H

/* POSIX headers */
#define HAVE_SYS_SELECT_H
#define HAVE_SYS_SOCKET_H
#define HAVE_SYS_TIME_H
#define HAVE_SYS_TYPES_H
#define HAVE_ARPA_INET_H
#define HAVE_FCNTL_H
#define HAVE_NET_IF_H
#define HAVE_NETDB_H
#define HAVE_NETINET_IN_H
#define HAVE_POLL_H
#define HAVE_STRINGS_H
#define HAVE_UNISTD_H

/* POSIX types */
#define HAVE_STRUCT_TIMESPEC
#define HAVE_CLOCKID_T
#define HAVE_STRUCT_TIMEVAL
/* #undef HAVE_STRUCT_FD_SET */
#define HAVE_SSIZE_T
#define HAVE_SOCKLEN_T
#define HAVE_STRUCT_ADDRINFO

/* POSIX macros */
#define HAVE_F_GETFL
#define HAVE_F_SETFL
#define HAVE_IF_NAMESIZE
#define HAVE_INET6_ADDRSTRLEN
#define HAVE_INET_ADDRSTRLEN
#define HAVE_O_NONBLOCK
#define HAVE_CLOCK_REALTIME
/* #undef HAVE_IN6_IS_ADDR_V4MAPPED */

/* POSIX functions */
#define HAVE_CLOCK_GETTIME
#define HAVE_FCNTL
#define HAVE_FREEADDRINFO
#define HAVE_GAI_STRERROR
#define HAVE_GETADDRINFO
#define HAVE_GETNAMEINFO
#define HAVE_INET_NTOP
#define HAVE_INET_PTON
#define HAVE_POLL
#define HAVE_SELECT
#define HAVE_STRCASECMP
#define HAVE_STRNCASECMP
#define HAVE_HTONS
#define HAVE_NTOHS
#define HAVE_HTONL
#define HAVE_HTONL
#define HAVE_RECVMSG
#define HAVE_CLOSE

/* #undef POSIX_COMPAT_HEADER */
#ifndef POSIX_COMPAT_HEADER

// by default we try to compile in strict ISO C99 mode;
// if it's enabled, then declare _POSIX_C_SOURCE to enable POSIX APIs;
// unless on macOS - Apple's headers do not support strict ISO C99 mode in the
// way glibc and BSD libc do, and _POSIX_C_SOURCE only enables "strict POSIX"
// mode, i.e. disables a lot of APIs; it doesn't even properly recognize the
// 200809L value, so it disables a lot of APIs that actually are in POSIX...
# if (defined(__STRICT_ANSI__) || defined(_ISOC99_SOURCE)) \
        && !defined(_POSIX_C_SOURCE) && !defined(__APPLE__)
#  define _POSIX_C_SOURCE 200809L
# endif

# include <sys/select.h>
# include <sys/socket.h>
# include <sys/time.h>
# include <sys/types.h>
# include <arpa/inet.h>
# include <fcntl.h>
# include <net/if.h>
# include <netdb.h>
# include <netinet/in.h>
# include <poll.h>
# include <strings.h>
# include <unistd.h>
# include <time.h>
typedef int sockfd_t;
#else // POSIX_COMPAT_HEADER
# include ""
// If POSIX socket APIs are implemented as macros (e.g. LwIP), redefining
// common words like close to something else wreaks havoc all over the place.
# ifndef _AVS_NEED_POSIX_SOCKET
#  ifdef accept
#   undef accept
#  endif
#  ifdef bind
#   undef bind
#  endif
#  ifdef shutdown
#   undef shutdown
#  endif
#  ifdef connect
#   undef connect
#  endif
#  ifdef listen
#   undef listen
#  endif
#  ifdef recv
#   undef recv
#  endif
#  ifdef send
#   undef send
#  endif
#  ifdef socket
#   undef socket
#  endif
#  ifdef select
#   undef select
#  endif
#  ifdef read
#   undef read
#  endif
#  ifdef write
#   undef write
#  endif
#  ifdef close
#   undef close
#  endif
# endif // _AVS_NEED_POSIX_SOCKET
#endif // POSIX_COMPAT_HEADER

#ifndef INVALID_SOCKET
# define INVALID_SOCKET (-1)
#endif

#include <avs_commons_config.h>

#endif /* CONFIG_POSIX_CONFIG_H */
