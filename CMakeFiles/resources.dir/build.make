# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/HomeHive

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/HomeHive

# Utility rule file for resources.

# Include any custom commands dependencies for this target.
include CMakeFiles/resources.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/resources.dir/progress.make

CMakeFiles/resources:
	/usr/bin/cmake -E copy_directory /root/HomeHive/resources /root/HomeHive/resources

resources: CMakeFiles/resources
resources: CMakeFiles/resources.dir/build.make
.PHONY : resources

# Rule to build all files generated by this target.
CMakeFiles/resources.dir/build: resources
.PHONY : CMakeFiles/resources.dir/build

CMakeFiles/resources.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/resources.dir/cmake_clean.cmake
.PHONY : CMakeFiles/resources.dir/clean

CMakeFiles/resources.dir/depend:
	cd /root/HomeHive && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/HomeHive /root/HomeHive /root/HomeHive /root/HomeHive /root/HomeHive/CMakeFiles/resources.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/resources.dir/depend

