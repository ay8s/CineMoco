set mypath=%~dp0

set myconf=%mypath%dude2.conf
echo %myconf%
:pause

set myhex=%mypath%ATmegaBOOT_168_mega2560_miniE2M.hex

set mydude=%mypath%bin/avrdude
echo %mypath%
:pause

"%mydude%" -C"%myconf%" -v -v -v -v -patmega2560 -cusbasp -Pusb -e -Ulock:w:0x3F:m -Uefuse:w:0xFD:m -Uhfuse:w:0xD8:m -Ulfuse:w:0xFF:m 

echo.
:pause

REM "%mydude%" -C"%myconf%" -v -v -v -v -patmega2560 -cusbasp -Pusb -Uflash:w:"%mypath%"ATmegaBOOT_168_mega2560_miniE2M.hex:i -Ulock:w:0x0F:m 

"%mydude%" -C"%myconf%" -v -v -v -v -patmega2560 -cusbasp -Pusb -Uflash:w:"%myhex%":i -Ulock:w:0x0F:m 
:pause

REM call "%mypath%"autoinstall.cmd
