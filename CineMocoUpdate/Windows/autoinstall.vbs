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

objShell.Run strPath

wscript.echo "Hardware and libraries installed successfully."