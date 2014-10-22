Set objShell = CreateObject("Wscript.Shell")

strPath = Wscript.ScriptFullName

Set objFSO = CreateObject("Scripting.FileSystemObject")

Set objFile = objFSO.GetFile(strPath)
strFolder = objFSO.GetParentFolderName(objFile) 

strHome = objShell.ExpandEnvironmentStrings("%USERPROFILE%")

'WScript.Echo strFolder

'WScript.Echo strHome

objFSO.CopyFolder strFolder&"\..\hardware", strHome&"\My Documents\Arduino\hardware"

objFSO.CopyFolder strFolder&"\..\glcd", strHome&"\My Documents\Arduino\libraries\glcd"

objFSO.CopyFolder strFolder&"\..\MoCoM", strHome&"\My Documents\Arduino\libraries\MoCoM"

strPath = "explorer.exe /e," & strHome&"\My Documents\Arduino"

'objShell.Run strPath



'objShell.Run "C:\Program Files (x86)\Arduino\Arduino ERW 1.0.5\hardware\tools\avr\bin\avrdude"
' objShell.run "strFolder&'\avrdude.exe'"

'' -C strFolder&'\avrdude.conf' -v -p m2560 -c stk500v1 -P COM5 -b 57600 -D -U flash:w:strFolder&'\Jul_21-v2_2-miniE_cineMoco.cpp.hex'"



wscript.echo "Hardware and libraries installed successfully."