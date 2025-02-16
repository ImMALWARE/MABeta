# https://github.com/ImMALWARE/MalwTool/
Add-Type -AssemblyName System.Windows.Forms
Add-Type -Name Window -Namespace Console -MemberDefinition '[DllImport("Kernel32.dll")]public static extern IntPtr GetConsoleWindow();[DllImport("user32.dll")]public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);'
[void][Console.Window]::ShowWindow([Console.Window]::GetConsoleWindow(), 0)
[System.Windows.Forms.Application]::EnableVisualStyles()
$app = "MalwTool"
$n = [Environment]::NewLine

if ($PSUICulture -eq "ru-RU") {
    $strings = @("Активация", "Скачивание", "Другие функции", "Решение проблем", "Информация", "Активация Windows 10 или 11 (в том числе LTSC) по HWID", "Активация Windows 8 или Windows 8.1 через KMS", "Активация Windows Server 2022, Windows Server Standard, Windows Server Datacenter, 2019, 2016, 2012, 2012 R2, 1803, 1709", "Через KMS, будет активирован как %p% 2024 (более старые версии обновятся)", ("Активация Office %v% путём добавления файла sppc.dll$n" + "%info%" + "Активация сработает и для Office %otherv%. Office потом автоматически конвертируется в %v%."), "Office 365 — всегда самая актуальная версия Office, лучше выбрать этот вариант.$n", "И всё-таки, я бы порекомендовал выбрать Office 365.$n", "Активация Office 2013 с помощью добавления файла sppc.dll", ("Разрешить создание автономного аккаунта Minecraft в Prism Launcher без добавления аккаунта Microsoft.$n" + "Не запускайте, если вы уже добавили аккаунт! Это действие удалит все аккаунты в лаунчере!"), "Премиум-аккаунт в TL, вы сможете отключить добавление рекламных серверов в его настройках", "Автономный аккаунт в Prism Launcher разблокирован!", "%p% не найден!", "Premium аккаунт в TL активирован! Теперь зайдите в настройки TL для отключения рекламных серверов!", "Ни один аккаунт не доблавен в TL!", "ISO образ последней версии Windows %v% с официального сайта Microsoft", "Онлайн-установщик Office с официального сайта Microsoft.", "ISO архив Office с официального сайта Microsoft. Запустите в нём setup.exe", " Следуйте инструкциям $app после запуска установщика.", "Не рекомендуется, устаревшая версия. ", "инструмент для записи ISO образов на флешку", "Не удалось получить ссылку для загрузки! Попробовать снова?", "Скачанному файлу нужно будет дописать формат .iso!")
} else {
    $strings = @("Activation", "Download", "Other functions", "Solving problems", "Info", "Windows 10 or 11 (including LTSC) activation by HWID", "Windows 8 or 8.1 activation via KMS", "Activation of Windows Server 2022, Windows Server Standard, Windows Server Datacenter, 2019, 2016, 2012, 2012 R2, 1803, 1709", "Via KMS, will be activated as %p% 2024 (older versions will be updated)", ("Office %v% activation via sppc.dll file$n" + "%info%" + "The activation will also work for Office %otherv%. Office will then be automatically converted to %v%."), "Office 365 is always the latest version of Office, it is better to choose this option.$n", "Anyway, I would recommend selecting Office 365.$n", "Office 2013 activation via sppc.dll file.", ("Allow creation of an offline Minecraft account in Prism Launcher without Microsoft account.$n", "Do not start if you have already added an account! This action will delete all accounts in the launcher!"), "Premium account in TL, you will be able to disable adding advertised servers in its settings", "Offline account in Prism Launcher unlocked!", "%p% not found!", "Premium account in TL is activated! Now open its settings to disable advertised servers!", "No account has been added to TL!", "ISO image of the latest version of Windows %v% from the official Microsoft website", "Office online installer from the official Microsoft website.", "ISO archive of Office from the official Microsoft website. Run setup.exe in it.", " Follow the instructions of $app after starting the installer.", "Not recommended, outdated version. ", "tool for writing ISO images to a flash drive", "Failed to get a download link! Try again?", "Downloaded file needs to be appended with .iso!")
}
# английский язык
# проглядеть всё
# глобальное тестирование

$form = New-Object System.Windows.Forms.Form -Property @{
    StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
    FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
    MaximizeBox = $false
    Text = $app
    ClientSize = [System.Drawing.Size]::new(627, 234)
    Font = [System.Drawing.Font]::new("Segoe UI", 8.5)
}

$tabs = New-Object System.Windows.Forms.TabControl -Property @{
    Dock = [System.Windows.Forms.DockStyle]::Fill
    Location = [System.Drawing.Point]::new(0, 0)
    SelectedIndex = 0
    Size = [System.Drawing.Size]::new(627, 234)
    SizeMode = [System.Windows.Forms.TabSizeMode]::FillToRight
    TabIndex = 0
}

$ActTab = New-Object System.Windows.Forms.TabPage -Property @{
    Location = [System.Drawing.Point]::new(4, 24)
    Padding = [System.Windows.Forms.Padding]::new(3)
    Size = [System.Drawing.Size]::new(619, 206)
    TabIndex = 0
    Text = $strings[0]
    UseVisualStyleBackColor = $true
}

$DlTab = New-Object System.Windows.Forms.TabPage -Property @{
    Location = [System.Drawing.Point]::new(4, 24)
    Padding = [System.Windows.Forms.Padding]::new(3)
    Size = [System.Drawing.Size]::new(619, 206)
    TabIndex = 4
    Text = $strings[1]
    UseVisualStyleBackColor = $true
}

$FunctionsTab = New-Object System.Windows.Forms.TabPage -Property @{
    Location = [System.Drawing.Point]::new(4, 24)
    Size = [System.Drawing.Size]::new(619, 206)
    TabIndex = 2
    Text = $strings[2]
    UseVisualStyleBackColor = $true
}

$ProblemsTab = New-Object System.Windows.Forms.TabPage -Property @{
    Location = [System.Drawing.Point]::new(4, 24)
    Padding = [System.Windows.Forms.Padding]::new(3)
    Size = [System.Drawing.Size]::new(619, 206)
    TabIndex = 1
    Text = $strings[3]
    UseVisualStyleBackColor = $true
}

$InfoTab = New-Object System.Windows.Forms.TabPage -Property @{
    Location = [System.Drawing.Point]::new(4, 24)
    Size = [System.Drawing.Size]::new(619, 206)
    TabIndex = 3
    Text = $strings[4]
    UseVisualStyleBackColor = $true
}

@($ActTab, $DlTab, $FunctionsTab, $ProblemsTab, $InfoTab) | ForEach-Object { $tabs.TabPages.Add($_) }

$tooltip = New-Object System.Windows.Forms.ToolTip -Property @{
    AutoPopDelay = 5000
    InitialDelay = 5
    ReshowDelay = 100
    ShowAlways = $true
}

# Activation tab

$ActWin10 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Checked = $true
    Location = [System.Drawing.Point]::new(6, 6)
    Name = "ActWin10"
    Size = [System.Drawing.Size]::new(143, 19)
    TabIndex = 1
    TabStop = $true
    Text = "Windows 10/11 (HWID)"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($ActWin10, $strings[5])

$ActWin8 = New-Object System.Windows.Forms.RadioButton -Property @{ 
    AutoSize = $true
    Location = [System.Drawing.Point]::new(6, 31)
    Name = "ActWin8"
    Size = [System.Drawing.Size]::new(130, 19)
    TabIndex = 2
    Text = "Windows 8/8.1 (KMS)"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($ActWin8, $strings[6])

$ActWinServer = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(6, 56)
    Name = "ActWinServer"
    Size = [System.Drawing.Size]::new(193, 19)
    TabIndex = 5
    Text = "Windows Server 2022/2019/2016"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($ActWinServer, $strings[7])

$ActVisio = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(6, 106)
    Name = "ActVisio"
    Size = [System.Drawing.Size]::new(54, 19)
    TabIndex = 18
    Text = "Visio 2016/2019/2021/2024"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($ActVisio, $strings[8].Replace("%p%", "Visio"))

$ActProject = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(6, 131)
    Name = "ActProject"
    Size = [System.Drawing.Size]::new(64, 19)
    TabIndex = 19
    Text = "Project 2016/2019/2021"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($ActProject, $strings[8].Replace("%p%", "Project"))

$ActOffice365 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(214, 6)
    Name = "ActOffice365"
    Size = [System.Drawing.Size]::new(79, 19)
    TabIndex = 15
    Text = "Office 365"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($ActOffice365, $strings[9].Replace("%v%", "365").Replace("%info%", $strings[10]).Replace("%otherv%", "2016, 2019, 2021, 2024"))

$ActOffice2024 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(214, 31)
    Name = "ActOffice2024"
    Size = [System.Drawing.Size]::new(83, 19)
    TabIndex = 4
    Text = "Office 2024"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($ActOffice2024, $strings[9].Replace("%v%", "2024").Replace("%info%", $strings[11]).Replace("%otherv%", "2016, 2019, 2021"))

$ActOffice2021 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(214, 56)
    Name = "ActOffice2021"
    Size = [System.Drawing.Size]::new(83, 19)
    TabIndex = 4
    Text = "Office 2021"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($ActOffice2021, $strings[9].Replace("%v%", "2021").Replace("%info%", "").Replace("%otherv%", "2016, 2019, 2024"))

$ActOffice2019 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(214, 81)
    Name = "ActOffice2019"
    Size = [System.Drawing.Size]::new(84, 19)
    TabIndex = 17
    Text = "Office 2019"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($ActOffice2019, $strings[9].Replace("%v%", "2019").Replace("%info%", "").Replace("%otherv%", "2016, 2021, 2024"))

$ActOffice2016 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(214, 106)
    Name = "ActOffice2016"
    Size = [System.Drawing.Size]::new(84, 19)
    TabIndex = 16
    Text = "Office 2016"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($ActOffice2016, $strings[9].Replace("%v%", "2016").Replace("%info%", "").Replace("%otherv%", "2019, 2021, 2024"))

$ActOffice2013 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(214, 131)
    Name = "ActOffice2013"
    Size = [System.Drawing.Size]::new(83, 19)
    TabIndex = 6
    Text = "Office 2013"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($ActOffice2013, $strings[13])

$ActPrismLauncher = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(373, 6)
    Name = "ActPrismLauncher"
    Size = [System.Drawing.Size]::new(201, 19)
    TabIndex = 8
    Text = "Prism Launcher"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($ActPrismLauncher, $strings[14])

$ActTL = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(373, 31)
    Name = "ActTL"
    Size = [System.Drawing.Size]::new(81, 19)
    TabIndex = 9
    Text = "TL"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($ActTL, $strings[15])

$ActMXT = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(373, 56)
    Name = "ActMXT"
    Size = [System.Drawing.Size]::new(88, 19)
    TabIndex = 11
    Text = "MobaXterm"
    UseVisualStyleBackColor = $true
}

$ActVS = New-Object System.Windows.Forms.RadioButton -Property @{
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
    Size = [System.Drawing.Size]::new(96, 23)
    TabIndex = 14
    Text = "Активировать!"
    UseVisualStyleBackColor = $true
}

$com = @("Invoke-RestMethod https://raw.githubusercontent.com/ImMALWARE/MABeta/main/Activators", " | Invoke-Expression", "$env:ProgramFiles\Microsoft Office\root\vfs\System", "$env:ProgramFiles\Microsoft Office 15\root\vfs\System")
$Act.Add_Click({
    $prod = ($ActTab.Controls | Where-Object { $_.GetType() -eq [System.Windows.Forms.RadioButton] -and $_.Checked })[0].Name
    $activators = @{"ActWin10" = "HWID.ps1"; "ActWin8" = "KMS.ps1"; "ActWinServer" = "ServerKMS.ps1"; "ActVisio" = "VisioProject.ps1"; "ActProject" = "VisioProject.ps1"; "ActVS" = "VS.ps1"}
    switch ($prod) {
        "ActPrismLauncher" {
            if (Test-Path "$env:appdata\PrismLauncher") {
                '{"accounts": [{"entitlement": {"canPlayMinecraft": true,"ownsMinecraft": true},"type": "MSA"}],"formatVersion": 3}' | Out-File "$env:appdata\PrismLauncher\accounts.json" -Encoding ASCII
                [System.Windows.Forms.MessageBox]::Show($strings[16], $app, [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
            } else {
                [System.Windows.Forms.MessageBox]::Show($strings[17].Replace("%p%", "Prism Launcher"), $app, [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
            }
        }
        "ActTL" {
            if (Test-Path "$env:appdata\.minecraft\TlauncherProfiles.json") {
                $file = Get-Content -Path "$env:appdata\.minecraft\TlauncherProfiles.json" -Raw
                if ($file -match '"premiumAccount": false') {
                    $file -replace '"premiumAccount": false', '"premiumAccount": true' | Set-Content -Path "$env:appdata\.minecraft\TlauncherProfiles.json"
                    [System.Windows.Forms.MessageBox]::Show($strings[18], $app, [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }
                else {
                    [System.Windows.Forms.MessageBox]::Show($strings[19], $app, [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error) 
                }
            }
            else {
                [System.Windows.Forms.MessageBox]::Show($strings[17].Replace("%p%", "TL"), $app, [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
            }
        }
        "ActMXT" {
            if (Test-Path "$(env:ProgramFiles(x86))\Mobatek\MobaXterm\version.dat") {
                Start-Process powershell -ArgumentList "Invoke-RestMethod https://raw.githubusercontent.com/ImMALWARE/MABeta/main/Activators/MXT.ps1 | Invoke-Expression" -Verb RunAs
            } else {
                [System.Windows.Forms.MessageBox]::Show($strings[17].Replace("%p%", "MobaXterm"), $app, [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
            }
        }
        default {
            if ($prod.StartsWith("O")) {
                if (-not (test-path $com[2 + ($prod -eq "O13")])) {
                    [System.Windows.Forms.MessageBox]::Show($strings[17].Replace("%p%", "Office"), $app, [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
                    break
                }
            }
            Start-Process powershell -ArgumentList "$($com[0])/$($activators[$prod])$($com[1]) -Product $prod" -Verb RunAs
        }
    }
})

@($ActWin10, $ActWin8, $ActWinServer, $ActVisio, $ActProject, $ActOffice365, $ActOffice2024, $ActOffice2021, $ActOffice2019, $ActOffice2016, $ActOffice2013, $ActPrismLauncher, $ActTL, $ActMXT, $ActVS, $Act) | ForEach-Object { $ActTab.Controls.Add($_) }

# Downloads tab

$DlWin10 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 6)
    Size = [System.Drawing.Size]::new(83, 23)
    Text = "Windows 10"
    UseVisualStyleBackColor = $true
}
$toolTip.SetToolTip($DlWin10, $strings[19].Replace("%v%", "10"))

$DlWin11 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 64)
    Size = [System.Drawing.Size]::new(83, 23)
    Text = "Windows 11"
    UseVisualStyleBackColor = $true
}
$toolTip.SetToolTip($DlWin11, $strings[19].Replace("%v%", "11"))

$DlWin10Ltsc = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 35)
    Size = [System.Drawing.Size]::new(197, 23)
    Text = "Win 10 LTSC 2021 (рекомендуется)"
    UseVisualStyleBackColor = $true
}

$DlWin11Ltsc = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 93)
    Size = [System.Drawing.Size]::new(136, 23)
    Text = "Windows 11 LTSC 2024"
    UseVisualStyleBackColor = $true
}

$DlServer2025 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(215, 6)
    Size = [System.Drawing.Size]::new(136, 23)
    Text = "Windows Server 2025"
    UseVisualStyleBackColor = $true
}

$DlServer2022 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(215, 35)
    Size = [System.Drawing.Size]::new(136, 23)
    Text = "Windows Server 2022"
    UseVisualStyleBackColor = $true
}

$DlServer2019 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(215, 64)
    Size = [System.Drawing.Size]::new(136, 23)
    Text = "Windows Server 2019"
    UseVisualStyleBackColor = $true
}

$DlServer2016 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(215, 93)
    Size = [System.Drawing.Size]::new(136, 23)
    Text = "Windows Server 2016"
    UseVisualStyleBackColor = $true
}

$DlServer2012 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(215, 121)
    Size = [System.Drawing.Size]::new(136, 23)
    Text = "Windows Server 2012"
    UseVisualStyleBackColor = $true
}

$DlWin81 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 122)
    Size = [System.Drawing.Size]::new(83, 23)
    Text = "Windows 8.1"
    UseVisualStyleBackColor = $true
}

$DlOffice2024Installer = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(437, 7)
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "Online"
    UseVisualStyleBackColor = $true
}
$toolTip.SetToolTip($DlOffice2024Installer, $strings[20] + $strings[22])

$DlOffice2024ISO = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(522, 7)
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "ISO"
    UseVisualStyleBackColor = $true
}
$toolTip.SetToolTip($DlOffice2024ISO, $strings[21])

$DlOffice2021Installer = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(437, 36)
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "Online"
    UseVisualStyleBackColor = $true
}
$toolTip.SetToolTip($DlOffice2021Installer, $strings[20] + $strings[22])

$DlOffice2021ISO = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(522, 36)
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "ISO"
    UseVisualStyleBackColor = $true
}
$toolTip.SetToolTip($DlOffice2021ISO, $strings[21])

$DlOffice2019Installer = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(437, 65)
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "Online"
    UseVisualStyleBackColor = $true
}
$toolTip.SetToolTip($DlOffice2019Installer, $strings[20] + $strings[22])

$DlOffice2019ISO = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(522, 64)
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "ISO"
    UseVisualStyleBackColor = $true
}
$toolTip.SetToolTip($DlOffice2019ISO, $strings[21])

$DlOffice2016Installer = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(437, 93)
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "Online"
    UseVisualStyleBackColor = $true
}
$toolTip.SetToolTip($DlOffice2016Installer, $strings[20] + $strings[22])

$DlOffice2016ISO = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(522, 93)
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "ISO"
    UseVisualStyleBackColor = $true
}
$toolTip.SetToolTip($DlOffice2016ISO, $strings[21])

$DlOffice2013Installer = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(437, 122)
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "Online"
    UseVisualStyleBackColor = $true
}
$toolTip.SetToolTip($DlOffice2013Installer, $strings[23] + $strings[20])

$DlOffice2013ISO = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(522, 121)
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "ISO"
    UseVisualStyleBackColor = $true
}
$toolTip.SetToolTip($DlOffice2013ISO, $strings[23] + $strings[21])

$l24 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(362, 11)
    Size = [System.Drawing.Size]::new(70, 15)
    Text = "Office 2024:"
}

$l21 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(362, 39)
    Size = [System.Drawing.Size]::new(70, 15)
    Text = "Office 2021:"
}

$l19 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(362, 68)
    Size = [System.Drawing.Size]::new(70, 15)
    Text = "Office 2019:"
}

$l16 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(362, 97)
    Size = [System.Drawing.Size]::new(70, 15)
    Text = "Office 2016:"
}

$l13 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(362, 126)
    Size = [System.Drawing.Size]::new(70, 15)
    Text = "Office 2013:"
}

$rufus = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 151)
    Size = [System.Drawing.Size]::new(312, 23)
    Text = "Rufus — " + $strings[24]
    UseVisualStyleBackColor = $true
}

@($DlWin10, $DlWin11, $DlWin10Ltsc, $DlWin11Ltsc, $DlServer2025, $DlServer2022, $DlServer2019, $DlServer2016, $DlServer2012, $DlWin81, $DlOffice2024Installer, $DlOffice2024ISO, $DlOffice2021Installer, $DlOffice2021ISO, $DlOffice2019Installer, $DlOffice2019ISO, $DlOffice2016Installer, $DlOffice2016ISO, $DlOffice2013Installer, $DlOffice2013ISO, $l24, $l21, $l19, $l16, $l13, $rufus) | ForEach-Object { $DlTab.Controls.Add($_) }

$DlWin10.Add_Click({
    try {
        $products = Invoke-RestMethod -Uri https://raw.githubusercontent.com/ImMALWARE/MABeta/main/windl.json -Method Get
        Start-Process (Invoke-RestMethod -Uri "https://api.gravesoft.dev/msdl/proxy?product_id=$($products."10"[0])&sku_id=$($products."10"[1])" -Method Get).ProductDownloadOptions[0].Uri
    } catch {
        $result = [System.Windows.Forms.MessageBox]::Show($strings[25], $app, [System.Windows.Forms.MessageBoxButtons]::YesNo, [System.Windows.Forms.MessageBoxIcon]::Warning)
        if ($result -eq [System.Windows.Forms.DialogResult]::Yes) {
            $DlWin10.PerformClick()
        }
    }
})

$DlWin11.Add_Click({
    try {
        $products = Invoke-RestMethod -Uri https://raw.githubusercontent.com/ImMALWARE/MABeta/main/windl.json -Method Get
        Start-Process (Invoke-RestMethod -Uri "https://api.gravesoft.dev/msdl/proxy?product_id=$($products."11"[0])&sku_id=$($products."11"[1])" -Method Get).ProductDownloadOptions[0].Uri
    } catch {
        $result = [System.Windows.Forms.MessageBox]::Show($strings[25], $app, [System.Windows.Forms.MessageBoxButtons]::YesNo, [System.Windows.Forms.MessageBoxIcon]::Warning)
        if ($result -eq [System.Windows.Forms.DialogResult]::Yes) {
            $DlWin11.PerformClick()
        }
    }
})

$DlWin10Ltsc.Add_Click({
    Start-Process "https://drive.massgrave.dev/ru-ru_windows_10_enterprise_ltsc_2021_x64_dvd_5044a1e7.iso"
})

$DlWin11Ltsc.Add_Click({
    Start-Process "https://drive.massgrave.dev/ru-ru_windows_11_enterprise_ltsc_2024_x64_dvd_f9af5773.iso"
})

$DlServer2025.Add_Click({
    Start-Process "https://oemsoc.download.prss.microsoft.com/dbazure/X23-81967_26100.1742.240906-0331.ge_release_svc_refresh_SERVER_OEMRET_x64FRE_ru-ru.iso_0400d135-3d94-49a2-8627-8f1a8cb316bf?t=27afd6c5-3c63-4984-8139-b9c239276cb4&P1=102817441539&P2=601&P3=2&P4=K6P6PaBziMqVvDg7AgCqTBprjEMuo%2bmjluaix%2b9TaUldONUCc3PtGs30Rvmn3IKMuSZ7kcmGydK%2bmz38quTSTCyGmjPdKm6bLG%2f2m13pTKsdD1zp%2flccTbTkwvIN%2fdhU8qzwet9V56is8W7o7IykKbczeFlJ1yQV7xq6OCpOzudqomW5fUsUO0%2fRx%2b78zkGgyrHlxIQlX9bAC5Fr069%2byhr5OiXWk9R%2fzEj93%2bEfBrZMTFz1M%2fzf6UKw6tYjOjdSJkNKk%2bhjnAyC%2bcqCj2OKrw6yhEJ6vtXbNJomDZzfUBqMM%2f1uoRabPzPv5Adp3XEJ5DIzdBU%2foyhPbj0qcCzfPg%3d%3d"
    [System.Windows.Forms.MessageBox]::Show($strings[26], $app, [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
})

$DlServer2022.Add_Click({
    Start-Process "https://drive.massgrave.dev/ru-ru_windows_server_2022_updated_nov_2024_x64_dvd_4e34897c.iso"
})

$DlServer2019.Add_Click({
    Start-Process "https://drive.massgrave.dev/ru-ru_windows_server_2019_x64_dvd_e02b76ba.iso"
})

$DlServer2016.Add_Click({
    Start-Process "https://drive.massgrave.dev/ru_windows_server_2016_vl_x64_dvd_11636694.iso"
})

$DlServer2012.Add_Click({
    Start-Process "https://drive.massgrave.dev/ru_windows_server_2012_r2_vl_with_update_x64_dvd_6052827.iso"
})

# TODO

$DlOffice2024Installer.Add_Click({
    Start-Process "https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=ProPlus2024Retail&platform=x64&language=ru-ru&version=O16GA"
    $result = [System.Windows.Forms.MessageBox]::Show('Для онлайн-установки нужно обойти гео-ограничения. Для этого: запустите exe-файл, дождитесь ошибки "Сбой установки", нажмите "Да" в этом окне. После этого перезапустите exe файл установщика!', $app, [System.Windows.Forms.MessageBoxButtons]::YesNo, [System.Windows.Forms.MessageBoxIcon]::Information)
    if ($result -eq [System.Windows.Forms.DialogResult]::Yes) {
        Start-Process # TODO: обход!!!
    }
    [System.Windows.Forms.MessageBox]::Show("Для установки нужно:" + [Environment]::NewLine + "1. Запустить exe-файл" + [Environment]::NewLine + '2. Дождаться ошибки "Сбой установки" и закрыть установщик' + [Environment]::NewLine + '3. Зайти на вкладку "Решение проблем" в активаторе и выбрать "Обойти гео-ограничения на Online-установку Office"' + [Environment]::NewLine + "4. Запустить установщик снова", $app, [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
})

$DlOffice2024ISO.Add_Click({
    Start-Process "https://officecdn.microsoft.com/db/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/ru-ru/ProPlus2024Retail.img"
})

$DlOffice2021Installer.Add_Click({
    Start-Process "https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=ProPlus2021Retail&platform=x64&language=ru-ru&version=O16GA"
    $result = [System.Windows.Forms.MessageBox]::Show('Для онлайн-установки нужно обойти гео-ограничения. Для этого: запустите exe-файл, дождитесь ошибки "Сбой установки", нажмите "Да" в этом окне. После этого перезапустите exe файл установщика!', $app, [System.Windows.Forms.MessageBoxButtons]::YesNo, [System.Windows.Forms.MessageBoxIcon]::Information)
    if ($result -eq [System.Windows.Forms.DialogResult]::Yes) {
        Start-Process 
    }
    [System.Windows.Forms.MessageBox]::Show("Для установки нужно:" + [Environment]::NewLine + "1. Запустить exe-файл" + [Environment]::NewLine + '2. Дождаться ошибки "Сбой установки" и закрыть установщик' + [Environment]::NewLine + '3. Зайти на вкладку "Решение проблем" в активаторе и выбрать "Обойти гео-ограничения на Online-установку Office"' + [Environment]::NewLine + "4. Запустить установщик снова", $app, [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
})

$DlOffice2021ISO.Add_Click({
    Start-Process "https://officecdn.microsoft.com/db/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/ru-ru/ProPlus2021Retail.img"
})

$DlOffice2019Installer.Add_Click({
    Start-Process "https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=ProPlus2019Retail&platform=x64&language=ru-ru&version=O16GA"
    $result = [System.Windows.Forms.MessageBox]::Show('Для онлайн-установки нужно обойти гео-ограничения. Для этого: запустите exe-файл, дождитесь ошибки "Сбой установки", нажмите "Да" в этом окне. После этого перезапустите exe файл установщика!', $app, [System.Windows.Forms.MessageBoxButtons]::YesNo, [System.Windows.Forms.MessageBoxIcon]::Information)
    if ($result -eq [System.Windows.Forms.DialogResult]::Yes) {
        Start-Process 
    }
    [System.Windows.Forms.MessageBox]::Show("Для установки нужно:" + [Environment]::NewLine + "1. Запустить exe-файл" + [Environment]::NewLine + '2. Дождаться ошибки "Сбой установки" и закрыть установщик' + [Environment]::NewLine + '3. Зайти на вкладку "Решение проблем" в активаторе и выбрать "Обойти гео-ограничения на Online-установку Office"' + [Environment]::NewLine + "4. Запустить установщик снова", "MalwTool", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
})

$DlOffice2019ISO.Add_Click({
    Start-Process "https://officecdn.microsoft.com/db/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/ru-ru/ProPlus2019Retail.img"
})

$DlOffice2016Installer.Add_Click({
    Start-Process "https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=ProfessionalRetail&platform=x64&language=ru-ru&version=O16GA"
    $result = [System.Windows.Forms.MessageBox]::Show('Для онлайн-установки нужно обойти гео-ограничения. Для этого: запустите exe-файл, дождитесь ошибки "Сбой установки", нажмите "Да" в этом окне. После этого перезапустите exe файл установщика!', "MalwTool;", [System.Windows.Forms.MessageBoxButtons]::YesNo, [System.Windows.Forms.MessageBoxIcon]::Information)
    if ($result -eq [System.Windows.Forms.DialogResult]::Yes) {
        Start-Process 
    }
    [System.Windows.Forms.MessageBox]::Show("Для установки нужно:" + [Environment]::NewLine + "1. Запустить exe-файл" + [Environment]::NewLine + '2. Дождаться ошибки "Сбой установки" и закрыть установщик' + [Environment]::NewLine + '3. Зайти на вкладку "Решение проблем" в активаторе и выбрать "Обойти гео-ограничения на Online-установку Office"' + [Environment]::NewLine + "4. Запустить установщик снова", "MalwTool", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
})

$DlOffice2016ISO.Add_Click({
    Start-Process "https://officecdn.microsoft.com/db/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/ru-ru/ProfessionalRetail.img"
})

$DlOffice2013Installer.Add_Click({
    Start-Process "https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=ProPlusRetail&platform=x64&language=ru-ru&version=O15GA"
})

$DlOffice2013ISO.Add_Click({
    Start-Process "https://officecdn.microsoft.com.edgesuite.net/db/39168D7E-077B-48E7-872C-B232C3E72675/media/ru-ru/ProfessionalRetail.img"
})

$rufus.Add_Click({
    New-Item -Path "$env:temp\$app" -ItemType Directory > $null
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $wc = New-Object net.webclient
    $wc.DownloadFile('https://github.com/pbatard/rufus/releases/download/v4.6/rufus-4.6.exe', "$env:temp\$app\rufus.exe")
    Set-Location $env:SystemRoot\System32
    ./cmd.exe /c start "" "$env:temp\$app\rufus.exe"
})

#########

$winwifipassman = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(6, 6)
    Size = [System.Drawing.Size]::new(251, 23)
    TabIndex = 0
    Text = "Узнать пароли от сохранённых Wi-Fi сетей"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($winwifipassman, "Перед запуском убедитесь, что Wi-Fi сейчас включен")

$explorerext = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(263, 6)
    Size = [System.Drawing.Size]::new(274, 23)
    TabIndex = 3
    Text = "Отображать расширения файлов в проводнике"
    UseVisualStyleBackColor = $true
}

$winget = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 35)
    Size = [System.Drawing.Size]::new(113, 23)
    TabIndex = 1
    Text = "Установить winget"
    UseVisualStyleBackColor = $true
}

$store = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(127, 35)
    Size = [System.Drawing.Size]::new(160, 23)
    TabIndex = 2
    Text = "Установить Microsoft Store"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($store, "Только для LTSC-версий Windows без установленного Microsoft Store!")

$driversbackup = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 64)
    Size = [System.Drawing.Size]::new(208, 23)
    TabIndex = 4
    Text = "Резервное копирование драйверов"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($driversbackup, 'Перед переустановкой Windows лучше сделать резервную копию всех драйверов, чтобы потом не мучаться с ними после переустановки, а просто выбрать "Восстановление" здесь')

$driversrestore = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(222, 64)
    Size = [System.Drawing.Size]::new(165, 23)
    TabIndex = 5
    Text = "Восстановление драйверов"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($driversrestore, 'Перед переустановкой Windows лучше сделать резервную копию всех драйверов, чтобы потом не мучаться с ними после переустановки, а просто выбрать "Восстановление" здесь')

$edgeuninstall = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 93)
    Size = [System.Drawing.Size]::new(208, 23)
    TabIndex = 6
    Text = "Полностью удалить Microsoft Edge"
    UseVisualStyleBackColor = $true
}

$delspyfiles = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(222, 93)
    Size = [System.Drawing.Size]::new(183, 23)
    TabIndex = 7
    Text = "Удалить шпионские exe-файлы"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($delspyfiles, "Удалить CompatTelRunner.exe и wsqmcons.exe")

$spicetify = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 122)
    Size = [System.Drawing.Size]::new(208, 23)
    TabIndex = 8
    Text = "Установить Spicetify"
    UseVisualStyleBackColor = $true
}

$edit_hosts = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(222, 122)
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
    New-Item -Path "$env:temp\$app" -ItemType Directory > $null
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $wc = New-Object net.webclient
    $wc.DownloadFile('https://raw.githubusercontent.com/AveYo/fox/eab2269a598ad9e8120cf1d598d48384071ff476/Edge_Removal.bat', "$env:temp\$app\Edge_Removal.bat")
    Set-Location $env:SystemRoot\System32
    ./cmd.exe /c start "$env:temp\$app\Edge_Removal.bat"
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
    Start-Process powershell -ArgumentList @'
    -command
        $current_hosts = Get-Content -Path 'C:\Windows\System32\drivers\etc\hosts' -Raw
        $new_hosts = (Invoke-WebRequest -Uri 'https://pastebin.com/raw/5zvfV9Lp' -UseBasicParsing).Content
        $start_marker = '### t.me/immalware: hosts file'
        $end_marker = '### t.me/immalware: end hosts file'

        $pattern = '(?s)' + [regex]::Escape($start_marker) + '.*?' + [regex]::Escape($end_marker)

        if ($current_hosts -match $pattern) {
            $updated_hosts = [regex]::Replace($current_hosts, $pattern, $new_hosts)
        } else {
            $updated_hosts = $current_hosts + [Environment]::NewLine + $new_hosts
        }

        echo $updated_hosts
        $updated_hosts | Out-File -Encoding utf8 -FilePath 'C:\Windows\System32\drivers\etc\hosts' -Force
        pause
'@ -Verb RunAs
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
    Size = [System.Drawing.Size]::new(170, 23)
    TabIndex = 3
    Text = "Очистить лицензии Office16"
    UseVisualStyleBackColor = $true
}

$office_uninstall = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(221, 8)
    Size = [System.Drawing.Size]::new(176, 23)
    TabIndex = 1
    Text = "Инструмент удаления Office"
    UseVisualStyleBackColor = $true
}

$clear_winkms = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(48, 71)
    Size = [System.Drawing.Size]::new(192, 23)
    TabIndex = 3
    Text = "Сброс KMS-активации Windows"
    UseVisualStyleBackColor = $true
}

$sfc_scannow = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(247, 71)
    Size = [System.Drawing.Size]::new(260, 23)
    TabIndex = 2
    Text = "Проверить системные файлы на целостность"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($sfc_scannow, "sfc /scannow и DISM /Online /Cleanup-Image /RestoreHealth")

$telegram_fix = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 136)
    Size = [System.Drawing.Size]::new(268, 23)
    TabIndex = 9
    Text = "Исправить открытие ссылок Telegram Desktop"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($telegram_fix, "Если у вас не открываются ссылки вида tg:// в Telegram Desktop, нажмите эту кнопку, затем выберите путь до Telegram.exe")

$otherproblem = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 165)
    Size = [System.Drawing.Size]::new(154, 23)
    TabIndex = 8
    Text = "У меня другая проблема!"
    UseVisualStyleBackColor = $true
}
$tooltip.SetToolTip($otherproblem, "Даже если проблема не связана с $app, всё равно напишите")

@($winimg, $oimg, $clear_office16, $office_uninstall, $clear_winkms, $sfc_scannow, $telegram_fix, $otherproblem) | ForEach-Object { $ProblemsTab.Controls.Add($_) }

$clear_office16.Add_Click({
    if (test-path "$env:ProgramFiles\Microsoft Office\Office16\ospp.vbs"){ 
        $path = "$env:ProgramFiles\Microsoft Office\Office16\"
    }
    elseIf (test-path "$(env:ProgramFiles(x86))\Microsoft Office\Office16\ospp.vbs") {
        $path = "$(env:ProgramFiles(x86))\Microsoft Office\Office16\"
    }
    else {
        [System.Windows.Forms.MessageBox]::Show("Папка Office16 не найдена!", $app, [System.Windows.Forms.MessageBoxButtons]::OK,[System.Windows.Forms.MessageBoxIcon]::Error)
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
    [System.Windows.Forms.MessageBox]::Show("All Office16 licenses have been removed.", $app, [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
    exit
})

$office_uninstall.Add_Click({
    New-Item -Path "$env:temp\$app" -ItemType Directory > $null
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $wc = New-Object net.webclient
    $wc.DownloadFile('https://outlookdiagnostics.azureedge.net/sarasetup/SetupProd_OffScrub.exe', "$env:temp\$app\SetupProd_OffScrub.exe")
    Set-Location $env:SystemRoot\System32
    ./cmd.exe /c start "" "$env:temp\$app\SetupProd_OffScrub.exe"
    [System.Windows.Forms.MessageBox]::Show("тут гайд типа будет", $app, [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
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
        [System.Windows.Forms.MessageBox]::Show("Применено!", $app, "OK", "Information")
    }
})

$otherproblem.Add_Click({
    $tabs.SelectedTab = $InfoTab
})

######

$malwtool = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(8, 5)
    Size = [System.Drawing.Size]::new(102, 15)
    TabIndex = 1
    Text = "$app 2.0"
}

$malwru = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 23)
    Size = [System.Drawing.Size]::new(109, 23)
    TabIndex = 0
    Text = "Статья на Malw.ru"
    UseVisualStyleBackColor = $true
}

$lolzteam = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(123, 23)
    Size = [System.Drawing.Size]::new(109, 23)
    TabIndex = 2
    Text = "Тема на Lolzteam"
    UseVisualStyleBackColor = $true
}

$github = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(238, 23)
    Size = [System.Drawing.Size]::new(56, 23)
    TabIndex = 3
    Text = "GitHub"
    UseVisualStyleBackColor = $true
}

$questions = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(8, 91)
    Size = [System.Drawing.Size]::new(86, 15)
    TabIndex = 4
    Text = "Есть вопросы? Даже если они не связаны с $app, буду рад помочь!"
}

$telegram = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 109)
    Size = [System.Drawing.Size]::new(124, 23)
    TabIndex = 5
    Text = "Написать в Telegram"
    UseVisualStyleBackColor = $true
}

$lolzteam2 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(138, 109)
    Size = [System.Drawing.Size]::new(156, 23)
    TabIndex = 6
    Text = "Написать в теме Lolzteam"
    UseVisualStyleBackColor = $true
}

$github2 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(300, 109)
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
    Start-Process "https://github.com/ImMALWARE/$app"
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

$form.Controls.Add($tabs)
$form.ShowDialog()