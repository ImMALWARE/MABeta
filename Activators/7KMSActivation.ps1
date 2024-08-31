cd $env:SystemRoot\System32
cscript //nologo slmgr.vbs /ckms > $null
cscript //nologo slmgr.vbs /upk > $null
cscript //nologo slmgr.vbs /cpky > $null
cscript //nologo slmgr.vbs /ipk FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4 > $null # 7 Professional
cscript //nologo slmgr.vbs /ipk 33PXH-7Y6KF-2VJC9-XBBR8-HVTHH > $null # 7 Enterprise
cscript //nologo slmgr.vbs /skms kms.loli.best > $null
cscript //nologo slmgr.vbs /ato
pause