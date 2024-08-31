Add-Type -AssemblyName System.Windows.Forms
if (-not (test-path "$env:ProgramFiles\Microsoft Office 15\root\vfs\System")){ 
    [System.Windows.Forms.MessageBox]::Show("Office 2013 (64-bit) not found! Go to Download tab, download and install it there.","MalwActivator",[System.Windows.Forms.MessageBoxButtons]::OK,[System.Windows.Forms.MessageBoxIcon]::Error)
    exit
}
cmd /c mklink "$env:ProgramFiles\Microsoft Office 15\root\vfs\System\sppcs.dll" "$env:SystemRoot\System32\sppc.dll"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$wc = New-Object net.webclient
$wc.DownloadFile('https://archive.org/download/asdcorpohook/sppc.dll', "$env:ProgramFiles\Microsoft Office 15\root\vfs\System\sppc.dll")
cd "$env:ProgramFiles\Microsoft Office\Office15"
cscript //nologo ospp.vbs /inpkey:MBQBN-CQPT6-PXRMC-TYJFR-3C8MY
pause