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
include avs_commons/git/log/CMakeFiles/avs_log.dir/depend.make

# Include the progress variables for this target.
include avs_commons/git/log/CMakeFiles/avs_log.dir/progress.make

# Include the compile flags for this target's objects.
include avs_commons/git/log/CMakeFiles/avs_log.dir/flags.make

avs_commons/git/log/CMakeFiles/avs_log.dir/src/log.c.o: avs_commons/git/log/CMakeFiles/avs_log.dir/flags.make
avs_commons/git/log/CMakeFiles/avs_log.dir/src/log.c.o: avs_commons/git/log/src/log.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/src/Anjay/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object avs_commons/git/log/CMakeFiles/avs_log.dir/src/log.c.o"
	cd /home/src/Anjay/avs_commons/git/log && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/avs_log.dir/src/log.c.o   -c /home/src/Anjay/avs_commons/git/log/src/log.c

avs_commons/git/log/CMakeFiles/avs_log.dir/src/log.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/avs_log.dir/src/log.c.i"
	cd /home/src/Anjay/avs_commons/git/log && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/src/Anjay/avs_commons/git/log/src/log.c > CMakeFiles/avs_log.dir/src/log.c.i

avs_commons/git/log/CMakeFiles/avs_log.dir/src/log.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/avs_log.dir/src/log.c.s"
	cd /home/src/Anjay/avs_commons/git/log && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/src/Anjay/avs_commons/git/log/src/log.c -o CMakeFiles/avs_log.dir/src/log.c.s

avs_commons/git/log/CMakeFiles/avs_log.dir/src/log.c.o.requires:

.PHONY : avs_commons/git/log/CMakeFiles/avs_log.dir/src/log.c.o.requires

avs_commons/git/log/CMakeFiles/avs_log.dir/src/log.c.o.provides: avs_commons/git/log/CMakeFiles/avs_log.dir/src/log.c.o.requires
	$(MAKE) -f avs_commons/git/log/CMakeFiles/avs_log.dir/build.make avs_commons/git/log/CMakeFiles/avs_log.dir/src/log.c.o.provides.build
.PHONY : avs_commons/git/log/CMakeFiles/avs_log.dir/src/log.c.o.provides

avs_commons/git/log/CMakeFiles/avs_log.dir/src/log.c.o.provides.build: avs_commons/git/log/CMakeFiles/avs_log.dir/src/log.c.o


# Object files for target avs_log
avs_log_OBJECTS = \
"CMakeFiles/avs_log.dir/src/log.c.o"

# External object files for target avs_log
avs_log_EXTERNAL_OBJECTS =

output/lib/libavs_log.a: avs_commons/git/log/CMakeFiles/avs_log.dir/src/log.c.o
output/lib/libavs_log.a: avs_commons/git/log/CMakeFiles/avs_log.dir/build.make
output/lib/libavs_log.a: avs_commons/git/log/CMakeFiles/avs_log.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/src/Anjay/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library ../../../output/lib/libavs_log.a"
	cd /home/src/Anjay/avs_commons/git/log && $(CMAKE_COMMAND) -P CMakeFiles/avs_log.dir/cmake_clean_target.cmake
	cd /home/src/Anjay/avs_commons/git/log && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/avs_log.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
avs_commons/git/log/CMakeFiles/avs_log.dir/build: output/lib/libavs_log.a

.PHONY : avs_commons/git/log/CMakeFiles/avs_log.dir/build

avs_commons/git/log/CMakeFiles/avs_log.dir/requires: avs_commons/git/log/CMakeFiles/avs_log.dir/src/log.c.o.requires

.PHONY : avs_commons/git/log/CMakeFiles/avs_log.dir/requires

avs_commons/git/log/CMakeFiles/avs_log.dir/clean:
	cd /home/src/Anjay/avs_commons/git/log && $(CMAKE_COMMAND) -P CMakeFiles/avs_log.dir/cmake_clean.cmake
.PHONY : avs_commons/git/log/CMakeFiles/avs_log.dir/clean

avs_commons/git/log/CMakeFiles/avs_log.dir/depend:
	cd /home/src/Anjay && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/src/Anjay /home/src/Anjay/avs_commons/git/log /home/src/Anjay /home/src/Anjay/avs_commons/git/log /home/src/Anjay/avs_commons/git/log/CMakeFiles/avs_log.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : avs_commons/git/log/CMakeFiles/avs_log.dir/depend
