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

# Utility rule file for examples.

# Include the progress variables for this target.
include examples/CMakeFiles/examples.dir/progress.make

examples: examples/CMakeFiles/examples.dir/build.make
	cd /home/src/Anjay/examples && /usr/bin/cmake -E make_directory /home/src/Anjay/examples/build
	cd /home/src/Anjay/examples && /usr/bin/cmake -E make_directory /home/src/Anjay/examples/build/anjay
	cd /home/src/Anjay/examples && /usr/bin/cmake -E make_directory /home/src/Anjay/examples/build/anjay-build
	cd /home/src/Anjay/examples/build/anjay-build && /usr/bin/cmake -H/home/src/Anjay -B. -DCMAKE_INSTALL_PREFIX="/home/src/Anjay/examples/build/anjay" -DWITH_LIBRARY_SHARED=OFF -DWITH_DEMO=OFF
	cd /home/src/Anjay/examples/build/anjay-build && /usr/bin/cmake --build . --target install -- -j
	cd /home/src/Anjay/examples/build && /usr/bin/cmake -H/home/src/Anjay/examples/tutorial/ -B. -DCMAKE_PREFIX_PATH="/home/src/Anjay/examples/build/anjay" -DCMAKE_RUNTIME_OUTPUT_DIRECTORY="/home/src/Anjay/output/bin/examples"
	cd /home/src/Anjay/examples/build && /usr/bin/cmake --build . -- -j
.PHONY : examples

# Rule to build all files generated by this target.
examples/CMakeFiles/examples.dir/build: examples

.PHONY : examples/CMakeFiles/examples.dir/build

examples/CMakeFiles/examples.dir/clean:
	cd /home/src/Anjay/examples && $(CMAKE_COMMAND) -P CMakeFiles/examples.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/examples.dir/clean

examples/CMakeFiles/examples.dir/depend:
	cd /home/src/Anjay && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/src/Anjay /home/src/Anjay/examples /home/src/Anjay /home/src/Anjay/examples /home/src/Anjay/examples/CMakeFiles/examples.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/examples.dir/depend
