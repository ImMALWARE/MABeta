# https://github.com/ImMALWARE/MalwTool/
# Made by MALWARE (https://malw.ru/pages/contacts)
# The variables are named this way because I tried to save every byte so that the program doesn't take a long time to open (download).
# Yes, this is a terrible way, but what else can be cut here?
Add-Type -AssemblyName System.Windows.Forms
Add-Type -Name Window -Namespace Console -MemberDefinition '[DllImport("Kernel32.dll")]public static extern IntPtr GetConsoleWindow();[DllImport("user32.dll")]public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);'
[void][Console.Window]::ShowWindow([Console.Window]::GetConsoleWindow(), 0)
[System.Windows.Forms.Application]::EnableVisualStyles()

$form = New-Object System.Windows.Forms.Form -Property @{
    StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
    FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
    MaximizeBox = $false
    Text = "MalwTool"
    ClientSize = [System.Drawing.Size]::new(627, 234)
    Font = [System.Drawing.Font]::new("Segoe UI", 8.5)
}

$tabs = New-Object System.Windows.Forms.TabControl -Property @{
    Dock = [System.Windows.Forms.DockStyle]::Fill
    Location = [System.Drawing.Point]::new(0, 0)
    Name = "Tabs"
    SelectedIndex = 0
    Size = [System.Drawing.Size]::new(627, 234)
    SizeMode = [System.Windows.Forms.TabSizeMode]::FillToRight
    TabIndex = 0
}

$ActT = New-Object System.Windows.Forms.TabPage -Property @{
    Location = [System.Drawing.Point]::new(4, 24)
    Name = "ActT"
    Padding = [System.Windows.Forms.Padding]::new(3)
    Size = [System.Drawing.Size]::new(619, 206)
    TabIndex = 0
    Text = "Активация"
    UseVisualStyleBackColor = $true
}

$DlTab = New-Object System.Windows.Forms.TabPage -Property @{
    Location = [System.Drawing.Point]::new(4, 24)
    Name = "DownloadsTab"
    Padding = [System.Windows.Forms.Padding]::new(3)
    Size = [System.Drawing.Size]::new(619, 206)
    TabIndex = 4
    Text = "Скачивание"
    UseVisualStyleBackColor = $true
}

$functionsTab = New-Object System.Windows.Forms.TabPage -Property @{
    Location = [System.Drawing.Point]::new(4, 24)
    Name = "FunctionsTab"
    Size = [System.Drawing.Size]::new(619, 206)
    TabIndex = 2
    Text = "Другие функции"
    UseVisualStyleBackColor = $true
}

$problemsTab = New-Object System.Windows.Forms.TabPage -Property @{
    Location = [System.Drawing.Point]::new(4, 24)
    Name = "ProblemsTab"
    Padding = [System.Windows.Forms.Padding]::new(3)
    Size = [System.Drawing.Size]::new(619, 206)
    TabIndex = 1
    Text = "Решение проблем"
    UseVisualStyleBackColor = $true
}

$infoTab = New-Object System.Windows.Forms.TabPage -Property @{
    Location = [System.Drawing.Point]::new(4, 24)
    Name = "InfoTab"
    Size = [System.Drawing.Size]::new(619, 206)
    TabIndex = 3
    Text = "Информация"
    UseVisualStyleBackColor = $true
}

$tabs.TabPages.Add($ActT)
$tabs.TabPages.Add($DlTab)
$tabs.TabPages.Add($functionsTab)
$tabs.TabPages.Add($problemsTab)
$tabs.TabPages.Add($infoTab)

$tooltip = New-Object System.Windows.Forms.ToolTip -Property @{
    AutoPopDelay = 5000
    InitialDelay = 5
    ReshowDelay = 100
    ShowAlways = $true
}

# Activation tab

$W10 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Checked = $true
    Location = [System.Drawing.Point]::new(6, 6)
    Name = "W10"
    Size = [System.Drawing.Size]::new(143, 19)
    TabIndex = 1
    TabStop = $true
    Text = "Windows 10/11 (HWID)"
    UseVisualStyleBackColor = $true
}

$W8 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(6, 31)
    Name = "W8"
    Size = [System.Drawing.Size]::new(130, 19)
    TabIndex = 2
    Text = "Windows 8/8.1 (KMS)"
    UseVisualStyleBackColor = $true
}

$WS = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(6, 56)
    Name = "WS"
    Size = [System.Drawing.Size]::new(193, 19)
    TabIndex = 5
    Text = "Windows Server 2022/2019/2016"
    UseVisualStyleBackColor = $true
}

$V = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(6, 106)
    Name = "V"
    Size = [System.Drawing.Size]::new(54, 19)
    TabIndex = 18
    Text = "Visio 2016/2019/2021"
    UseVisualStyleBackColor = $true
}

$P = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(6, 131)
    Name = "P"
    Size = [System.Drawing.Size]::new(64, 19)
    TabIndex = 19
    Text = "Project 2016/2019/2021"
    UseVisualStyleBackColor = $true
}

$O65 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(214, 6)
    Name = "O65"
    Size = [System.Drawing.Size]::new(79, 19)
    TabIndex = 15
    Text = "Office 365"
    UseVisualStyleBackColor = $true
}

$O24 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(214, 31)
    Name = "O21"
    Size = [System.Drawing.Size]::new(83, 19)
    TabIndex = 4
    Text = "Office 2024"
    UseVisualStyleBackColor = $true
}

$O21 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(214, 56)
    Name = "O21"
    Size = [System.Drawing.Size]::new(83, 19)
    TabIndex = 4
    Text = "Office 2021"
    UseVisualStyleBackColor = $true
}

$O19 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(214, 81)
    Name = "O19"
    Size = [System.Drawing.Size]::new(84, 19)
    TabIndex = 17
    Text = "Office 2019"
    UseVisualStyleBackColor = $true
}

$O16 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(214, 106)
    Name = "O16"
    Size = [System.Drawing.Size]::new(84, 19)
    TabIndex = 16
    Text = "Office 2016"
    UseVisualStyleBackColor = $true
}

$O13 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(214, 131)
    Name = "O13"
    Size = [System.Drawing.Size]::new(83, 19)
    TabIndex = 6
    Text = "Office 2013"
    UseVisualStyleBackColor = $true
}

$PL = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(373, 6)
    Name = "PL"
    Size = [System.Drawing.Size]::new(201, 19)
    TabIndex = 8
    Text = "Prism Launcher"
    UseVisualStyleBackColor = $true
}

$TL = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(373, 31)
    Name = "TL"
    Size = [System.Drawing.Size]::new(81, 19)
    TabIndex = 9
    Text = "TL"
    UseVisualStyleBackColor = $true
}

$MX = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(373, 56)
    Name = "MX"
    Size = [System.Drawing.Size]::new(88, 19)
    TabIndex = 11
    Text = "MobaXterm"
    UseVisualStyleBackColor = $true
}

$C = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(373, 81)
    Name = "C"
    Size = [System.Drawing.Size]::new(64, 19)
    TabIndex = 12
    Text = "Charles"
    UseVisualStyleBackColor = $true
}

$VS = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(373, 106)
    Name = "VS"
    Size = [System.Drawing.Size]::new(244, 19)
    TabIndex = 13
    Text = "Visual Studio 2022 Professional/Enterprise"
    UseVisualStyleBackColor = $true
}

$Act = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(515, 169)
    Name = "Act"
    Size = [System.Drawing.Size]::new(96, 23)
    TabIndex = 14
    Text = "Активировать!"
    UseVisualStyleBackColor = $true
}

$com = @("Invoke-RestMethod https://raw.githubusercontent.com/ImMALWARE/MABeta/main/Activators", " | Invoke-Expression", "$env:ProgramFiles\Microsoft Office\root\vfs\System", "$env:ProgramFiles\Microsoft Office 15\root\vfs\System")
$Act.Add_Click({
    $prod = ($ActT.Controls | Where-Object { $_.GetType() -eq [System.Windows.Forms.RadioButton] -and $_.Checked })[0].Name
    Write-Host $prod
    $activators = @{"W10" = "HWID.ps1"; "W8" = "KMS.ps1"; "WS" = "ServerKMS.ps1"; "V" = "VisioProject.ps1"; "P" = "VisioProject.ps1"; "VS" = "VS.ps1"}
    switch ($prod) {
        "PL" {
            if (Test-Path "$env:APPDATA\PrismLauncher") {
                '{"accounts": [{"entitlement": {"canPlayMinecraft": true,"ownsMinecraft": true},"type": "MSA"}],"formatVersion": 3}' | Out-File "$env:APPDATA\PrismLauncher\accounts.json" -Encoding ASCII
                [System.Windows.Forms.MessageBox]::Show("Автономный аккаунт в Prism Launcher разблокирован!", "MalwTool", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
            } else {
                [System.Windows.Forms.MessageBox]::Show("Prism Launcher не найден!", "MalwTool", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
            }
        }
        "TL" {
            if (Test-Path "$env:appdata\.minecraft\TlauncherProfiles.json") {
                $file = Get-Content -Path "$env:appdata\.minecraft\TlauncherProfiles.json" -Raw
                if ($file -match '"premiumAccount": false') {
                    $file -replace '"premiumAccount": false', '"premiumAccount": true' | Set-Content -Path "$env:appdata\.minecraft\TlauncherProfiles.json"
                    [System.Windows.Forms.MessageBox]::Show("Premium аккаунт в TL активирован! Теперь зайдите в настройки TL для отключения рекламных серверов!", "MalwTool", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }
                else {
                    [System.Windows.Forms.MessageBox]::Show("Ни один аккаунт не доблавен в TL", "MalwTool", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error) 
                }
            }
            else {
                [System.Windows.Forms.MessageBox]::Show("TL не найден!", "MalwTool", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
            }
        }
        "MX" {
            if (Test-Path "$(env:ProgramFiles(x86))\Mobatek\MobaXterm\version.dat") {
                Start-Process powershell -ArgumentList "Invoke-RestMethod https://raw.githubusercontent.com/ImMALWARE/MABeta/main/Activators/MXT.ps1 | Invoke-Expression" -Verb RunAs
            } else {
                [System.Windows.Forms.MessageBox]::Show("MobaXterm не найден!", "MalwTool", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
            }
        }
        "C" {
            Start-Process "https://gist.github.com/yutao8/e8c685ebadc9c4b2c84c76f9bff1f7a8"
        }
        default {
            if ($prod.StartsWith("O")) {
                if (-not (test-path $com[2 + ($prod -eq "O13")])) {
                    [System.Windows.Forms.MessageBox]::Show("Office не найден!", "MalwTool", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
                    break
                }
            }
            Start-Process powershell -ArgumentList "$($com[0])/$($activators[$prod])$($com[1]) -Product $prod" -Verb RunAs
        }
    }
})

$ActT.Controls.Add($W10)
$ActT.Controls.Add($W8)
$ActT.Controls.Add($WS)
$ActT.Controls.Add($V)
$ActT.Controls.Add($P)
$ActT.Controls.Add($O65)
$ActT.Controls.Add($O24)
$ActT.Controls.Add($O21)
$ActT.Controls.Add($O19)
$ActT.Controls.Add($O16)
$ActT.Controls.Add($O13)
$ActT.Controls.Add($PL)
$ActT.Controls.Add($TL)
$ActT.Controls.Add($MX)
$ActT.Controls.Add($C)
$ActT.Controls.Add($VS)
$ActT.Controls.Add($Act)

# Downloads tab

$Dl10 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 6)
    Name = "W10"
    Size = [System.Drawing.Size]::new(83, 23)
    Text = "Windows 10"
    UseVisualStyleBackColor = $true
}

$Dl11 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 64)
    Name = "W11"
    Size = [System.Drawing.Size]::new(83, 23)
    Text = "Windows 11"
    UseVisualStyleBackColor = $true
}

$Dl10Ltsc = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 35)
    Name = "DlWinLtsc"
    Size = [System.Drawing.Size]::new(197, 23)
    Text = "Win 10 LTSC 2021 (рекомендуется)"
    UseVisualStyleBackColor = $true
}

$Dl11Ltsc = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 93)
    Name = "Dl11Ltsc"
    Size = [System.Drawing.Size]::new(136, 23)
    Text = "Windows 11 LTSC 2024"
    UseVisualStyleBackColor = $true
}

$Dl2025 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(215, 6)
    Name = "Dl2025"
    Size = [System.Drawing.Size]::new(136, 23)
    Text = "Windows Server 2025"
    UseVisualStyleBackColor = $true
}

$Dl2022 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(215, 35)
    Name = "Dl2022"
    Size = [System.Drawing.Size]::new(136, 23)
    Text = "Windows Server 2022"
    UseVisualStyleBackColor = $true
}

$Dl2019 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(215, 64)
    Name = "Dl2019"
    Size = [System.Drawing.Size]::new(136, 23)
    Text = "Windows Server 2019"
    UseVisualStyleBackColor = $true
}

$Dl2016 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(215, 93)
    Name = "Dl2016"
    Size = [System.Drawing.Size]::new(136, 23)
    Text = "Windows Server 2016"
    UseVisualStyleBackColor = $true
}

$Dl2012 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(215, 121)
    Name = "Dl2012"
    Size = [System.Drawing.Size]::new(136, 23)
    Text = "Windows Server 2012"
    UseVisualStyleBackColor = $true
}

$Dl81 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 122)
    Name = "Dl81"
    Size = [System.Drawing.Size]::new(83, 23)
    Text = "Windows 8.1"
    UseVisualStyleBackColor = $true
}

$D24 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(437, 7)
    Name = "D24"
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "Online"
    UseVisualStyleBackColor = $true
}

$I24 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(522, 7)
    Name = "I24"
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "ISO"
    UseVisualStyleBackColor = $true
}

$D21 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(437, 36)
    Name = "D21"
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "Online"
    UseVisualStyleBackColor = $true
}

$I21 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(522, 36)
    Name = "I21"
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "ISO"
    UseVisualStyleBackColor = $true
}

$D19 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(437, 65)
    Name = "D19"
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "Online"
    UseVisualStyleBackColor = $true
}

$I19 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(522, 64)
    Name = "I19"
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "ISO"
    UseVisualStyleBackColor = $true
}

$D16 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(437, 93)
    Name = "D16"
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "Online"
    UseVisualStyleBackColor = $true
}

$I16 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(522, 93)
    Name = "I16"
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "ISO"
    UseVisualStyleBackColor = $true
}

$D13 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(437, 122)
    Name = "D13"
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "Online"
    UseVisualStyleBackColor = $true
}

$I13 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(522, 121)
    Name = "I13"
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "ISO"
    UseVisualStyleBackColor = $true
}













$buttonasda = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(522, 122)
    Name = "buttonasda"
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "ISO"
    UseVisualStyleBackColor = $true
}

$label2 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(362, 11)
    Name = "label2"
    Size = [System.Drawing.Size]::new(70, 15)
    Text = "Office 2024:"
}

$label3 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(362, 39)
    Name = "label3"
    Size = [System.Drawing.Size]::new(70, 15)
    Text = "Office 2021:"
}

$label4 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(362, 68)
    Name = "label4"
    Size = [System.Drawing.Size]::new(70, 15)
    Text = "Office 2019:"
}

$label5 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(362, 97)
    Name = "label5"
    Size = [System.Drawing.Size]::new(70, 15)
    Text = "Office 2016:"
}

$labelff = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(362, 126)
    Name = "labelff"
    Size = [System.Drawing.Size]::new(70, 15)
    Text = "Office 2013:"
}

$newButton = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 151)  # Расположить кнопку под кнопкой $button4
    Name = "NewButton"
    Size = [System.Drawing.Size]::new(312, 23)  # Размер такой же, как у $button4
    Text = "Rufus — инструмент для записи ISO образов на флешку"
    UseVisualStyleBackColor = $true
}

$DlTab.Controls.Add($Dl10)
$DlTab.Controls.Add($Dl11)
$DlTab.Controls.Add($Dl10Ltsc)
$DlTab.Controls.Add($Dl11Ltsc)
$DlTab.Controls.Add($Dl2025)
$DlTab.Controls.Add($Dl2022)
$DlTab.Controls.Add($Dl2019)
$DlTab.Controls.Add($Dl2016)
$DlTab.Controls.Add($Dl2012)
$DlTab.Controls.Add($Dl81)
$DlTab.Controls.Add($D24)
$DlTab.Controls.Add($I24)
$DlTab.Controls.Add($D21)
$DlTab.Controls.Add($I21)
$DlTab.Controls.Add($D19)
$DlTab.Controls.Add($I19)
$DlTab.Controls.Add($D16)
$DlTab.Controls.Add($I16)
$DlTab.Controls.Add($D13)
$DlTab.Controls.Add($I13)
$DlTab.Controls.Add($buttonasda)
$DlTab.Controls.Add($label2)
$DlTab.Controls.Add($label3)
$DlTab.Controls.Add($label4)
$DlTab.Controls.Add($label5)
$DlTab.Controls.Add($labelff)
$DlTab.Controls.Add($newButton)

$Dl10.Add_Click({
    try {
        $products = Invoke-RestMethod -Uri https://raw.githubusercontent.com/ImMALWARE/MABeta/main/windl.json -Method Get
        Start-Process (Invoke-RestMethod -Uri "https://api.gravesoft.dev/msdl/proxy?product_id=$($products."10"[0])&sku_id=$($products."10"[1])" -Method Get).ProductDownloadOptions[0].Uri
    } catch {
        $result = [System.Windows.Forms.MessageBox]::Show("Не удалось получить ссылку для загрузки! Попробовать снова?", "MalwTool;", [System.Windows.Forms.MessageBoxButtons]::YesNo, [System.Windows.Forms.MessageBoxIcon]::Warning)
        if ($result -eq [System.Windows.Forms.DialogResult]::Yes) {
            $Dl10.PerformClick()
        }
    }
})

$Dl11.Add_Click({
    try {
        $products = Invoke-RestMethod -Uri https://raw.githubusercontent.com/ImMALWARE/MABeta/main/windl.json -Method Get
        Start-Process (Invoke-RestMethod -Uri "https://api.gravesoft.dev/msdl/proxy?product_id=$($products."11"[0])&sku_id=$($products."11"[1])" -Method Get).ProductDownloadOptions[0].Uri
    } catch {
        $result = [System.Windows.Forms.MessageBox]::Show("Не удалось получить ссылку для загрузки! Попробовать снова?", "MalwTool;", [System.Windows.Forms.MessageBoxButtons]::YesNo, [System.Windows.Forms.MessageBoxIcon]::Warning)
        if ($result -eq [System.Windows.Forms.DialogResult]::Yes) {
            $Dl11.PerformClick()
        }
    }
})

$Dl10Ltsc.Add_Click({
    Start-Process "https://drive.massgrave.dev/ru-ru_windows_10_enterprise_ltsc_2021_x64_dvd_5044a1e7.iso"
})

$Dl11Ltsc.Add_Click({
    Start-Process "https://drive.massgrave.dev/ru-ru_windows_11_enterprise_ltsc_2024_x64_dvd_f9af5773.iso"
})

$Dl2025.Add_Click({
    Start-Process "https://oemsoc.download.prss.microsoft.com/dbazure/X23-81967_26100.1742.240906-0331.ge_release_svc_refresh_SERVER_OEMRET_x64FRE_ru-ru.iso_0400d135-3d94-49a2-8627-8f1a8cb316bf?t=27afd6c5-3c63-4984-8139-b9c239276cb4&P1=102817441539&P2=601&P3=2&P4=K6P6PaBziMqVvDg7AgCqTBprjEMuo%2bmjluaix%2b9TaUldONUCc3PtGs30Rvmn3IKMuSZ7kcmGydK%2bmz38quTSTCyGmjPdKm6bLG%2f2m13pTKsdD1zp%2flccTbTkwvIN%2fdhU8qzwet9V56is8W7o7IykKbczeFlJ1yQV7xq6OCpOzudqomW5fUsUO0%2fRx%2b78zkGgyrHlxIQlX9bAC5Fr069%2byhr5OiXWk9R%2fzEj93%2bEfBrZMTFz1M%2fzf6UKw6tYjOjdSJkNKk%2bhjnAyC%2bcqCj2OKrw6yhEJ6vtXbNJomDZzfUBqMM%2f1uoRabPzPv5Adp3XEJ5DIzdBU%2foyhPbj0qcCzfPg%3d%3d"
    [System.Windows.Forms.MessageBox]::Show("Скачанному файлу нужно будет дописать формат .iso!", "MalwTool", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
})

$Dl2022.Add_Click({
    Start-Process "https://drive.massgrave.dev/ru-ru_windows_server_2022_updated_nov_2024_x64_dvd_4e34897c.iso"
})

$Dl2019.Add_Click({
    Start-Process "https://drive.massgrave.dev/ru-ru_windows_server_2019_x64_dvd_e02b76ba.iso"
})

$Dl2016.Add_Click({
    Start-Process "https://drive.massgrave.dev/ru_windows_server_2016_vl_x64_dvd_11636694.iso"
})

$Dl2012.Add_Click({
    Start-Process "https://drive.massgrave.dev/ru_windows_server_2012_r2_vl_with_update_x64_dvd_6052827.iso"
})

$D24.Add_Click({
    Start-Process "https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=ProPlus2024Retail&platform=x64&language=ru-ru&version=O16GA"
    $result = [System.Windows.Forms.MessageBox]::Show('Для онлайн-установки нужно обойти гео-ограничения. Для этого: запустите exe-файл, дождитесь ошибки "Сбой установки", нажмите "Да" в этом окне. После этого перезапустите exe файл установщика!', "MalwTool;", [System.Windows.Forms.MessageBoxButtons]::YesNo, [System.Windows.Forms.MessageBoxIcon]::Information)
    if ($result -eq [System.Windows.Forms.DialogResult]::Yes) {
        Start-Process 
    }
    [System.Windows.Forms.MessageBox]::Show("Для установки нужно:" + [Environment]::NewLine + "1. Запустить exe-файл" + [Environment]::NewLine + '2. Дождаться ошибки "Сбой установки" и закрыть установщик' + [Environment]::NewLine + '3. Зайти на вкладку "Решение проблем" в активаторе и выбрать "Обойти гео-ограничения на Online-установку Office"' + [Environment]::NewLine + "4. Запустить установщик снова", "MalwTool", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
})

$I24.Add_Click({
    Start-Process "https://officecdn.microsoft.com/db/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/ru-ru/ProPlus2024Retail.img"
})

$D21.Add_Click({
    Start-Process "https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=ProPlus2021Retail&platform=x64&language=ru-ru&version=O16GA"
})





#########

$button20 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(6, 6)
    Name = "button20"
    Size = [System.Drawing.Size]::new(251, 23)
    TabIndex = 0
    Text = "Узнать пароли от сохранённых Wi-Fi сетей"
    UseVisualStyleBackColor = $true
}

$button21 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 35)
    Name = "button21"
    Size = [System.Drawing.Size]::new(113, 23)
    TabIndex = 1
    Text = "Установить winget"
    UseVisualStyleBackColor = $true
}

$button22 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(127, 35)
    Name = "button22"
    Size = [System.Drawing.Size]::new(160, 23)
    TabIndex = 2
    Text = "Установить Microsoft Store"
    UseVisualStyleBackColor = $true
}

$button23 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(263, 6)
    Name = "button23"
    Size = [System.Drawing.Size]::new(274, 23)
    TabIndex = 3
    Text = "Отображать расширения файлов в проводнике"
    UseVisualStyleBackColor = $true
}

$button24 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 64)
    Name = "button24"
    Size = [System.Drawing.Size]::new(208, 23)
    TabIndex = 4
    Text = "Резервное копирование драйверов"
    UseVisualStyleBackColor = $true
}

$button25 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(222, 64)
    Name = "button25"
    Size = [System.Drawing.Size]::new(165, 23)
    TabIndex = 5
    Text = "Восстановление драйверов"
    UseVisualStyleBackColor = $true
}

$button26 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 93)
    Name = "button26"
    Size = [System.Drawing.Size]::new(208, 23)
    TabIndex = 6
    Text = "Полностью удалить Microsoft Edge"
    UseVisualStyleBackColor = $true
}

$button27 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(222, 93)
    Name = "button27"
    Size = [System.Drawing.Size]::new(183, 23)
    TabIndex = 7
    Text = "Удалить шпионские exe-файлы"
    UseVisualStyleBackColor = $true
}

$button14 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(221, 8)
    Name = "button14"
    Size = [System.Drawing.Size]::new(176, 23)
    TabIndex = 1
    Text = "Инструмент удаления Office"
    UseVisualStyleBackColor = $true
}

$button15 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(247, 71)
    Name = "button15"
    Size = [System.Drawing.Size]::new(260, 23)
    TabIndex = 2
    Text = "Проверить системные файлы на целостность"
    UseVisualStyleBackColor = $true
}

$button16 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(48, 71)
    Name = "button16"
    Size = [System.Drawing.Size]::new(192, 23)
    TabIndex = 3
    Text = "Сброс KMS-активации Windows"
    UseVisualStyleBackColor = $true
}


$button19 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 165)
    Name = "button19"
    Size = [System.Drawing.Size]::new(154, 23)
    TabIndex = 8
    Text = "У меня другая проблема!"
    UseVisualStyleBackColor = $true
}

$button28 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 136)
    Name = "button28"
    Size = [System.Drawing.Size]::new(268, 23)
    TabIndex = 9
    Text = "Исправить открытие ссылок Telegram Desktop"
    UseVisualStyleBackColor = $true
}

# Загрузка и установка изображений в PictureBox
$pictureBox1 = New-Object System.Windows.Forms.PictureBox -Property @{
    Location = [System.Drawing.Point]::new(8, 8)
    Name = "pictureBox1"
    Size = [System.Drawing.Size]::new(34, 39)
    TabIndex = 6
    TabStop = $false
}

$request1 = [System.Net.WebRequest]::Create('https://i.imgur.com/8L2KS9a.png')
$image1 = [System.Drawing.Image]::FromStream($request1.GetResponse().GetResponseStream())
$pictureBox1.Image = $image1

$pictureBox2 = New-Object System.Windows.Forms.PictureBox -Property @{
    Location = [System.Drawing.Point]::new(8, 71)
    Name = "pictureBox2"
    Size = [System.Drawing.Size]::new(34, 39)
    TabIndex = 7
    TabStop = $false
}

$request2 = [System.Net.WebRequest]::Create('https://i.imgur.com/sYPcWTh.png')
$image2 = [System.Drawing.Image]::FromStream($request2.GetResponse().GetResponseStream())
$pictureBox2.Image = $image2

$label6 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(8, 5)
    Name = "label6"
    Size = [System.Drawing.Size]::new(102, 15)
    TabIndex = 1
    Text = "MalwTool 2.0"
}

# Создание кнопок
$button30 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(123, 23)
    Name = "button30"
    Size = [System.Drawing.Size]::new(109, 23)
    TabIndex = 2
    Text = "Тема на Lolzteam"
    UseVisualStyleBackColor = $true
}

$button31 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(238, 23)
    Name = "button31"
    Size = [System.Drawing.Size]::new(56, 23)
    TabIndex = 3
    Text = "GitHub"
    UseVisualStyleBackColor = $true
}

# Создание метки label7
$label7 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(8, 91)
    Name = "label7"
    Size = [System.Drawing.Size]::new(86, 15)
    TabIndex = 4
    Text = "Есть вопросы?"
}

# Создание остальных кнопок
$button32 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 109)
    Name = "button32"
    Size = [System.Drawing.Size]::new(124, 23)
    TabIndex = 5
    Text = "Написать в Telegram"
    UseVisualStyleBackColor = $true
}

$button33 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(138, 109)
    Name = "button33"
    Size = [System.Drawing.Size]::new(156, 23)
    TabIndex = 6
    Text = "Написать в теме Lolzteam"
    UseVisualStyleBackColor = $true
}

$button34 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(300, 109)
    Name = "button34"
    Size = [System.Drawing.Size]::new(156, 23)
    TabIndex = 7
    Text = "Написать в Issues GitHub"
    UseVisualStyleBackColor = $true
}

$button29 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 23)
    Name = "button29"
    Size = [System.Drawing.Size]::new(109, 23)
    TabIndex = 0
    Text = "Статья на Malw.ru"
    UseVisualStyleBackColor = $true
}

# Добавление новых радиокнопок на вкладку AT


# Добавление всех элементов на вкладку Info
$Infotab.Controls.Add($button34)
$Infotab.Controls.Add($button33)
$Infotab.Controls.Add($button32)
$Infotab.Controls.Add($button29)
$Infotab.Controls.Add($label7)
$Infotab.Controls.Add($button31)
$Infotab.Controls.Add($button30)
$Infotab.Controls.Add($label6)



# Добавление элементов на вкладку ProblemsTab
$ProblemsTab.Controls.Add($button28)
$ProblemsTab.Controls.Add($button19)
$ProblemsTab.Controls.Add($pictureBox2)
$ProblemsTab.Controls.Add($pictureBox1)
$ProblemsTab.Controls.Add($button16)
$ProblemsTab.Controls.Add($button15)
$ProblemsTab.Controls.Add($button14)


$FunctionsTab.Controls.Add($button27)
$FunctionsTab.Controls.Add($button26)
$FunctionsTab.Controls.Add($button25)
$FunctionsTab.Controls.Add($button24)
$FunctionsTab.Controls.Add($button23)
$FunctionsTab.Controls.Add($button22)
$FunctionsTab.Controls.Add($button21)
$FunctionsTab.Controls.Add($button20)

$tooltip.SetToolTip($W10, "Активация Windows 10 или 11 всех изданий (в том числе LTSC) по HWID")
$tooltip.SetToolTip($W8, "Активация Windows 8 или Windows 8.1 через KMS")
$tooltip.SetToolTip($O24, "Активация Office 2024 путём добавления файла sppc.dll" + [Environment]::NewLine + "И всё-таки, я бы порекомендовал выбрать Office 365." + [Environment]::NewLine + "Активация сработает и для Office 365, 2016, 2019, 2021. Office потом автоматически конвертируется в 2024.")
$tooltip.SetToolTip($O21, "Активация Office 2021 путём добавления файла sppc.dll" + [Environment]::NewLine + "Активация сработает и для Office 365, 2016, 2019, 2024. Office потом автоматически конвертируется в 2021.")
$tooltip.SetToolTip($WS, "Активация Windows Server 2022, Windows Server Standard, Windows Server Datacenter, 2019, 2016, 2012, 2012 R2, 1803, 1709")
$tooltip.SetToolTip($O13, "Активация Office 2013 с помощью добавления файла sppc.dll")
$tooltip.SetToolTip($O65, "Активация Office 365 путём добавления файла sppc.dll" + [Environment]::NewLine + "Office 365 — всегда самая актуальная версия Office, лучше выбрать этот вариант." + [Environment]::NewLine + "Активация сработает и для Office 2016, 2019, 2021. Office потом автоматически конвертируется в 365.")
$tooltip.SetToolTip($PL, "Разрешить создание автономного аккаунта Minecraft в Prism Launcher без добавления аккаунта Microsoft" + [Environment]::NewLine + "Не запускайте, если вы уже добавили аккаунт! Это действие удалит все аккаунты в лаунчере!")
$tooltip.SetToolTip($TL, 'Премиум-аккаунт в TL, вы сможете отключить добавление рекламных серверов в его настройках')
$tooltip.SetToolTip($MX, "Активировать MobaXterm")
$tooltip.SetToolTip($C, "Получить ключ активации Charles Proxy")
$tooltip.SetToolTip($VS, "Активировать Visual Studio 2022 Professional/Enterprise")
$tooltip.SetToolTip($O16, "Активация Office 2016 путём добавления файла sppc.dll" + [Environment]::NewLine + "2016 — уже давно устаревшая версия." + [Environment]::NewLine + "Активация сработает и для Office 365, 2019, 2021, 2024. Office потом автоматически конвертируется в 2016.")
$tooltip.SetToolTip($O19, "Активация Office 2019 путём добавления файла sppc.dll" + [Environment]::NewLine + "Активация сработает и для Office 365, 2016, 2021, 2024. Office потом автоматически конвертируется в 2019.")
$toolTip.SetToolTip($Dl10, "ISO образ Windows 10 22H2 с официального сайта Microsoft")
$toolTip.SetToolTip($Dl11, "ISO образ Windows 11 23H2 с официального сайта Microsoft")
$toolTip.SetToolTip($Dl10Ltsc, "ISO образ Windows 10 LTSC 2021")
$toolTip.SetToolTip($Dl11Ltsc, "ISO образ Windows 11 LTSC 2024")
$toolTip.SetToolTip($Dl2022, "ISO образ Windows Server 2025")
$toolTip.SetToolTip($Dl2022, "ISO образ Windows Server 2022")
$toolTip.SetToolTip($Dl2019, "ISO образ Windows Server 2019")
$toolTip.SetToolTip($Dl2016, "ISO образ Windows Server 2016")
$toolTip.SetToolTip($Dl2012, "ISO образ Windows Server 2012")
$toolTip.SetToolTip($Dl81, "ISO образ Windows 8.1 с официального сайта Microsoft")
$toolTip.SetToolTip($D24, "Онлайн-установщик Office с официального сайта Microsoft. Для установки нужно:" + [Environment]::NewLine + "1. Запустить exe-файл" + [Environment]::NewLine + '2. Дождаться ошибки "Сбой установки" и закрыть установщик' + [Environment]::NewLine + '3. Зайти на вкладку "Решение проблем" в активаторе и выбрать "Обойти гео-ограничения на Online-установку Office"' + [Environment]::NewLine + "4. Запустить установщик снова")
$toolTip.SetToolTip($I24, "ISO-образ Office с официального сайта Microsoft. Для установки:" + [Environment]::NewLine + "1. Откройте ISO-образ, он должен подключиться как отдельный диск (или распакуйте его куда-нибудь через 7-Zip)" + [Environment]::NewLine + "2. Запустите setup.exe и дождитесь установки" + [Environment]::NewLine + '3. Чтобы убрать этот "отдельный диск", нужно нажать на него правой кнопкой -> Извлечь.')
$toolTip.SetToolTip($D21, "Онлайн-установщик Office с официального сайта Microsoft. Для установки нужно:" + [Environment]::NewLine + "1. Запустить exe-файл" + [Environment]::NewLine + '2. Дождаться ошибки "Сбой установки" и закрыть установщик' + [Environment]::NewLine + '3. Зайти на вкладку "Решение проблем" в активаторе и выбрать "Обойти гео-ограничения на Online-установку Office"' + [Environment]::NewLine + "4. Запустить установщик снова")
$toolTip.SetToolTip($I21, "ISO-образ Office с официального сайта Microsoft. Для установки:" + [Environment]::NewLine + "1. Откройте ISO-образ, он должен подключиться как отдельный диск (или распакуйте его куда-нибудь через 7-Zip)" + [Environment]::NewLine + "2. Запустите setup.exe и дождитесь установки" + [Environment]::NewLine + '3. Чтобы убрать этот "отдельный диск", нужно нажать на него правой кнопкой -> Извлечь.')
$toolTip.SetToolTip($D19, "Онлайн-установщик Office с официального сайта Microsoft. Для установки нужно:" + [Environment]::NewLine + "1. Запустить exe-файл" + [Environment]::NewLine + '2. Дождаться ошибки "Сбой установки" и закрыть установщик' + [Environment]::NewLine + '3. Зайти на вкладку "Решение проблем" в активаторе и выбрать "Обойти гео-ограничения на Online-установку Office"' + [Environment]::NewLine + "4. Запустить установщик снова")
$toolTip.SetToolTip($I19, "ISO-образ Office с официального сайта Microsoft. Для установки:" + [Environment]::NewLine + "1. Откройте ISO-образ, он должен подключиться как отдельный диск (или распакуйте его куда-нибудь через 7-Zip)" + [Environment]::NewLine + "2. Запустите setup.exe и дождитесь установки" + [Environment]::NewLine + '3. Чтобы убрать этот "отдельный диск", нужно нажать на него правой кнопкой -> Извлечь.')
$toolTip.SetToolTip($D16, "Онлайн-установщик Office с официального сайта Microsoft. Для установки нужно:" + [Environment]::NewLine + "1. Запустить exe-файл" + [Environment]::NewLine + '2. Дождаться ошибки "Сбой установки" и закрыть установщик' + [Environment]::NewLine + '3. Зайти на вкладку "Решение проблем" в активаторе и выбрать "Обойти гео-ограничения на Online-установку Office"' + [Environment]::NewLine + "4. Запустить установщик снова")
$toolTip.SetToolTip($I16, "ISO-образ Office с официального сайта Microsoft. Для установки:" + [Environment]::NewLine + "1. Откройте ISO-образ, он должен подключиться как отдельный диск (или распакуйте его куда-нибудь через 7-Zip)" + [Environment]::NewLine + "2. Запустите setup.exe и дождитесь установки" + [Environment]::NewLine + '3. Чтобы убрать этот "отдельный диск", нужно нажать на него правой кнопкой -> Извлечь.')
$toolTip.SetToolTip($D13, "Не рекомендуется, устаревшая версия. Онлайн-установщик Office с официального сайта Microsoft. Для установки нужно:" + [Environment]::NewLine + "1. Запустить exe-файл" + [Environment]::NewLine + '2. Дождаться ошибки "Сбой установки" и закрыть установщик' + [Environment]::NewLine + '3. Зайти на вкладку "Решение проблем" в активаторе и выбрать "Обойти гео-ограничения на Online-установку Office"' + [Environment]::NewLine + "4. Запустить установщик снова")
$toolTip.SetToolTip($I13, "Не рекомендуется, устаревшая версия. ISO-образ Office с официального сайта Microsoft. Для установки:" + [Environment]::NewLine + "1. Откройте ISO-образ, он должен подключиться как отдельный диск (или распакуйте его куда-нибудь через 7-Zip)" + [Environment]::NewLine + "2. Запустите setup.exe и дождитесь установки" + [Environment]::NewLine + '3. Чтобы убрать этот "отдельный диск", нужно нажать на него правой кнопкой -> Извлечь.')

$tooltip.SetToolTip($button27, "Удалить CompatTelRunner.exe и wsqmcons.exe")
$tooltip.SetToolTip($button25, 'Перед переустановкой Windows лучше сделать резервную копию всех драйверов, чтобы потом не мучаться с ними после переустановки, а просто выбрать "Восстановление" здесь')
$tooltip.SetToolTip($button24, 'Перед переустановкой Windows лучше сделать резервную копию всех драйверов, чтобы потом не мучаться с ними после переустановки, а просто выбрать "Восстановление" здесь')
$tooltip.SetToolTip($button22, "Только для LTSC-версий Windows без установленного Microsoft Store!")
$tooltip.SetToolTip($button20, "Перед запуском убедитесь, что Wi-Fi сейчас включен")
$tooltip.SetToolTip($button15, "sfc /scannow и DISM /Online /Cleanup-Image /RestoreHealth")
$tooltip.SetToolTip($button28, "Если у вас не открываются ссылки вида tg:// в Telegram Desktop, нажмите эту кнопку, затем выберите путь до Telegram.exe")
$tooltip.SetToolTip($V, "Через KMS, будет активирован как Visio 2021 (более старые версии обновятся)")
$tooltip.SetToolTip($P, "Через KMS, будет активирован как Project 2021 (более старые версии обновятся)")
$tooltip.SetToolTip($button19, "Даже если проблема не связана с MalwTool, всё равно напишите")

$form.Controls.Add($tabs)
$form.ShowDialog()