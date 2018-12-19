!include x64.nsh
Name "libjpeg-turbo SDK for Visual C++"
OutFile "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\${BUILDDIR}libjpeg-turbo-2.0.1-vc.exe"
InstallDir "c:\libjpeg-turbo"

SetCompressor bzip2

Page directory
Page instfiles

UninstPage uninstConfirm
UninstPage instfiles

Section "libjpeg-turbo SDK for Visual C++ (required)"
!ifdef WIN64
	${If} ${RunningX64}
	${DisableX64FSRedirection}
	${Endif}
!endif
	SectionIn RO
!ifdef GCC
	IfFileExists $SYSDIR/libturbojpeg.dll exists 0
!else
	IfFileExists $SYSDIR/turbojpeg.dll exists 0
!endif
	goto notexists
	exists:
!ifdef GCC
	MessageBox MB_OK "An existing version of the libjpeg-turbo SDK for Visual C++ is already installed.  Please uninstall it first."
!else
	MessageBox MB_OK "An existing version of the libjpeg-turbo SDK for Visual C++ or the TurboJPEG SDK is already installed.  Please uninstall it first."
!endif
	quit

	notexists:
	SetOutPath $SYSDIR
!ifdef GCC
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\libturbojpeg.dll"
!else
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\${BUILDDIR}turbojpeg.dll"
!endif
	SetOutPath $INSTDIR\bin
!ifdef GCC
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\libturbojpeg.dll"
!else
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\${BUILDDIR}turbojpeg.dll"
!endif
!ifdef GCC
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\libjpeg-62.dll"
!else
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\${BUILDDIR}jpeg62.dll"
!endif
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\${BUILDDIR}cjpeg.exe"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\${BUILDDIR}djpeg.exe"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\${BUILDDIR}jpegtran.exe"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\${BUILDDIR}tjbench.exe"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\${BUILDDIR}rdjpgcom.exe"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\${BUILDDIR}wrjpgcom.exe"
	SetOutPath $INSTDIR\lib
!ifdef GCC
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\libturbojpeg.dll.a"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\libturbojpeg.a"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\libjpeg.dll.a"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\libjpeg.a"
!else
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\${BUILDDIR}turbojpeg.lib"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\${BUILDDIR}turbojpeg-static.lib"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\${BUILDDIR}jpeg.lib"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\${BUILDDIR}jpeg-static.lib"
!endif
	SetOutPath $INSTDIR\lib\pkgconfig
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\pkgscripts\libjpeg.pc"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\pkgscripts\libturbojpeg.pc"
!ifdef JAVA
	SetOutPath $INSTDIR\classes
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\java\turbojpeg.jar"
!endif
	SetOutPath $INSTDIR\include
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master/vs2012\jconfig.h"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master\jerror.h"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master\jmorecfg.h"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master\jpeglib.h"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master\turbojpeg.h"
	SetOutPath $INSTDIR\doc
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master\README.ijg"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master\README.md"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master\LICENSE.md"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master\example.txt"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master\libjpeg.txt"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master\structure.txt"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master\usage.txt"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master\wizard.txt"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master\tjexample.c"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master\java\TJExample.java"
!ifdef GCC
	SetOutPath $INSTDIR\man\man1
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master\cjpeg.1"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master\djpeg.1"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master\jpegtran.1"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master\rdjpgcom.1"
	File "E:/libjpeg-turbo-master (3)/libjpeg-turbo-master\wrjpgcom.1"
!endif

	WriteRegStr HKLM "SOFTWARE\libjpeg-turbo 2.0.1" "Install_Dir" "$INSTDIR"

	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\libjpeg-turbo 2.0.1" "DisplayName" "libjpeg-turbo SDK v2.0.1 for Visual C++"
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\libjpeg-turbo 2.0.1" "UninstallString" '"$INSTDIR\uninstall_2.0.1.exe"'
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\libjpeg-turbo 2.0.1" "NoModify" 1
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\libjpeg-turbo 2.0.1" "NoRepair" 1
	WriteUninstaller "uninstall_2.0.1.exe"
SectionEnd

Section "Uninstall"
!ifdef WIN64
	${If} ${RunningX64}
	${DisableX64FSRedirection}
	${Endif}
!endif

	SetShellVarContext all

	DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\libjpeg-turbo 2.0.1"
	DeleteRegKey HKLM "SOFTWARE\libjpeg-turbo 2.0.1"

!ifdef GCC
	Delete $INSTDIR\bin\libjpeg-62.dll
	Delete $INSTDIR\bin\libturbojpeg.dll
	Delete $SYSDIR\libturbojpeg.dll
	Delete $INSTDIR\lib\libturbojpeg.dll.a
	Delete $INSTDIR\lib\libturbojpeg.a
	Delete $INSTDIR\lib\libjpeg.dll.a
	Delete $INSTDIR\lib\libjpeg.a
!else
	Delete $INSTDIR\bin\jpeg62.dll
	Delete $INSTDIR\bin\turbojpeg.dll
	Delete $SYSDIR\turbojpeg.dll
	Delete $INSTDIR\lib\jpeg.lib
	Delete $INSTDIR\lib\jpeg-static.lib
	Delete $INSTDIR\lib\turbojpeg.lib
	Delete $INSTDIR\lib\turbojpeg-static.lib
!endif
	Delete $INSTDIR\lib\pkgconfig\libjpeg.pc
	Delete $INSTDIR\lib\pkgconfig\libturbojpeg.pc
!ifdef JAVA
	Delete $INSTDIR\classes\turbojpeg.jar
!endif
	Delete $INSTDIR\bin\cjpeg.exe
	Delete $INSTDIR\bin\djpeg.exe
	Delete $INSTDIR\bin\jpegtran.exe
	Delete $INSTDIR\bin\tjbench.exe
	Delete $INSTDIR\bin\rdjpgcom.exe
	Delete $INSTDIR\bin\wrjpgcom.exe
	Delete $INSTDIR\include\jconfig.h
	Delete $INSTDIR\include\jerror.h
	Delete $INSTDIR\include\jmorecfg.h
	Delete $INSTDIR\include\jpeglib.h
	Delete $INSTDIR\include\turbojpeg.h
	Delete $INSTDIR\uninstall_2.0.1.exe
	Delete $INSTDIR\doc\README.ijg
	Delete $INSTDIR\doc\README.md
	Delete $INSTDIR\doc\LICENSE.md
	Delete $INSTDIR\doc\example.txt
	Delete $INSTDIR\doc\libjpeg.txt
	Delete $INSTDIR\doc\structure.txt
	Delete $INSTDIR\doc\usage.txt
	Delete $INSTDIR\doc\wizard.txt
	Delete $INSTDIR\doc\tjexample.c
	Delete $INSTDIR\doc\TJExample.java
!ifdef GCC
	Delete $INSTDIR\man\man1\cjpeg.1
	Delete $INSTDIR\man\man1\djpeg.1
	Delete $INSTDIR\man\man1\jpegtran.1
	Delete $INSTDIR\man\man1\rdjpgcom.1
	Delete $INSTDIR\man\man1\wrjpgcom.1
!endif

	RMDir "$INSTDIR\include"
	RMDir "$INSTDIR\lib\pkgconfig"
	RMDir "$INSTDIR\lib"
	RMDir "$INSTDIR\doc"
!ifdef GCC
	RMDir "$INSTDIR\man\man1"
	RMDir "$INSTDIR\man"
!endif
!ifdef JAVA
	RMDir "$INSTDIR\classes"
!endif
	RMDir "$INSTDIR\bin"
	RMDir "$INSTDIR"

SectionEnd
