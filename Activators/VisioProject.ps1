param([string]$Product)
Add-Type -AssemblyName System.Windows.Forms

if ($PSUICulture -eq "ru-RU") {
    $strings = @("Активация $Product 2021/2019/2016 через KMS", "не найден!")
} else {
    $strings = @("Activating $Product 2021/2019/2016 via KMS", "not found!")
}

if (test-path "$env:ProgramFiles\Microsoft Office\Office16\ospp.vbs"){ 
    $path = "$env:ProgramFiles\Microsoft Office\Office16\"
}
elseIf (test-path "$(env:ProgramFiles(x86))\Microsoft Office\Office16\ospp.vbs") {
    $path = "$(env:ProgramFiles(x86))\Microsoft Office\Office16\"
}
else { 
    [System.Windows.Forms.MessageBox]::Show("Visio 2021/2019/2016 " + $strings[1], "MalwActivator", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    exit
}

Write-Output $strings[0]
Set-Location $path
& "$env:SystemRoot\\System32\\cscript.exe" //nologo ospp.vbs /inslic:"..\root\Licenses16\pkeyconfig-office.xrm-ms" > $null
Get-ChildItem -Path "..\root\Licenses16\" -Filter "client-issuance*.xrm-ms", "$($Product.ToLower())provl_kms*.xrm-ms", "$($Product.ToLower())pro2021vl_kms*.xrm-ms" | ForEach-Object { & "$env:SystemRoot\\System32\\cscript.exe" //nologo ospp.vbs /inslic:"$($_.FullName)" > $null }
& "$env:SystemRoot\\System32\\cscript.exe" //nologo ospp.vbs /inpkey:$(@{"Visio" = "KNH8D-FGHT4-T8RK3-CTDYJ-K2HT4"; "Project" = "FTNWT-C6WBT-8HMGF-K9PRX-QV9H8"}[$Product]) > $null
& "$env:SystemRoot\\System32\\cscript.exe" //nologo ospp.vbs /sethst:kms.loli.best > $null
& "$env:SystemRoot\\System32\\cscript.exe" //nologo ospp.vbs /setprt:1688 > $null
& "$env:SystemRoot\\System32\\cscript.exe" //nologo ospp.vbs /act
pause