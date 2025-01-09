Write-Host $(if ($PSUICulture -eq "ru-RU") { "Активация MobaXterm" } else { "Activating MobaXterm" })

taskkill.exe /f /im mobaXterm.exe
$wc = New-Object net.webclient
$wc.DownloadFile("https://malw.pythonanywhere.com/mxt?v=$(Get-Content "$(env:ProgramFiles(x86))\Mobatek\MobaXterm\version.dat" -TotalCount 1)", "$(env:ProgramFiles(x86))\Mobatek\MobaXterm\Custom.mxtpro")
Write-Host $(if ($PSUICulture -eq "ru-RU") { "MobaXterm активирован!" } else { "MobaXterm is activated!" })
pause