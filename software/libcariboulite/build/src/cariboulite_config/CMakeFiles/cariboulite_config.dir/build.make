# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/local/lib/python3.7/dist-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /usr/local/lib/python3.7/dist-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/projects/cariboulite/software/libcariboulite

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/projects/cariboulite/software/libcariboulite/build

# Include any dependencies generated for this target.
include src/cariboulite_config/CMakeFiles/cariboulite_config.dir/depend.make

# Include the progress variables for this target.
include src/cariboulite_config/CMakeFiles/cariboulite_config.dir/progress.make

# Include the compile flags for this target's objects.
include src/cariboulite_config/CMakeFiles/cariboulite_config.dir/flags.make

src/cariboulite_config/CMakeFiles/cariboulite_config.dir/cariboulite_config.c.o: src/cariboulite_config/CMakeFiles/cariboulite_config.dir/flags.make
src/cariboulite_config/CMakeFiles/cariboulite_config.dir/cariboulite_config.c.o: ../src/cariboulite_config/cariboulite_config.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/projects/cariboulite/software/libcariboulite/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/cariboulite_config/CMakeFiles/cariboulite_config.dir/cariboulite_config.c.o"
	cd /home/pi/projects/cariboulite/software/libcariboulite/build/src/cariboulite_config && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cariboulite_config.dir/cariboulite_config.c.o -c /home/pi/projects/cariboulite/software/libcariboulite/src/cariboulite_config/cariboulite_config.c

src/cariboulite_config/CMakeFiles/cariboulite_config.dir/cariboulite_config.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cariboulite_config.dir/cariboulite_config.c.i"
	cd /home/pi/projects/cariboulite/software/libcariboulite/build/src/cariboulite_config && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/projects/cariboulite/software/libcariboulite/src/cariboulite_config/cariboulite_config.c > CMakeFiles/cariboulite_config.dir/cariboulite_config.c.i

src/cariboulite_config/CMakeFiles/cariboulite_config.dir/cariboulite_config.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cariboulite_config.dir/cariboulite_config.c.s"
	cd /home/pi/projects/cariboulite/software/libcariboulite/build/src/cariboulite_config && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/projects/cariboulite/software/libcariboulite/src/cariboulite_config/cariboulite_config.c -o CMakeFiles/cariboulite_config.dir/cariboulite_config.c.s

# Object files for target cariboulite_config
cariboulite_config_OBJECTS = \
"CMakeFiles/cariboulite_config.dir/cariboulite_config.c.o"

# External object files for target cariboulite_config
cariboulite_config_EXTERNAL_OBJECTS =

src/cariboulite_config/libcariboulite_config.a: src/cariboulite_config/CMakeFiles/cariboulite_config.dir/cariboulite_config.c.o
src/cariboulite_config/libcariboulite_config.a: src/cariboulite_config/CMakeFiles/cariboulite_config.dir/build.make
src/cariboulite_config/libcariboulite_config.a: src/cariboulite_config/CMakeFiles/cariboulite_config.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/projects/cariboulite/software/libcariboulite/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libcariboulite_config.a"
	cd /home/pi/projects/cariboulite/software/libcariboulite/build/src/cariboulite_config && $(CMAKE_COMMAND) -P CMakeFiles/cariboulite_config.dir/cmake_clean_target.cmake
	cd /home/pi/projects/cariboulite/software/libcariboulite/build/src/cariboulite_config && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cariboulite_config.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/cariboulite_config/CMakeFiles/cariboulite_config.dir/build: src/cariboulite_config/libcariboulite_config.a

.PHONY : src/cariboulite_config/CMakeFiles/cariboulite_config.dir/build

src/cariboulite_config/CMakeFiles/cariboulite_config.dir/clean:
	cd /home/pi/projects/cariboulite/software/libcariboulite/build/src/cariboulite_config && $(CMAKE_COMMAND) -P CMakeFiles/cariboulite_config.dir/cmake_clean.cmake
.PHONY : src/cariboulite_config/CMakeFiles/cariboulite_config.dir/clean

src/cariboulite_config/CMakeFiles/cariboulite_config.dir/depend:
	cd /home/pi/projects/cariboulite/software/libcariboulite/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/projects/cariboulite/software/libcariboulite /home/pi/projects/cariboulite/software/libcariboulite/src/cariboulite_config /home/pi/projects/cariboulite/software/libcariboulite/build /home/pi/projects/cariboulite/software/libcariboulite/build/src/cariboulite_config /home/pi/projects/cariboulite/software/libcariboulite/build/src/cariboulite_config/CMakeFiles/cariboulite_config.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/cariboulite_config/CMakeFiles/cariboulite_config.dir/depend

