# Source: https://github.com/ImMALWARE/MalwActivator/
# Made by MALWARE (https://malw.ru/pages/contacts)
Add-Type -AssemblyName System.Windows.Forms
Add-Type -Name Window -Namespace Console -MemberDefinition '[DllImport("Kernel32.dll")]public static extern IntPtr GetConsoleWindow();[DllImport("user32.dll")]public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);'
[void][Console.Window]::ShowWindow([Console.Window]::GetConsoleWindow(), 0)
[System.Windows.Forms.Application]::EnableVisualStyles()

$form = New-Object System.Windows.Forms.Form -Property @{
    StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
    FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
    MaximizeBox = $false
    Text = "MalwActivator"
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

$activationTab = New-Object System.Windows.Forms.TabPage -Property @{
    Location = [System.Drawing.Point]::new(4, 24)
    Name = "ActivationTab"
    Padding = [System.Windows.Forms.Padding]::new(3)
    Size = [System.Drawing.Size]::new(619, 206)
    TabIndex = 0
    Text = "Активация"
    UseVisualStyleBackColor = $true
}

$downloadsTab = New-Object System.Windows.Forms.TabPage -Property @{
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

$tabs.TabPages.Add($activationTab)
$tabs.TabPages.Add($downloadsTab)
$tabs.TabPages.Add($functionsTab)
$tabs.TabPages.Add($problemsTab)
$tabs.TabPages.Add($infoTab)

$tooltip = New-Object System.Windows.Forms.ToolTip -Property @{
    AutoPopDelay = 5000
    InitialDelay = 5
    ReshowDelay = 100
    ShowAlways = $true
}

$radioButton1 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Checked = $true
    Location = [System.Drawing.Point]::new(6, 6)
    Name = "radioButton1"
    Size = [System.Drawing.Size]::new(143, 19)
    TabIndex = 1
    TabStop = $true
    Text = "Windows 10/11 (HWID)"
    UseVisualStyleBackColor = $true
}

$radioButton2 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(6, 31)
    Name = "radioButton2"
    Size = [System.Drawing.Size]::new(130, 19)
    TabIndex = 2
    Text = "Windows 8.1/8 KMS"
    UseVisualStyleBackColor = $true
}

$radioButton4 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(214, 31)
    Name = "radioButton4"
    Size = [System.Drawing.Size]::new(83, 19)
    TabIndex = 4
    Text = "Office 2021"
    UseVisualStyleBackColor = $true
}

$radioButton5 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(6, 56)
    Name = "radioButton5"
    Size = [System.Drawing.Size]::new(193, 19)
    TabIndex = 5
    Text = "Windows Server 2022/2019/2016"
    UseVisualStyleBackColor = $true
}

$radioButton6 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(214, 106)
    Name = "radioButton6"
    Size = [System.Drawing.Size]::new(83, 19)
    TabIndex = 6
    Text = "Office 2013"
    UseVisualStyleBackColor = $true
}

$radioButton7 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(373, 6)
    Name = "radioButton7"
    Size = [System.Drawing.Size]::new(201, 19)
    TabIndex = 8
    Text = "MultiMC/PolyMC/Prism Launcher"
    UseVisualStyleBackColor = $true
}

$radioButton8 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(373, 31)
    Name = "radioButton8"
    Size = [System.Drawing.Size]::new(81, 19)
    TabIndex = 9
    Text = "TLauncher"
    UseVisualStyleBackColor = $true
}

$radioButton9 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(373, 56)
    Name = "radioButton9"
    Size = [System.Drawing.Size]::new(109, 19)
    TabIndex = 10
    Text = "Macro Recorder"
    UseVisualStyleBackColor = $true
}

$radioButton10 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(373, 81)
    Name = "radioButton10"
    Size = [System.Drawing.Size]::new(88, 19)
    TabIndex = 11
    Text = "MobaXterm"
    UseVisualStyleBackColor = $true
}

$radioButton11 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(373, 106)
    Name = "radioButton11"
    Size = [System.Drawing.Size]::new(64, 19)
    TabIndex = 12
    Text = "Charles"
    UseVisualStyleBackColor = $true
}

$radioButton12 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(373, 131)
    Name = "radioButton12"
    Size = [System.Drawing.Size]::new(244, 19)
    TabIndex = 13
    Text = "Visual Studio 2022 Professional/Enterprise"
    UseVisualStyleBackColor = $true
}

$activateButton = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(515, 169)
    Name = "Activate"
    Size = [System.Drawing.Size]::new(96, 23)
    TabIndex = 14
    Text = "Активировать!"
    UseVisualStyleBackColor = $true
}

# Создание и настройка дополнительных радиокнопок
$radioButton3 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(214, 6)
    Name = "radioButton3"
    Size = [System.Drawing.Size]::new(79, 19)
    TabIndex = 15
    Text = "Office 365"
    UseVisualStyleBackColor = $true
}

$radioButton14 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(214, 56)
    Name = "radioButton14"
    Size = [System.Drawing.Size]::new(84, 19)
    TabIndex = 17
    Text = "Office 2019"
    UseVisualStyleBackColor = $true
}

$radioButton13 = New-Object System.Windows.Forms.RadioButton -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(214, 81)
    Name = "radioButton13"
    Size = [System.Drawing.Size]::new(84, 19)
    TabIndex = 16
    Text = "Office 2016"
    UseVisualStyleBackColor = $true
}

$DlWin10 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 6)
    Name = "DlWin10"
    Size = [System.Drawing.Size]::new(83, 23)
    Text = "Windows 10"
    UseVisualStyleBackColor = $true
}

$DlWin11 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 64)
    Name = "DlWin11"
    Size = [System.Drawing.Size]::new(83, 23)
    Text = "Windows 11"
    UseVisualStyleBackColor = $true
}

$DlWinLtsc = New-Object System.Windows.Forms.Button -Property @{
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

$Dl2022 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(215, 6)
    Name = "Dl2022"
    Size = [System.Drawing.Size]::new(136, 23)
    Text = "Windows Server 2022"
    UseVisualStyleBackColor = $true
}

$button1 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(215, 35)
    Name = "button1"
    Size = [System.Drawing.Size]::new(136, 23)
    Text = "Windows Server 2019"
    UseVisualStyleBackColor = $true
}

$button2 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(215, 64)
    Name = "button2"
    Size = [System.Drawing.Size]::new(136, 23)
    Text = "Windows Server 2016"
    UseVisualStyleBackColor = $true
}

$button3 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(215, 93)
    Name = "button3"
    Size = [System.Drawing.Size]::new(136, 23)
    Text = "Windows Server 2012"
    UseVisualStyleBackColor = $true
}

$button4 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 122)
    Name = "button4"
    Size = [System.Drawing.Size]::new(83, 23)
    Text = "Windows 8.1"
    UseVisualStyleBackColor = $true
}

$button5 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(437, 7)
    Name = "button5"
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "Online"
    UseVisualStyleBackColor = $true
}

$button6 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(522, 7)
    Name = "button6"
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "ISO"
    UseVisualStyleBackColor = $true
}

$button7 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(437, 36)
    Name = "button7"
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "Online"
    UseVisualStyleBackColor = $true
}

$button8 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(437, 65)
    Name = "button8"
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "Online"
    UseVisualStyleBackColor = $true
}

$button9 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(437, 93)
    Name = "button9"
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "Online"
    UseVisualStyleBackColor = $true
}

$button10 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(522, 36)
    Name = "button10"
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "ISO"
    UseVisualStyleBackColor = $true
}

$button11 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(522, 64)
    Name = "button11"
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "ISO"
    UseVisualStyleBackColor = $true
}

$button12 = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(522, 93)
    Name = "button12"
    Size = [System.Drawing.Size]::new(68, 23)
    Text = "ISO"
    UseVisualStyleBackColor = $true
}

$label2 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(362, 11)
    Name = "label2"
    Size = [System.Drawing.Size]::new(69, 15)
    Text = "Office 2021:"
}

$label3 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(362, 39)
    Name = "label3"
    Size = [System.Drawing.Size]::new(70, 15)
    Text = "Office 2019:"
}

$label4 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(362, 68)
    Name = "label4"
    Size = [System.Drawing.Size]::new(70, 15)
    Text = "Office 2016:"
}

$label5 = New-Object System.Windows.Forms.Label -Property @{
    AutoSize = $true
    Location = [System.Drawing.Point]::new(361, 97)
    Name = "label5"
    Size = [System.Drawing.Size]::new(69, 15)
    Text = "Office 2013:"
}

$newButton = New-Object System.Windows.Forms.Button -Property @{
    Location = [System.Drawing.Point]::new(8, 151)  # Расположить кнопку под кнопкой $button4
    Name = "NewButton"
    Size = [System.Drawing.Size]::new(312, 23)  # Размер такой же, как у $button4
    Text = "Rufus — инструмент для записи ISO образов на флешку"
    UseVisualStyleBackColor = $true
}

# Добавление элементов на вкладку
$downloadsTab.Controls.Add($DlWin10)
$downloadsTab.Controls.Add($DlWin11)
$downloadsTab.Controls.Add($DlWinLtsc)
$downloadsTab.Controls.Add($Dl11Ltsc)
$downloadsTab.Controls.Add($Dl2022)
$downloadsTab.Controls.Add($button1)
$downloadsTab.Controls.Add($button2)
$downloadsTab.Controls.Add($button3)
$downloadsTab.Controls.Add($button4)
$downloadsTab.Controls.Add($button5)
$downloadsTab.Controls.Add($button6)
$downloadsTab.Controls.Add($button7)
$downloadsTab.Controls.Add($button8)
$downloadsTab.Controls.Add($button9)
$downloadsTab.Controls.Add($button10)
$downloadsTab.Controls.Add($button11)
$downloadsTab.Controls.Add($button12)
$downloadsTab.Controls.Add($label2)
$downloadsTab.Controls.Add($label3)
$downloadsTab.Controls.Add($label4)
$downloadsTab.Controls.Add($label5)
$downloadsTab.Controls.Add($newButton)

$tooltip.SetToolTip($radioButton1, "Активация Windows 10 или 11 всех изданий (в том числе LTSC) по HWID")
$tooltip.SetToolTip($radioButton2, "Активация Windows 8 или Windows 8.1 через KMS")
$tooltip.SetToolTip($radioButton4, "Активация Office 2021 путём добавления файла sppc.dll" + [Environment]::NewLine + "И всё-таки, я бы порекомендовал выбрать Office 365." + [Environment]::NewLine + "Активация сработает и для Office 365, 2016, 2019. Office потом автоматически конвертируется в 2021.")
$tooltip.SetToolTip($radioButton5, "Активация Windows Server 2022, Windows Server Standard, Windows Server Datacenter, 2019, 2016, 2012, 2012 R2, 1803, 1709")
$tooltip.SetToolTip($radioButton6, "Активация Office 2013 с помощью добавления файла sppc.dll")
$tooltip.SetToolTip($radioButton3, "Активация Office 365 путём добавления файла sppc.dll" + [Environment]::NewLine + "Office 365 — всегда самая актуальная версия Office, лучше выбрать этот вариант." + [Environment]::NewLine + "Активация сработает и для Office 2016, 2019, 2021. Office потом автоматически конвертируется в 365.")
$tooltip.SetToolTip($radioButton7, "Разрешить создание автономного аккаунта Minecraft в MultiMC, PolyMC или Prism Launcher без добавления аккаунта Microsoft")
$tooltip.SetToolTip($radioButton8, 'Отключить добавление рекламных серверов от TLauncher в раздел "Сетевая игра" в Minecraft')
$tooltip.SetToolTip($radioButton9, "Получить ключ активации Macro Recorder")
$tooltip.SetToolTip($radioButton10, "Активировать MobaXterm последней версии." + [Environment]::NewLine + "Если после активации MobaXterm перестал открываться, обновите его до последней версии на mobaxterm.mobatek.net")
$tooltip.SetToolTip($radioButton11, "Получить ключ активации Charles 4.6.7")
$tooltip.SetToolTip($radioButton12, "Активировать Visual Studio 2022 Professional/Enterprise")
$tooltip.SetToolTip($radioButton13, "Активация Office 2016 путём добавления файла sppc.dll" + [Environment]::NewLine + "2016 — уже давно устаревшая версия." + [Environment]::NewLine + "Активация сработает и для Office 365, 2019, 2021. Office потом автоматически конвертируется в 2016.")
$tooltip.SetToolTip($radioButton14, "Активация Office 2019 путём добавления файла sppc.dll" + [Environment]::NewLine + "Активация сработает и для Office 365, 2016, 2021. Office потом автоматически конвертируется в 2019.")
$toolTip.SetToolTip($DlWin10, "ISO образ Windows 10 22H2 с официального сайта Microsoft")
$toolTip.SetToolTip($DlWin11, "ISO образ Windows 11 23H2 с официального сайта Microsoft")
$toolTip.SetToolTip($DlWinLtsc, "ISO образ Windows 10 LTSC 2021")
$toolTip.SetToolTip($Dl11Ltsc, "ISO образ Windows 11 LTSC 2024." + [Environment]::NewLine + "Английская версия! Русский язык можно будет поставить в Параметрах после установки.")
$toolTip.SetToolTip($Dl2022, "ISO образ Windows Server 2022")
$toolTip.SetToolTip($button1, "ISO образ Windows Server 2019")
$toolTip.SetToolTip($button2, "ISO образ Windows Server 2016")
$toolTip.SetToolTip($button3, "ISO образ Windows Server 2012")
$toolTip.SetToolTip($button4, "ISO образ Windows 8.1 с официального сайта Microsoft")
$toolTip.SetToolTip($button5, "Онлайн-установщик Office с официального сайта Microsoft. Для установки нужно:" + [Environment]::NewLine + "1. Запустить exe-файл" + [Environment]::NewLine + '2. Дождаться ошибки "Сбой установки" и закрыть установщик' + '3. Зайти на вкладку "Решение проблем" в активаторе и выбрать "Обойти гео-ограничения на Online-установку Office"' + [Environment]::NewLine + "4. Запустить установщик снова")
$toolTip.SetToolTip($button6, "ISO-образ Office с официального сайта Microsoft. Для установки:" + [Environment]::NewLine + "1. Откройте ISO-образ, он должен подключиться как отдельный диск (или распакуйте его куда-нибудь через 7-Zip)" + [Environment]::NewLine + "2. Запустите setup.exe и дождитесь установки" + [Environment]::NewLine + '3. Чтобы убрать этот "отдельный диск", нужно нажать на него правой кнопкой -> Извлечь.')
$toolTip.SetToolTip($button7, "Онлайн-установщик Office с официального сайта Microsoft. Для установки нужно:" + [Environment]::NewLine + "1. Запустить exe-файл" + [Environment]::NewLine + '2. Дождаться ошибки "Сбой установки" и закрыть установщик' + '3. Зайти на вкладку "Решение проблем" в активаторе и выбрать "Обойти гео-ограничения на Online-установку Office"' + [Environment]::NewLine + "4. Запустить установщик снова")
$toolTip.SetToolTip($button8, "Онлайн-установщик Office с официального сайта Microsoft. Для установки нужно:" + [Environment]::NewLine + "1. Запустить exe-файл" + [Environment]::NewLine + '2. Дождаться ошибки "Сбой установки" и закрыть установщик' + '3. Зайти на вкладку "Решение проблем" в активаторе и выбрать "Обойти гео-ограничения на Online-установку Office"' + [Environment]::NewLine + "4. Запустить установщик снова")
$toolTip.SetToolTip($button9, "Онлайн-установщик Office с официального сайта Microsoft. Для установки нужно:" + [Environment]::NewLine + "1. Запустить exe-файл" + [Environment]::NewLine + '2. Дождаться ошибки "Сбой установки" и закрыть установщик' + '3. Зайти на вкладку "Решение проблем" в активаторе и выбрать "Обойти гео-ограничения на Online-установку Office"' + [Environment]::NewLine + "4. Запустить установщик снова")
$toolTip.SetToolTip($button10, "ISO-образ Office с официального сайта Microsoft. Для установки:" + [Environment]::NewLine + "1. Откройте ISO-образ, он должен подключиться как отдельный диск (или распакуйте его куда-нибудь через 7-Zip)" + [Environment]::NewLine + "2. Запустите setup.exe и дождитесь установки" + [Environment]::NewLine + '3. Чтобы убрать этот "отдельный диск", нужно нажать на него правой кнопкой -> Извлечь.')
$toolTip.SetToolTip($button11, "ISO-образ Office с официального сайта Microsoft. Для установки:" + [Environment]::NewLine + "1. Откройте ISO-образ, он должен подключиться как отдельный диск (или распакуйте его куда-нибудь через 7-Zip)" + [Environment]::NewLine + "2. Запустите setup.exe и дождитесь установки" + [Environment]::NewLine + '3. Чтобы убрать этот "отдельный диск", нужно нажать на него правой кнопкой -> Извлечь.')
$toolTip.SetToolTip($button12, "ISO-образ Office с официального сайта Microsoft. Для установки:" + [Environment]::NewLine + "1. Откройте ISO-образ, он должен подключиться как отдельный диск (или распакуйте его куда-нибудь через 7-Zip)" + [Environment]::NewLine + "2. Запустите setup.exe и дождитесь установки" + [Environment]::NewLine + '3. Чтобы убрать этот "отдельный диск", нужно нажать на него правой кнопкой -> Извлечь.')

# Добавляем элементы на вкладку
$activationTab.Controls.Add($radioButton1)
$activationTab.Controls.Add($radioButton2)
$activationTab.Controls.Add($radioButton4)
$activationTab.Controls.Add($radioButton5)
$activationTab.Controls.Add($radioButton6)
$activationTab.Controls.Add($radioButton7)
$activationTab.Controls.Add($radioButton8)
$activationTab.Controls.Add($radioButton9)
$activationTab.Controls.Add($radioButton10)
$activationTab.Controls.Add($radioButton11)
$activationTab.Controls.Add($radioButton12)
$activationTab.Controls.Add($activateButton)
$activationTab.Controls.Add($radioButton3)
$activationTab.Controls.Add($radioButton14)
$activationTab.Controls.Add($radioButton13)

$form.Controls.Add($tabs)
$form.ShowDialog()