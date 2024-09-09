Add-Type -AssemblyName System.Windows.Forms

if ($PSUICulture -eq "ru-RU") {
    $strings = @("Активация Office 2013 через подмену файла sppcs.dll", 'не найден! Загрузите его на вкладке "Скачивание"!')
} else {
    $strings = @("Activating Office 2013 via replacing sppcs.dll file", 'not found! Download it in "Downloads" tab!')
}
if (-not (test-path "$env:ProgramFiles\Microsoft Office 15\root\vfs\System")){ 
    [System.Windows.Forms.MessageBox]::Show("Office 2013 " + $strings[1], "MalwActivator", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    exit
}

cmd /c mklink "$env:ProgramFiles\Microsoft Office 15\root\vfs\System\sppcs.dll" "$env:SystemRoot\System32\sppc.dll"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$wc = New-Object net.webclient
$wc.DownloadFile('https://archive.org/download/asdcorpohook/sppc.dll', "$env:ProgramFiles\Microsoft Office 15\root\vfs\System\sppc.dll")
Set-Location "$env:ProgramFiles\Microsoft Office\Office15"
cscript //nologo ospp.vbs /inpkey:MBQBN-CQPT6-PXRMC-TYJFR-3C8MY
pause