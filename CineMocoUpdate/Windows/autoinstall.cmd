set mypath=%~dp0

:"C:\Program Files (x86)\Arduino\Arduino ERW 1.0.5\hardware/tools/avr/bin/avrdude" -C"C:\Program Files (x86)\Arduino\Arduino ERW 1.0.5\hardware/tools/avr/etc/avrdude.conf" -v -v -v -v -patmega2560 -cstk500v1 -P\\.\COM6 -b57600 -D -V -Uflash:w:C:\Users\Nate\AppData\Local\Temp\build2226663903393793181.tmp\miniE_cineMoco.cpp.hex:i 

rem echo "%mypath%avrdude.exe"

:echo "%mypath%avrdude.exe" -C"%mypath%avrdude.conf" -v -v -v -v -patmega2560 -cstk500v1 -P\\.\COM6 -b57600 -D -V -Uflash:w:C:\Users\Nate\AppData\Local\Temp\build2226663903393793181.tmp\miniE_cineMoco.cpp.hex:i 

set myconf=%mypath%avrdude.conf

set myhex=%mypath%v22.hex
echo %myhex%

set mydude=%mypath%\bin\avrdude


cscript %mypath%myvbscript.vbs

set cmd="chgport"

FOR /F %%i IN (' %cmd% ') DO SET X=%%i

echo %X%

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
