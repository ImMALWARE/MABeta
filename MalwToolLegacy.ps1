# https://github.com/ImMALWARE/MalwTool
$n = [Environment]::NewLine
$tls = "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12"
$host.ui.RawUI.WindowTitle = 'MalwTool Legacy'
if ($PSUICulture -eq "ru-RU") {
    $strings = @("Введите цифру нужного пункта и нажмите Enter:$n 1. Активировать Windows 8/8.1$n 2. Активировать Office 2016$n 3. Активировать Office 2013$n 4. Выход", "%p% не найден!")
} else {
    $strings = @("Enter the number of what you need and press Enter:$n 1. Activate Windows 8/8.1$n 2. Activate Office 2016$n 3. Activate Office 2013$n 4. Exit", "%p% not found!")
}

while ($true) {
    Write-Host $strings[0]
    $choice = Read-Host

    switch ($choice) {
        "1" {
            Start-Process powershell -ArgumentList "$tls; irm https://raw.githubusercontent.com/ImMALWARE/MABeta/main/Activators/KMS.ps1 | iex" -Verb RunAs
        } "2" {
            # if (test-path "")
            Start-Process powershell -ArgumentList "`$Product = 'Office2016'; $tls; irm https://raw.githubusercontent.com/ImMALWARE/MABeta/main/Activators/Osppcs.ps1 | iex" -Verb RunAs
        } "3" {
            if (test-path "$env:ProgramFiles\Microsoft Office\Office15") {
                Start-Process powershell -ArgumentList "$tls; irm https://raw.githubusercontent.com/ImMALWARE/MABeta/main/Activators/Osppcs2013.ps1 | iex" -Verb RunAs
            } else {
                Write-Host $strings[1].Replace('%p%', 'Office 2016')
            }
        } "4" {
            exit
        } default {
            continue
        }
    }
}