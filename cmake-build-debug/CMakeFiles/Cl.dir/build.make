# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\dev\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\dev\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\study\Proteins

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\study\Proteins\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Cl.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Cl.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Cl.dir/flags.make

CMakeFiles/Cl.dir/mc.cpp.obj: CMakeFiles/Cl.dir/flags.make
CMakeFiles/Cl.dir/mc.cpp.obj: ../mc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\study\Proteins\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Cl.dir/mc.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Cl.dir\mc.cpp.obj -c C:\study\Proteins\mc.cpp

CMakeFiles/Cl.dir/mc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Cl.dir/mc.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\study\Proteins\mc.cpp > CMakeFiles\Cl.dir\mc.cpp.i

CMakeFiles/Cl.dir/mc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Cl.dir/mc.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\study\Proteins\mc.cpp -o CMakeFiles\Cl.dir\mc.cpp.s

# Object files for target Cl
Cl_OBJECTS = \
"CMakeFiles/Cl.dir/mc.cpp.obj"

# External object files for target Cl
Cl_EXTERNAL_OBJECTS =

Cl.exe: CMakeFiles/Cl.dir/mc.cpp.obj
Cl.exe: CMakeFiles/Cl.dir/build.make
Cl.exe: CMakeFiles/Cl.dir/linklibs.rsp
Cl.exe: CMakeFiles/Cl.dir/objects1.rsp
Cl.exe: CMakeFiles/Cl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\study\Proteins\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Cl.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Cl.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Cl.dir/build: Cl.exe

.PHONY : CMakeFiles/Cl.dir/build

CMakeFiles/Cl.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Cl.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Cl.dir/clean

CMakeFiles/Cl.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\study\Proteins C:\study\Proteins C:\study\Proteins\cmake-build-debug C:\study\Proteins\cmake-build-debug C:\study\Proteins\cmake-build-debug\CMakeFiles\Cl.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Cl.dir/depend

