# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\tracy.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\tracy.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\tracy.dir\flags.make

CMakeFiles\tracy.dir\ext\tracy\TracyClient.cpp.obj: CMakeFiles\tracy.dir\flags.make
CMakeFiles\tracy.dir\ext\tracy\TracyClient.cpp.obj: ..\ext\tracy\TracyClient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tracy.dir/ext/tracy/TracyClient.cpp.obj"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\tracy.dir\ext\tracy\TracyClient.cpp.obj /FdCMakeFiles\tracy.dir\tracy.pdb /FS -c C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\ext\tracy\TracyClient.cpp
<<

CMakeFiles\tracy.dir\ext\tracy\TracyClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tracy.dir/ext/tracy/TracyClient.cpp.i"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\tracy.dir\ext\tracy\TracyClient.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\ext\tracy\TracyClient.cpp
<<

CMakeFiles\tracy.dir\ext\tracy\TracyClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tracy.dir/ext/tracy/TracyClient.cpp.s"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\tracy.dir\ext\tracy\TracyClient.cpp.s /c C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\ext\tracy\TracyClient.cpp
<<

# Object files for target tracy
tracy_OBJECTS = \
"CMakeFiles\tracy.dir\ext\tracy\TracyClient.cpp.obj"

# External object files for target tracy
tracy_EXTERNAL_OBJECTS =

tracy.lib: CMakeFiles\tracy.dir\ext\tracy\TracyClient.cpp.obj
tracy.lib: CMakeFiles\tracy.dir\build.make
tracy.lib: CMakeFiles\tracy.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library tracy.lib"
	$(CMAKE_COMMAND) -P CMakeFiles\tracy.dir\cmake_clean_target.cmake
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\link.exe /lib /nologo /machine:X86 /out:tracy.lib @CMakeFiles\tracy.dir\objects1.rsp 

# Rule to build all files generated by this target.
CMakeFiles\tracy.dir\build: tracy.lib

.PHONY : CMakeFiles\tracy.dir\build

CMakeFiles\tracy.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\tracy.dir\cmake_clean.cmake
.PHONY : CMakeFiles\tracy.dir\clean

CMakeFiles\tracy.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\cmake-build-debug C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\cmake-build-debug C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\cmake-build-debug\CMakeFiles\tracy.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\tracy.dir\depend

