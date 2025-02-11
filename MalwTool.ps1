# https://github.com/ImMALWARE/MalwTool/
# Made by MALWARE (https://malw.ru/pages/contacts)
# The variables are named this way because I tried to save every byte so that the program doesn't take a long time to open (download).
# Yes, this is a terrible way, but what else can be cut here?
Add-Type -AssemblyName System.Windows.Forms
Add-Type -Name Window -Namespace Console -MemberDefinition '[DllImport("Kernel32.dll")]public static extern IntPtr GetConsoleWindow();[DllImport("user32.dll")]public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);'
[void][Console.Window]::ShowWindow([Console.Window]::GetConsoleWindow(), 0)
[System.Windows.Forms.Application]::EnableVisualStyles()

# TODO: обойти ограничения chatgpt, spotify итд
# нормально назвать переменные
# английский язык
# глобальное тестирование


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

@($ActT, $DlTab, $functionsTab, $problemsTab, $infoTab) | ForEach-Object { $tabs.TabPages.Add($_) }

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

@($W10, $W8, $WS, $V, $P, $O65, $O24, $O21, $O19, $O16, $O13, $PL, $TL, $MX, $C, $VS, $Act) | ForEach-Object { $ActT.Controls.Add($_) }

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



$l24 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(362, 11)
    Name = "l24"
    Size = [System.Drawing.Size]::new(70, 15)
    Text = "Office 2024:"
}

$l21 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(362, 39)
    Name = "l21"
    Size = [System.Drawing.Size]::new(70, 15)
    Text = "Office 2021:"
}

$l19 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(362, 68)
    Name = "l19"
    Size = [System.Drawing.Size]::new(70, 15)
    Text = "Office 2019:"
}

$l16 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(362, 97)
    Name = "l16"
    Size = [System.Drawing.Size]::new(70, 15)
    Text = "Office 2016:"
}

$l13 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(362, 126)
    Name = "l13"
    Size = [System.Drawing.Size]::new(70, 15)
    Text = "Office 2013:"
}

$rufus = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 151)
    Name = "rufus"
    Size = [System.Drawing.Size]::new(312, 23)
    Text = "Rufus — инструмент для записи ISO образов на флешку"
    UseVisualStyleBackColor = $true
}

@($Dl10, $Dl11, $Dl10Ltsc, $Dl11Ltsc, $Dl2025, $Dl2022, $Dl2019, $Dl2016, $Dl2012, $Dl81, $D24, $I24, $D21, $I21, $D19, $I19, $D16, $I16, $D13, $I13, $l24, $l21, $l19, $l16, $l13, $rufus) | ForEach-Object { $DlTab.Controls.Add($_) }

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
        Start-Process # TODO: обход!!!
    }
    [System.Windows.Forms.MessageBox]::Show("Для установки нужно:" + [Environment]::NewLine + "1. Запустить exe-файл" + [Environment]::NewLine + '2. Дождаться ошибки "Сбой установки" и закрыть установщик' + [Environment]::NewLine + '3. Зайти на вкладку "Решение проблем" в активаторе и выбрать "Обойти гео-ограничения на Online-установку Office"' + [Environment]::NewLine + "4. Запустить установщик снова", "MalwTool", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
})

$I24.Add_Click({
    Start-Process "https://officecdn.microsoft.com/db/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/ru-ru/ProPlus2024Retail.img"
})

$D21.Add_Click({
    Start-Process "https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=ProPlus2021Retail&platform=x64&language=ru-ru&version=O16GA"
    $result = [System.Windows.Forms.MessageBox]::Show('Для онлайн-установки нужно обойти гео-ограничения. Для этого: запустите exe-файл, дождитесь ошибки "Сбой установки", нажмите "Да" в этом окне. После этого перезапустите exe файл установщика!', "MalwTool;", [System.Windows.Forms.MessageBoxButtons]::YesNo, [System.Windows.Forms.MessageBoxIcon]::Information)
    if ($result -eq [System.Windows.Forms.DialogResult]::Yes) {
        Start-Process 
    }
    [System.Windows.Forms.MessageBox]::Show("Для установки нужно:" + [Environment]::NewLine + "1. Запустить exe-файл" + [Environment]::NewLine + '2. Дождаться ошибки "Сбой установки" и закрыть установщик' + [Environment]::NewLine + '3. Зайти на вкладку "Решение проблем" в активаторе и выбрать "Обойти гео-ограничения на Online-установку Office"' + [Environment]::NewLine + "4. Запустить установщик снова", "MalwTool", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
})

$I21.Add_Click({
    Start-Process "https://officecdn.microsoft.com/db/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/ru-ru/ProPlus2021Retail.img"
})

$D19.Add_Click({
    Start-Process "https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=ProPlus2019Retail&platform=x64&language=ru-ru&version=O16GA"
    $result = [System.Windows.Forms.MessageBox]::Show('Для онлайн-установки нужно обойти гео-ограничения. Для этого: запустите exe-файл, дождитесь ошибки "Сбой установки", нажмите "Да" в этом окне. После этого перезапустите exe файл установщика!', "MalwTool;", [System.Windows.Forms.MessageBoxButtons]::YesNo, [System.Windows.Forms.MessageBoxIcon]::Information)
    if ($result -eq [System.Windows.Forms.DialogResult]::Yes) {
        Start-Process 
    }
    [System.Windows.Forms.MessageBox]::Show("Для установки нужно:" + [Environment]::NewLine + "1. Запустить exe-файл" + [Environment]::NewLine + '2. Дождаться ошибки "Сбой установки" и закрыть установщик' + [Environment]::NewLine + '3. Зайти на вкладку "Решение проблем" в активаторе и выбрать "Обойти гео-ограничения на Online-установку Office"' + [Environment]::NewLine + "4. Запустить установщик снова", "MalwTool", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
})

$I19.Add_Click({
    Start-Process "https://officecdn.microsoft.com/db/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/ru-ru/ProPlus2019Retail.img"
})

$D16.Add_Click({
    Start-Process "https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=ProfessionalRetail&platform=x64&language=ru-ru&version=O16GA"
    $result = [System.Windows.Forms.MessageBox]::Show('Для онлайн-установки нужно обойти гео-ограничения. Для этого: запустите exe-файл, дождитесь ошибки "Сбой установки", нажмите "Да" в этом окне. После этого перезапустите exe файл установщика!', "MalwTool;", [System.Windows.Forms.MessageBoxButtons]::YesNo, [System.Windows.Forms.MessageBoxIcon]::Information)
    if ($result -eq [System.Windows.Forms.DialogResult]::Yes) {
        Start-Process 
    }
    [System.Windows.Forms.MessageBox]::Show("Для установки нужно:" + [Environment]::NewLine + "1. Запустить exe-файл" + [Environment]::NewLine + '2. Дождаться ошибки "Сбой установки" и закрыть установщик' + [Environment]::NewLine + '3. Зайти на вкладку "Решение проблем" в активаторе и выбрать "Обойти гео-ограничения на Online-установку Office"' + [Environment]::NewLine + "4. Запустить установщик снова", "MalwTool", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
})

$I16.Add_Click({
    Start-Process "https://officecdn.microsoft.com/db/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/ru-ru/ProfessionalRetail.img"
})

$D13.Add_Click({
    Start-Process "https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=ProPlusRetail&platform=x64&language=ru-ru&version=O15GA"
    # не надо обходить блокировку
})

$I13.Add_Click({
    Start-Process "https://officecdn.microsoft.com.edgesuite.net/db/39168D7E-077B-48E7-872C-B232C3E72675/media/ru-ru/ProfessionalRetail.img"
})

$rufus.Add_Click({
    New-Item -Path "$env:temp\MalwTool" -ItemType Directory > $null
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $wc = New-Object net.webclient
    $wc.DownloadFile('https://github.com/pbatard/rufus/releases/download/v4.6/rufus-4.6.exe', "$env:temp\MalwTool\rufus.exe")
    Set-Location $env:SystemRoot\System32
    ./cmd.exe /c start "" "$env:temp\MalwTool\rufus.exe"
})

#########

$winwifipassman = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(6, 6)
    Name = "winwifipassman"
    Size = [System.Drawing.Size]::new(251, 23)
    TabIndex = 0
    Text = "Узнать пароли от сохранённых Wi-Fi сетей"
    UseVisualStyleBackColor = $true
}

$explorerext = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(263, 6)
    Name = "explorerext"
    Size = [System.Drawing.Size]::new(274, 23)
    TabIndex = 3
    Text = "Отображать расширения файлов в проводнике"
    UseVisualStyleBackColor = $true
}

$winget = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 35)
    Name = "winget"
    Size = [System.Drawing.Size]::new(113, 23)
    TabIndex = 1
    Text = "Установить winget"
    UseVisualStyleBackColor = $true
}

$store = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(127, 35)
    Name = "store"
    Size = [System.Drawing.Size]::new(160, 23)
    TabIndex = 2
    Text = "Установить Microsoft Store"
    UseVisualStyleBackColor = $true
}

$driversbackup = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 64)
    Name = "driversbackup"
    Size = [System.Drawing.Size]::new(208, 23)
    TabIndex = 4
    Text = "Резервное копирование драйверов"
    UseVisualStyleBackColor = $true
}

$driversrestore = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(222, 64)
    Name = "driversrestore"
    Size = [System.Drawing.Size]::new(165, 23)
    TabIndex = 5
    Text = "Восстановление драйверов"
    UseVisualStyleBackColor = $true
}

$edgeuninstall = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 93)
    Name = "edgeuninstall"
    Size = [System.Drawing.Size]::new(208, 23)
    TabIndex = 6
    Text = "Полностью удалить Microsoft Edge"
    UseVisualStyleBackColor = $true
}

$delspyfiles = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(222, 93)
    Name = "delspyfiles"
    Size = [System.Drawing.Size]::new(183, 23)
    TabIndex = 7
    Text = "Удалить шпионские exe-файлы"
    UseVisualStyleBackColor = $true
}

$spicetify = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 122)
    Name = "spicetify"
    Size = [System.Drawing.Size]::new(208, 23)
    TabIndex = 8
    Text = "Установить Spicetify"
    UseVisualStyleBackColor = $true
}

$edit_hosts = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(222, 151)
    Name = "edit_hosts"
    Size = [System.Drawing.Size]::new(183, 23)
    TabIndex = 11
    Text = "Обойти ограничения сервисов"
    UseVisualStyleBackColor = $true
}

@($winwifipassman, $winget, $store, $driversbackup, $driversrestore, $edgeuninstall, $spicetify, $edit_hosts) | ForEach-Object { $FunctionsTab.Controls.Add($_) }

$val = Get-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -ErrorAction SilentlyContinue
if (!$val -or $val.HideFileExt -ne 0) {
    $FunctionsTab.Controls.Add($explorerext)
}

if ((Test-Path "$env:SystemRoot\System32\CompatTelRunner.exe") -or (Test-Path "$env:SystemRoot\System32\wsqmcons.exe")) {
    $FunctionsTab.Controls.Add($delspyfiles)
}

$winwifipassman.Add_Click({
    Start-Process powershell -ArgumentList "Invoke-RestMethod https://raw.githubusercontent.com/ImMALWARE/WinWiFiPassMan/main/WinWiFiPassMan.ps1 | Invoke-Expression" -Verb RunAs
})

$explorerext.Add_Click({
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Value 0
})

$winget.Add_Click({
    Start-Process powershell -ArgumentList "Invoke-RestMethod https://raw.githubusercontent.com/ImMALWARE/winget-installer/main/WingetInstaller.ps1 | Invoke-Expression" -Verb RunAs
})

$store.Add_Click({
    Start-Process wsreset -ArgumentList "-i" -Verb RunAs
})

$driversbackup.Add_Click({
    $dialog = New-Object System.Windows.Forms.FolderBrowserDialog -Property @{
        Description = "Выберите директорию, куда будет сохранена резервная копия драйверов"
        RootFolder = [System.Environment+SpecialFolder]::MyComputer
    }
    if ($dialog.ShowDialog() -eq 'OK') {
        Start-Process pnputil -ArgumentList "/export-driver * `"$($dialog.SelectedPath)`"" -Verb RunAs
    }
})

$driversrestore.Add_Click({
    $dialog = New-Object System.Windows.Forms.FolderBrowserDialog -Property @{
        Description = "Выберите директорию с резервной копией драйверов"
        RootFolder = [System.Environment+SpecialFolder]::MyComputer
    }
    if ($dialog.ShowDialog() -eq 'OK') {
        Start-Process pnputil -ArgumentList "/add-driver `"${$dialog.SelectedPath}`" /subdirs /install" -Verb RunAs
    }
})

$edgeuninstall.Add_Click({
    New-Item -Path "$env:temp\MalwTool" -ItemType Directory > $null
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $wc = New-Object net.webclient
    $wc.DownloadFile('https://raw.githubusercontent.com/AveYo/fox/eab2269a598ad9e8120cf1d598d48384071ff476/Edge_Removal.bat', "$env:temp\MalwTool\Edge_Removal.bat")
    Set-Location $env:SystemRoot\System32
    ./cmd.exe /c start "$env:temp\MalwTool\Edge_Removal.bat"
})

$delspyfiles.Add_Click({
    Start-Process powershell -ArgumentList @'
    cd $env:SystemRoot\System32;
    .\takeown.exe /f CompatTelRunner.exe /a;
    .\takeown.exe /f wsqmcons.exe /a;
    .\icacls.exe CompatTelRunner.exe /grant Administrators:F;
    .\icacls.exe wsqmcons.exe /grant Administrators:F;
    Stop-Process -Name compattelrunner -Force -ErrorAction SilentlyContinue;
    Stop-Process -Name wsqmcons -Force -ErrorAction SilentlyContinue;
    Remove-Item CompatTelRunner.exe -Force;
    Remove-Item wsqmcons.exe -Force;
    pause
'@ -Verb RunAs
})

$spicetify.Add_Click({
    Start-Process powershell -ArgumentList "iwr -useb https://raw.githubusercontent.com/spicetify/cli/main/install.ps1 | iex; pause"
})

$edit_hosts.Add_Click({
    try {
        # 1. Получаем текст hosts с pastebin
        $new_hosts = (Invoke-WebRequest -Uri "https://pastebin.com/raw/5zvfV9Lp" -UseBasicParsing).Content

        # 2. Получаем текст существующего файла hosts
        $hosts_path = "C:\Windows\System32\drivers\etc\hosts"
        $current_hosts = Get-Content -Path $hosts_path -Raw

        # Определяем маркеры начала и конца
        $start_marker = "### t.me/immalware: hosts file"
        $end_marker = "### t.me/immalware: end hosts file"

        # 5-6. Проверяем наличие маркеров и обновляем содержимое
        if ($current_hosts -match [regex]::Escape($start_marker) -and $current_hosts -match [regex]::Escape($end_marker)) {
            # Используем регулярное выражение для замены текста между маркерами
            $pattern = "$([regex]::Escape($start_marker))(.*?)$([regex]::Escape($end_marker))"
            $replacement = "$start_marker`r`n$new_hosts`r`n$end_marker"
            $updated_hosts = $current_hosts -replace $pattern, $replacement
        }
        else {
            # 7. Если маркеров нет, добавляем новый контент в конец файла
            $updated_hosts = "$current_hosts`r`n$start_marker`r`n$new_hosts`r`n$end_marker"
        }

        # Сохраняем обновленный файл hosts
        $updated_hosts | Set-Content -Path $hosts_path -Force
        [System.Windows.MessageBox]::Show("Файл hosts успешно обновлен", "Успех")
    }
    catch {
        [System.Windows.MessageBox]::Show("Ошибка при обновлении файла hosts: $_", "Ошибка")
    }
})

#######

$images = @{
    oimg   = @{url = 'https://i.imgur.com/8L2KS9a.png'; y = 8}
    winimg = @{url = 'https://i.imgur.com/sYPcWTh.png'; y = 71}
}

$images.Keys | ForEach-Object {
    $name = $_
    Set-Variable -Name $name -Value (New-Object System.Windows.Forms.PictureBox -Property @{
        Location = [System.Drawing.Point]::new(8, $images[$name].y)
        Size = [System.Drawing.Size]::new(34, 39)
        Image = [System.Drawing.Image]::FromStream(
            ([System.Net.WebRequest]::Create($images[$name].url)).GetResponse().GetResponseStream()
        )
    })
}

$clear_office16 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(48, 8)
    Name = "clear_office16"
    Size = [System.Drawing.Size]::new(170, 23)
    TabIndex = 3
    Text = "Очистить лицензии Office16"
    UseVisualStyleBackColor = $true
}

$office_uninstall = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(221, 8)
    Name = "office_uninstall"
    Size = [System.Drawing.Size]::new(176, 23)
    TabIndex = 1
    Text = "Инструмент удаления Office"
    UseVisualStyleBackColor = $true
}

$clear_winkms = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(48, 71)
    Name = "clear_winkms"
    Size = [System.Drawing.Size]::new(192, 23)
    TabIndex = 3
    Text = "Сброс KMS-активации Windows"
    UseVisualStyleBackColor = $true
}

$sfc_scannow = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(247, 71)
    Name = "sfc_scannow"
    Size = [System.Drawing.Size]::new(260, 23)
    TabIndex = 2
    Text = "Проверить системные файлы на целостность"
    UseVisualStyleBackColor = $true
}

$telegram_fix = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 136)
    Name = "telegram_fix"
    Size = [System.Drawing.Size]::new(268, 23)
    TabIndex = 9
    Text = "Исправить открытие ссылок Telegram Desktop"
    UseVisualStyleBackColor = $true
}

$otherproblem = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 165)
    Name = "otherproblem"
    Size = [System.Drawing.Size]::new(154, 23)
    TabIndex = 8
    Text = "У меня другая проблема!"
    UseVisualStyleBackColor = $true
}

@($winimg, $oimg, $clear_office16, $office_uninstall, $clear_winkms, $sfc_scannow, $telegram_fix, $otherproblem) | ForEach-Object { $ProblemsTab.Controls.Add($_) }

$clear_office16.Add_Click({
    if (test-path "$env:ProgramFiles\Microsoft Office\Office16\ospp.vbs"){ 
        $path = "$env:ProgramFiles\Microsoft Office\Office16\"
    }
    elseIf (test-path "$(env:ProgramFiles(x86))\Microsoft Office\Office16\ospp.vbs") {
        $path = "$(env:ProgramFiles(x86))\Microsoft Office\Office16\"
    }
    else {
        [System.Windows.Forms.MessageBox]::Show("Папка Office16 не найдена!", "MalwTool", [System.Windows.Forms.MessageBoxButtons]::OK,[System.Windows.Forms.MessageBoxIcon]::Error)
        exit
    }
    Start-Process powershell -ArgumentList @"
    $host.ui.RawUI.WindowTitle = 'MaltTool: убираю лицензии Office16'
    cd '$path'
    while($true){
        $license = (cscript ospp.vbs /dstatus) | Out-String
        $match = $license | Select-String -Pattern 'Last 5 characters of installed product key: (\w{5})'
        if ($match) {
            $productKey = $match.Matches.Groups[1].Value
            cscript ospp.vbs /unpkey:$productKey
        } else {
            exit
        }
    }
"@ -Verb RunAs -Wait
    [System.Windows.Forms.MessageBox]::Show("All Office16 licenses have been removed.","MalwActivator",[System.Windows.Forms.MessageBoxButtons]::OK,[System.Windows.Forms.MessageBoxIcon]::Information)
    exit
})

$office_uninstall.Add_Click({
    New-Item -Path "$env:temp\MalwTool" -ItemType Directory > $null
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $wc = New-Object net.webclient
    $wc.DownloadFile('https://outlookdiagnostics.azureedge.net/sarasetup/SetupProd_OffScrub.exe', "$env:temp\MalwTool\SetupProd_OffScrub.exe")
    Set-Location $env:SystemRoot\System32
    ./cmd.exe /c start "" "$env:temp\MalwTool\SetupProd_OffScrub.exe"
    [System.Windows.Forms.MessageBox]::Show("тут гайд типа будет", "MalwTool", [System.Windows.Forms.MessageBoxButtons]::OK,[System.Windows.Forms.MessageBoxIcon]::Information)
})

$clear_winkms.Add_Click({
    Start-Process powershell -ArgumentList "Set-Location $env:SystemRoot\System32; .\slmgr /upk; .\slmgr /cpky; pause" -Verb RunAs
})

$sfc_scannow.Add_Click({
    Start-Process powershell -ArgumentList "Set-Location $env:SystemRoot\System32; .\sfc /scannow; .\Dism /Online /Cleanup-Image /RestoreHealth; .\chkdsk ${(Get-WmiObject Win32_OperatingSystem).SystemDrive} /b /x; .\shutdown /r /t pause" -Verb RunAs
})

$telegram_fix.Add_Click({
    $dialog = New-Object System.Windows.Forms.OpenFileDialog
    $dialog.Filter = "Telegram|Telegram.exe"
    $dialog.Title = "Выберите путь к Telegram.exe"
    $dialog.InitialDirectory = "$env:AppData\Telegram Desktop"

    if ($dialog.ShowDialog() -eq 'OK') {
        $regPath = "HKCR:\tg\shell\open\command"
        New-Item -Path $regPath -Force | Out-Null
        Set-ItemProperty -Path $regPath -Name "(Default)" -Value "`"$($dialog.FileName.Replace('\', '\\'))`" -- `"%1`""
        [System.Windows.Forms.MessageBox]::Show("Применено!", "MalwTool", "OK", "Information")
    }
})

$otherproblem.Add_Click({
    $tabs.SelectedTab = $infoTab
})

######

$malwtool = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(8, 5)
    Name = "malwtool"
    Size = [System.Drawing.Size]::new(102, 15)
    TabIndex = 1
    Text = "MalwTool 2.0"
}

$malwru = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 23)
    Name = "malwru"
    Size = [System.Drawing.Size]::new(109, 23)
    TabIndex = 0
    Text = "Статья на Malw.ru"
    UseVisualStyleBackColor = $true
}

$lolzteam = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(123, 23)
    Name = "lolzteam"
    Size = [System.Drawing.Size]::new(109, 23)
    TabIndex = 2
    Text = "Тема на Lolzteam"
    UseVisualStyleBackColor = $true
}

$github = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(238, 23)
    Name = "github"
    Size = [System.Drawing.Size]::new(56, 23)
    TabIndex = 3
    Text = "GitHub"
    UseVisualStyleBackColor = $true
}

$questions = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(8, 91)
    Name = "questions"
    Size = [System.Drawing.Size]::new(86, 15)
    TabIndex = 4
    Text = "Есть вопросы? Даже если они не связаны с MalwTool, буду рад помочь!"
}

$telegram = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 109)
    Name = "telegram"
    Size = [System.Drawing.Size]::new(124, 23)
    TabIndex = 5
    Text = "Написать в Telegram"
    UseVisualStyleBackColor = $true
}

$lolzteam2 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(138, 109)
    Name = "lolzteam2"
    Size = [System.Drawing.Size]::new(156, 23)
    TabIndex = 6
    Text = "Написать в теме Lolzteam"
    UseVisualStyleBackColor = $true
}

$github2 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(300, 109)
    Name = "github2"
    Size = [System.Drawing.Size]::new(156, 23)
    TabIndex = 7
    Text = "Написать в Issues GitHub"
    UseVisualStyleBackColor = $true
}

@($malwtool, $malwru, $lolzteam, $github, $questions, $telegram, $lolzteam2, $github2) | ForEach-Object { $InfoTab.Controls.Add($_) }

$malwru.Add_Click({
    Start-Process "https://malw.ru/pages/office"
})

$lolzteam.Add_Click({
    Start-Process "https://lolz.live/threads/4997821"
})

$github.Add_Click({
    Start-Process "https://github.com/ImMALWARE/MalwTool"
})

$telegram.Add_Click({
    Start-Process "https://t.me/immalware_chat"
})

$lolzteam2.Add_Click({
    $lolzteam.PerformClick()
})

$github2.Add_Click({
    $github2.PerformClick()
})

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
$tooltip.SetToolTip($delspyfiles, "Удалить CompatTelRunner.exe и wsqmcons.exe")
$tooltip.SetToolTip($driversrestore, 'Перед переустановкой Windows лучше сделать резервную копию всех драйверов, чтобы потом не мучаться с ними после переустановки, а просто выбрать "Восстановление" здесь')
$tooltip.SetToolTip($driversbackup, 'Перед переустановкой Windows лучше сделать резервную копию всех драйверов, чтобы потом не мучаться с ними после переустановки, а просто выбрать "Восстановление" здесь')
$tooltip.SetToolTip($store, "Только для LTSC-версий Windows без установленного Microsoft Store!")
$tooltip.SetToolTip($winwifipassman, "Перед запуском убедитесь, что Wi-Fi сейчас включен")
$tooltip.SetToolTip($sfc_scannow, "sfc /scannow и DISM /Online /Cleanup-Image /RestoreHealth")
$tooltip.SetToolTip($telegram_fix, "Если у вас не открываются ссылки вида tg:// в Telegram Desktop, нажмите эту кнопку, затем выберите путь до Telegram.exe")
$tooltip.SetToolTip($V, "Через KMS, будет активирован как Visio 2021 (более старые версии обновятся)")
$tooltip.SetToolTip($P, "Через KMS, будет активирован как Project 2021 (более старые версии обновятся)")
$tooltip.SetToolTip($otherproblem, "Даже если проблема не связана с MalwTool, всё равно напишите")

$form.Controls.Add($tabs)
$form.ShowDialog()