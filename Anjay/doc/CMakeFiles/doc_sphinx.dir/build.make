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

# Utility rule file for doc_sphinx.

# Include the progress variables for this target.
include doc/CMakeFiles/doc_sphinx.dir/progress.make

doc/CMakeFiles/doc_sphinx:
	cd /home/src/Anjay/doc/sphinx && SPHINX_BUILD_EXECUTABLE-NOTFOUND -b html -c /home/src/Anjay/output/doc/sphinx /home/src/Anjay/doc/sphinx/source /home/src/Anjay/output/doc/sphinx/html

doc_sphinx: doc/CMakeFiles/doc_sphinx
doc_sphinx: doc/CMakeFiles/doc_sphinx.dir/build.make

.PHONY : doc_sphinx

# Rule to build all files generated by this target.
doc/CMakeFiles/doc_sphinx.dir/build: doc_sphinx

.PHONY : doc/CMakeFiles/doc_sphinx.dir/build

doc/CMakeFiles/doc_sphinx.dir/clean:
	cd /home/src/Anjay/doc && $(CMAKE_COMMAND) -P CMakeFiles/doc_sphinx.dir/cmake_clean.cmake
.PHONY : doc/CMakeFiles/doc_sphinx.dir/clean

doc/CMakeFiles/doc_sphinx.dir/depend:
	cd /home/src/Anjay && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/src/Anjay /home/src/Anjay/doc /home/src/Anjay /home/src/Anjay/doc /home/src/Anjay/doc/CMakeFiles/doc_sphinx.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/CMakeFiles/doc_sphinx.dir/depend

