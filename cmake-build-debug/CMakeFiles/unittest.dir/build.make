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
include CMakeFiles\unittest.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\unittest.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\unittest.dir\flags.make

CMakeFiles\unittest.dir\unittest\main.cpp.obj: CMakeFiles\unittest.dir\flags.make
CMakeFiles\unittest.dir\unittest\main.cpp.obj: ..\unittest\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/unittest.dir/unittest/main.cpp.obj"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\unittest.dir\unittest\main.cpp.obj /FdCMakeFiles\unittest.dir\ /FS -c C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\unittest\main.cpp
<<

CMakeFiles\unittest.dir\unittest\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unittest.dir/unittest/main.cpp.i"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\unittest.dir\unittest\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\unittest\main.cpp
<<

CMakeFiles\unittest.dir\unittest\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unittest.dir/unittest/main.cpp.s"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\unittest.dir\unittest\main.cpp.s /c C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\unittest\main.cpp
<<

CMakeFiles\unittest.dir\unittest\othertests.cpp.obj: CMakeFiles\unittest.dir\flags.make
CMakeFiles\unittest.dir\unittest\othertests.cpp.obj: ..\unittest\othertests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/unittest.dir/unittest/othertests.cpp.obj"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\unittest.dir\unittest\othertests.cpp.obj /FdCMakeFiles\unittest.dir\ /FS -c C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\unittest\othertests.cpp
<<

CMakeFiles\unittest.dir\unittest\othertests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unittest.dir/unittest/othertests.cpp.i"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\unittest.dir\unittest\othertests.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\unittest\othertests.cpp
<<

CMakeFiles\unittest.dir\unittest\othertests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unittest.dir/unittest/othertests.cpp.s"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\unittest.dir\unittest\othertests.cpp.s /c C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\unittest\othertests.cpp
<<

CMakeFiles\unittest.dir\unittest\vec2.cpp.obj: CMakeFiles\unittest.dir\flags.make
CMakeFiles\unittest.dir\unittest\vec2.cpp.obj: ..\unittest\vec2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/unittest.dir/unittest/vec2.cpp.obj"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\unittest.dir\unittest\vec2.cpp.obj /FdCMakeFiles\unittest.dir\ /FS -c C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\unittest\vec2.cpp
<<

CMakeFiles\unittest.dir\unittest\vec2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unittest.dir/unittest/vec2.cpp.i"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\unittest.dir\unittest\vec2.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\unittest\vec2.cpp
<<

CMakeFiles\unittest.dir\unittest\vec2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unittest.dir/unittest/vec2.cpp.s"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\unittest.dir\unittest\vec2.cpp.s /c C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\unittest\vec2.cpp
<<

# Object files for target unittest
unittest_OBJECTS = \
"CMakeFiles\unittest.dir\unittest\main.cpp.obj" \
"CMakeFiles\unittest.dir\unittest\othertests.cpp.obj" \
"CMakeFiles\unittest.dir\unittest\vec2.cpp.obj"

# External object files for target unittest
unittest_EXTERNAL_OBJECTS =

..\bin\unittest.exe: CMakeFiles\unittest.dir\unittest\main.cpp.obj
..\bin\unittest.exe: CMakeFiles\unittest.dir\unittest\othertests.cpp.obj
..\bin\unittest.exe: CMakeFiles\unittest.dir\unittest\vec2.cpp.obj
..\bin\unittest.exe: CMakeFiles\unittest.dir\build.make
..\bin\unittest.exe: CMakeFiles\unittest.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ..\bin\unittest.exe"
	"C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\unittest.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100177~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100177~1.0\x86\mt.exe --manifests  -- C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\unittest.dir\objects1.rsp @<<
 /out:..\bin\unittest.exe /implib:unittest.lib /pdb:C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\bin\unittest.pdb /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\unittest.dir\build: ..\bin\unittest.exe

.PHONY : CMakeFiles\unittest.dir\build

CMakeFiles\unittest.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\unittest.dir\cmake_clean.cmake
.PHONY : CMakeFiles\unittest.dir\clean

CMakeFiles\unittest.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\cmake-build-debug C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\cmake-build-debug C:\Users\Daniel\Desktop\Skola\kandidat_labb2\particlesystem\cmake-build-debug\CMakeFiles\unittest.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\unittest.dir\depend

