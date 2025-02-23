# https://github.com/ImMALWARE/MalwTool
$n = [Environment]::NewLine
$tls = "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12"
$host.ui.RawUI.WindowTitle = 'MalwTool Legacy'
if ($PSUICulture -eq "ru-RU") {
    $string = "Введите цифру нужного пункта и нажмите Enter:$n 1. Активировать Windows 8/8.1$n 2. Активировать Office 2016$n 3. Активировать Office 2013$n 4. Выход"
} else {
    $string = "Enter the number of what you need and press Enter:$n 1. Activate Windows 8/8.1$n 2. Activate Office 2016$n 3. Activate Office 2013$n 4. Exit"
}

while ($true) {
    Write-Host $string
    $choice = Read-Host

    switch ($choice) {
        "1" {
            Start-Process powershell -ArgumentList "$tls; irm https://raw.githubusercontent.com/ImMALWARE/MABeta/main/Activators/KMS.ps1 | iex" -Verb RunAs
        } "2" {
            Start-Process powershell -ArgumentList "`$Product = 'Office2016'; $tls; irm https://raw.githubusercontent.com/ImMALWARE/MABeta/main/Activators/Osppcs.ps1 | iex" -Verb RunAs
        } "3" {
            Start-Process powershell -ArgumentList "$tls; irm https://raw.githubusercontent.com/ImMALWARE/MABeta/main/Activators/Osppcs2013.ps1 | iex" -Verb RunAs
        } "4" {
            exit
        } default {
            continue
        }
    }
}