<<<<<<< HEAD
<<<<<<< HEAD
set version=24

set mypath=%~dp0

:"C:\Program Files (x86)\Arduino\Arduino ERW 1.0.5\hardware/tools/avr/bin/avrdude" -C"C:\Program Files (x86)\Arduino\Arduino ERW 1.0.5\hardware/tools/avr/etc/avrdude.conf" -v -v -v -v -patmega2560 -cstk500v1 -P\\.\COM6 -b57600 -D -V -Uflash:w:C:\Users\Nate\AppData\Local\Temp\build2226663903393793181.tmp\miniE_cineMoco.cpp.hex:i 

rem echo "%mypath%avrdude.exe"

:echo "%mypath%avrdude.exe" -C"%mypath%avrdude.conf" -v -v -v -v -patmega2560 -cstk500v1 -P\\.\COM6 -b57600 -D -V -Uflash:w:C:\Users\Nate\AppData\Local\Temp\build2226663903393793181.tmp\miniE_cineMoco.cpp.hex:i 

set myconf=%mypath%avrdude.conf

set myhex=%mypath%v%version%.hex
echo %myhex%

set mydude=%mypath%\bin\avrdude


cscript %mypath%myvbscript.vbs

@echo off
echo ==============================================
echo.
chgport
echo.
echo Which COM port above looks like:  COMxx = \Device\VCP0?
echo For example, please enter 5 if you see COM5 = \Device\VCP0
echo NOTE: If you don't see this go to http://www.ftdichip.com/Drivers/VCP.htm and download the appropriate driver.
set /p whichcom=%=%

rem set /p whichcom="Which COM port above enumerated as COMxx = \Device\VCP0?  For example, please enter 5 if you see COM5 = \Device\VCP0    " %=%
set X=COM%whichcom%

rem set cmd="chgport"
REM FOR /F %%i IN (' %cmd% ') DO SET X=%%i

REM echo %X%

@echo off
:set /p id="Enter ID: " %=%

:if "%id%" == "0" EXIT
@echo on

REM avrdude.conf integrated successfully
:"C:\Program Files (x86)\Arduino\Arduino ERW 1.0.5\hardware\tools\avr\bin\avrdude" -C"%mypath%avrdude.conf" -v -v -v -v -patmega2560 -cstk500v1 -P\\.\COM6 -b57600 -D -V -Uflash:w:C:\Users\Nate\AppData\Local\Temp\build2226663903393793181.tmp\miniE_cineMoco.cpp.hex:i 


REM magic
"%mydude%" -C"%myconf%" -v -v -v -v -patmega2560 -cstk500v1 -P\\.\%X% -b57600 -D -V -Uflash:w:"%myhex%":i 

:"C:\Program Files (x86)\Arduino\Arduino ERW 1.0.5\hardware\tools\avr\bin\avrdude" -C%myconf% -v -v -v -v -patmega2560 -cstk500v1 -P\\.\COM6 -b57600 -D -V -Uflash:w:%myhex%:i 

REM ===================================================================
=======
set version=23

set mypath=%~dp0

:"C:\Program Files (x86)\Arduino\Arduino ERW 1.0.5\hardware/tools/avr/bin/avrdude" -C"C:\Program Files (x86)\Arduino\Arduino ERW 1.0.5\hardware/tools/avr/etc/avrdude.conf" -v -v -v -v -patmega2560 -cstk500v1 -P\\.\COM6 -b57600 -D -V -Uflash:w:C:\Users\Nate\AppData\Local\Temp\build2226663903393793181.tmp\miniE_cineMoco.cpp.hex:i 

rem echo "%mypath%avrdude.exe"

:echo "%mypath%avrdude.exe" -C"%mypath%avrdude.conf" -v -v -v -v -patmega2560 -cstk500v1 -P\\.\COM6 -b57600 -D -V -Uflash:w:C:\Users\Nate\AppData\Local\Temp\build2226663903393793181.tmp\miniE_cineMoco.cpp.hex:i 

set myconf=%mypath%avrdude.conf

set myhex=%mypath%v%version%.hex
echo %myhex%

set mydude=%mypath%\bin\avrdude


cscript %mypath%myvbscript.vbs

@echo off
echo ==============================================
echo.
chgport
echo.
echo Which COM port above looks like:  COMxx = \Device\VCP0?
echo For example, please enter 5 if you see COM5 = \Device\VCP0
echo NOTE: If you don't see this go to http://www.ftdichip.com/Drivers/VCP.htm and download the appropriate driver.
set /p whichcom=%=%

rem set /p whichcom="Which COM port above enumerated as COMxx = \Device\VCP0?  For example, please enter 5 if you see COM5 = \Device\VCP0    " %=%
set X=COM%whichcom%

rem set cmd="chgport"
REM FOR /F %%i IN (' %cmd% ') DO SET X=%%i

REM echo %X%

@echo off
:set /p id="Enter ID: " %=%

:if "%id%" == "0" EXIT
@echo on

REM avrdude.conf integrated successfully
:"C:\Program Files (x86)\Arduino\Arduino ERW 1.0.5\hardware\tools\avr\bin\avrdude" -C"%mypath%avrdude.conf" -v -v -v -v -patmega2560 -cstk500v1 -P\\.\COM6 -b57600 -D -V -Uflash:w:C:\Users\Nate\AppData\Local\Temp\build2226663903393793181.tmp\miniE_cineMoco.cpp.hex:i 


REM magic
"%mydude%" -C"%myconf%" -v -v -v -v -patmega2560 -cstk500v1 -P\\.\%X% -b57600 -D -V -Uflash:w:"%myhex%":i 

:"C:\Program Files (x86)\Arduino\Arduino ERW 1.0.5\hardware\tools\avr\bin\avrdude" -C%myconf% -v -v -v -v -patmega2560 -cstk500v1 -P\\.\COM6 -b57600 -D -V -Uflash:w:%myhex%:i 

REM ===================================================================
>>>>>>> ac6d7e90a2ce07437d1509844ab15219314d6606
=======
set version=24

set mypath=%~dp0

:"C:\Program Files (x86)\Arduino\Arduino ERW 1.0.5\hardware/tools/avr/bin/avrdude" -C"C:\Program Files (x86)\Arduino\Arduino ERW 1.0.5\hardware/tools/avr/etc/avrdude.conf" -v -v -v -v -patmega2560 -cstk500v1 -P\\.\COM6 -b57600 -D -V -Uflash:w:C:\Users\Nate\AppData\Local\Temp\build2226663903393793181.tmp\miniE_cineMoco.cpp.hex:i 

rem echo "%mypath%avrdude.exe"

:echo "%mypath%avrdude.exe" -C"%mypath%avrdude.conf" -v -v -v -v -patmega2560 -cstk500v1 -P\\.\COM6 -b57600 -D -V -Uflash:w:C:\Users\Nate\AppData\Local\Temp\build2226663903393793181.tmp\miniE_cineMoco.cpp.hex:i 

set myconf=%mypath%avrdude.conf

set myhex=%mypath%v%version%.hex
echo %myhex%

set mydude=%mypath%\bin\avrdude


cscript %mypath%myvbscript.vbs

@echo off
echo ==============================================
echo.
chgport
echo.
echo Which COM port above looks like:  COMxx = \Device\VCP0?
echo For example, please enter 5 if you see COM5 = \Device\VCP0
echo NOTE: If you don't see this go to http://www.ftdichip.com/Drivers/VCP.htm and download the appropriate driver.
set /p whichcom=%=%

rem set /p whichcom="Which COM port above enumerated as COMxx = \Device\VCP0?  For example, please enter 5 if you see COM5 = \Device\VCP0    " %=%
set X=COM%whichcom%

rem set cmd="chgport"
REM FOR /F %%i IN (' %cmd% ') DO SET X=%%i

REM echo %X%

@echo off
:set /p id="Enter ID: " %=%

:if "%id%" == "0" EXIT
@echo on

REM avrdude.conf integrated successfully
:"C:\Program Files (x86)\Arduino\Arduino ERW 1.0.5\hardware\tools\avr\bin\avrdude" -C"%mypath%avrdude.conf" -v -v -v -v -patmega2560 -cstk500v1 -P\\.\COM6 -b57600 -D -V -Uflash:w:C:\Users\Nate\AppData\Local\Temp\build2226663903393793181.tmp\miniE_cineMoco.cpp.hex:i 


REM magic
"%mydude%" -C"%myconf%" -v -v -v -v -patmega2560 -cstk500v1 -P\\.\%X% -b57600 -D -V -Uflash:w:"%myhex%":i 

:"C:\Program Files (x86)\Arduino\Arduino ERW 1.0.5\hardware\tools\avr\bin\avrdude" -C%myconf% -v -v -v -v -patmega2560 -cstk500v1 -P\\.\COM6 -b57600 -D -V -Uflash:w:%myhex%:i 

REM ===================================================================
>>>>>>> a85b12033dddd7d806ef76a835015f07ffa42bc5
