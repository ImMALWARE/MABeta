Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Windows.Forms

if ($PSUICulture -eq "ru-RU") {
    $strings = @("Активация Visual Studio 2022 Professional/Enterprise", "не найден!", "Активировано!")
} else {
    $strings = @("Activating Visual Studio 2022 Professional/Enterprise", "not found!", "Activated!")
}

if (test-path "$env:ProgramFiles\Microsoft Visual Studio\2022\Enterprise\Common7\IDE\VsRegEdit.exe") {
    $path = "$env:ProgramFiles\Microsoft Visual Studio\2022\Enterprise\Common7\IDE\"
    $MPC = "09660"
    $key = "VHF9H-NXBBB-638P6-6JHCY-88JWH"
}
elseIf (test-path "$env:ProgramFiles\Microsoft Visual Studio\2022\Professional\Common7\IDE\VsRegEdit.exe") {
    $path = "$env:ProgramFiles\Microsoft Visual Studio\2022\Professional\Common7\IDE\"
    $MPC = "09662"
    $key = "TD244-P4NB7-YQ6XK-Y8MMM-YWV2J"
}
else { 
    [System.Windows.Forms.MessageBox]::Show("Visual Studio 2022 Professional/Enterprise " + $strings[1], "MalwActivator", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    exit
}

Write-Output $strings[0]
taskkill.exe /f /im devenv.exe
Set-Location $path
.\StorePID.exe "$key" "$MPC"
Write-Host $strings[2]
pause