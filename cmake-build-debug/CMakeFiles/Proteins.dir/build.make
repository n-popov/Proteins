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
include CMakeFiles/Proteins.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Proteins.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Proteins.dir/flags.make

CMakeFiles/Proteins.dir/main.cpp.obj: CMakeFiles/Proteins.dir/flags.make
CMakeFiles/Proteins.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\study\Proteins\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Proteins.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Proteins.dir\main.cpp.obj -c C:\study\Proteins\main.cpp

CMakeFiles/Proteins.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Proteins.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\study\Proteins\main.cpp > CMakeFiles\Proteins.dir\main.cpp.i

CMakeFiles/Proteins.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Proteins.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\study\Proteins\main.cpp -o CMakeFiles\Proteins.dir\main.cpp.s

CMakeFiles/Proteins.dir/pi.cpp.obj: CMakeFiles/Proteins.dir/flags.make
CMakeFiles/Proteins.dir/pi.cpp.obj: ../pi.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\study\Proteins\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Proteins.dir/pi.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Proteins.dir\pi.cpp.obj -c C:\study\Proteins\pi.cpp

CMakeFiles/Proteins.dir/pi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Proteins.dir/pi.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\study\Proteins\pi.cpp > CMakeFiles\Proteins.dir\pi.cpp.i

CMakeFiles/Proteins.dir/pi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Proteins.dir/pi.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\study\Proteins\pi.cpp -o CMakeFiles\Proteins.dir\pi.cpp.s

# Object files for target Proteins
Proteins_OBJECTS = \
"CMakeFiles/Proteins.dir/main.cpp.obj" \
"CMakeFiles/Proteins.dir/pi.cpp.obj"

# External object files for target Proteins
Proteins_EXTERNAL_OBJECTS =

Proteins.exe: CMakeFiles/Proteins.dir/main.cpp.obj
Proteins.exe: CMakeFiles/Proteins.dir/pi.cpp.obj
Proteins.exe: CMakeFiles/Proteins.dir/build.make
Proteins.exe: CMakeFiles/Proteins.dir/linklibs.rsp
Proteins.exe: CMakeFiles/Proteins.dir/objects1.rsp
Proteins.exe: CMakeFiles/Proteins.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\study\Proteins\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Proteins.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Proteins.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Proteins.dir/build: Proteins.exe

.PHONY : CMakeFiles/Proteins.dir/build

CMakeFiles/Proteins.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Proteins.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Proteins.dir/clean

CMakeFiles/Proteins.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\study\Proteins C:\study\Proteins C:\study\Proteins\cmake-build-debug C:\study\Proteins\cmake-build-debug C:\study\Proteins\cmake-build-debug\CMakeFiles\Proteins.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Proteins.dir/depend

