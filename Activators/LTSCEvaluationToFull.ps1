# Конвертировать Windows Enterprise LTSC Evaluation в полную версию Windows Enterprise LTSC
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$wc = New-Object net.webclient
New-Item -Path "$env:temp\MalwActivator" -ItemType Directory > $null
$wc.DownloadFile('https://archive.org/download/ltscevaluation-to-full/LTSCEvaluationToFull.zip', "$env:temp\MalwActivator\LTSCEvaluationToFull.zip")
Expand-Archive -Path "$env:temp\MalwActivator\LTSCEvaluationToFull.zip" -DestinationPath "$env:SystemRoot\System32\spp\tokens\skus"
cd $env:SystemRoot\System32
cscript.exe //nologo slmgr.vbs /rilc
cscript.exe //nologo slmgr.vbs /upk
cscript.exe //nologo slmgr.vbs /ckms
cscript.exe //nologo slmgr.vbs /cpky
cscript.exe //nologo slmgr.vbs /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D
sc config LicenseManager start= auto
net start LicenseManager
sc config wuauserv start= auto
net start wuauserv