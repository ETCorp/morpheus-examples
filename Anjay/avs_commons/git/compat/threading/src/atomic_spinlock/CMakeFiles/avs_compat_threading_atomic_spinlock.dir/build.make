# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/src/Anjay

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/src/Anjay

# Include any dependencies generated for this target.
include avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/depend.make

# Include the progress variables for this target.
include avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/progress.make

# Include the compile flags for this target's objects.
include avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/flags.make

avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.o: avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/flags.make
avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.o: avs_commons/git/compat/threading/src/atomic_spinlock/condvar.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/src/Anjay/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.o"
	cd /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.o   -c /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock/condvar.c

avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.i"
	cd /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock/condvar.c > CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.i

avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.s"
	cd /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock/condvar.c -o CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.s

avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.o.requires:

.PHONY : avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.o.requires

avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.o.provides: avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.o.requires
	$(MAKE) -f avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/build.make avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.o.provides.build
.PHONY : avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.o.provides

avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.o.provides.build: avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.o


avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.o: avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/flags.make
avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.o: avs_commons/git/compat/threading/src/atomic_spinlock/mutex.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/src/Anjay/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.o"
	cd /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.o   -c /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock/mutex.c

avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.i"
	cd /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock/mutex.c > CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.i

avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.s"
	cd /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock/mutex.c -o CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.s

avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.o.requires:

.PHONY : avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.o.requires

avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.o.provides: avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.o.requires
	$(MAKE) -f avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/build.make avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.o.provides.build
.PHONY : avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.o.provides

avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.o.provides.build: avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.o


avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.o: avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/flags.make
avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.o: avs_commons/git/compat/threading/src/atomic_spinlock/init_once.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/src/Anjay/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.o"
	cd /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.o   -c /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock/init_once.c

avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.i"
	cd /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock/init_once.c > CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.i

avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.s"
	cd /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock/init_once.c -o CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.s

avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.o.requires:

.PHONY : avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.o.requires

avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.o.provides: avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.o.requires
	$(MAKE) -f avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/build.make avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.o.provides.build
.PHONY : avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.o.provides

avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.o.provides.build: avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.o


# Object files for target avs_compat_threading_atomic_spinlock
avs_compat_threading_atomic_spinlock_OBJECTS = \
"CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.o" \
"CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.o" \
"CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.o"

# External object files for target avs_compat_threading_atomic_spinlock
avs_compat_threading_atomic_spinlock_EXTERNAL_OBJECTS =

output/lib/libavs_compat_threading_atomic_spinlock.a: avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.o
output/lib/libavs_compat_threading_atomic_spinlock.a: avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.o
output/lib/libavs_compat_threading_atomic_spinlock.a: avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.o
output/lib/libavs_compat_threading_atomic_spinlock.a: avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/build.make
output/lib/libavs_compat_threading_atomic_spinlock.a: avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/src/Anjay/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library ../../../../../../output/lib/libavs_compat_threading_atomic_spinlock.a"
	cd /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock && $(CMAKE_COMMAND) -P CMakeFiles/avs_compat_threading_atomic_spinlock.dir/cmake_clean_target.cmake
	cd /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/avs_compat_threading_atomic_spinlock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/build: output/lib/libavs_compat_threading_atomic_spinlock.a

.PHONY : avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/build

avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/requires: avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/condvar.c.o.requires
avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/requires: avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/mutex.c.o.requires
avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/requires: avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/init_once.c.o.requires

.PHONY : avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/requires

avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/clean:
	cd /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock && $(CMAKE_COMMAND) -P CMakeFiles/avs_compat_threading_atomic_spinlock.dir/cmake_clean.cmake
.PHONY : avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/clean

avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/depend:
	cd /home/src/Anjay && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/src/Anjay /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock /home/src/Anjay /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock /home/src/Anjay/avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : avs_commons/git/compat/threading/src/atomic_spinlock/CMakeFiles/avs_compat_threading_atomic_spinlock.dir/depend

