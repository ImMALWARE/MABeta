param([string]$Product)
Add-Type -AssemblyName System.Windows.Forms

if ($PSUICulture -eq "ru-RU") {
    $strings = @("Активация Office $Product через подмену файла sppcs.dll", 'не найден! Загрузите его на вкладке "Скачивание"!')
} else {
    $strings = @("Activating Office $Product via replacing sppcs.dll file", 'not found! Download it in "Downloads" tab!')
}
if (-not (test-path "$env:ProgramFiles\Microsoft Office\root\vfs\System")){ 
    [System.Windows.Forms.MessageBox]::Show("Office $Product " + $strings[1], "MalwActivator", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    exit
}

Write-Output $strings[0]
$lics = @{"365" = "O365ProPlusR"; "2021" = "ProPlus2021VL_KMS"; "2019" = "ProPlus2019VL"; "2016" = "proplusvl_kms"}
$keys = @{"365" = "2N382-D6PKK-QTX4D-2JJYK-M96P2"; "2021" = "FXYTK-NJJ8C-GB6DW-3DYQT-6F7TH"; "2019" = "NMMKJ-6RK4F-KMJVX-8D9MJ-6MWKP"; "2016" = "XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99"}

cmd /c mklink "$env:ProgramFiles\Microsoft Office\root\vfs\System\sppcs.dll" "$env:SystemRoot\System32\sppc.dll"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$wc = New-Object net.webclient
$wc.DownloadFile('https://archive.org/download/asdcorpohook/sppc.dll', "$env:ProgramFiles\Microsoft Office\root\vfs\System\sppc.dll")
Set-Location "$env:ProgramFiles\Microsoft Office\Office16"
Get-ChildItem -Path "..\root\Licenses16\" -Filter "$($lics[$Product])*.xrm-ms" | ForEach-Object { cscript ospp.vbs /inslic:"$($_.FullName)" }
cscript //nologo ospp.vbs /inpkey:$($keys[$Product])
reg add HKCU\Software\Microsoft\Office\16.0\Common\Licensing\Resiliency /v "TimeOfLastHeartbeatFailure" /t REG_SZ /d "2040-01-01T00:00:00Z" /f
pause