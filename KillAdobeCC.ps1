Write-Host "Purging all AdobeCC background processes..."
Write-Host ""

Stop-Process -Name adobeupdateservice -force -ErrorAction SilentlyContinue -ErrorVariable NotRunning
if($NotRunning){ Write-Host "adobeupdateservice - not running" -ForegroundColor DarkGray }
else { Write-Host " adobeupdateservice - PROCESS TERMINATED " -ForegroundColor White -BackgroundColor DarkRED }

Stop-Process -Name armsvc -force -ErrorAction SilentlyContinue -ErrorVariable NotRunning
if($NotRunning){ Write-Host "armsvc - not running" -ForegroundColor DarkGray }
else { Write-Host " armsvc - PROCESS TERMINATED " -ForegroundColor White -BackgroundColor DarkRED }

Stop-Process -Name adobe_licensing_helper -force -ErrorAction SilentlyContinue -ErrorVariable NotRunning
if($NotRunning){ Write-Host "adobe_licensing_helper - not running" -ForegroundColor DarkGray }
else { Write-Host " adobe_licensing_helper - PROCESS TERMINATED " -ForegroundColor White -BackgroundColor DarkRED }

Stop-Process -Name agsservice -force -ErrorAction SilentlyContinue -ErrorVariable NotRunning
if($NotRunning){ Write-Host "agsservice - not running" -ForegroundColor DarkGray }
else { Write-Host " agsservice - PROCESS TERMINATED " -ForegroundColor White -BackgroundColor DarkRED }

Stop-Process -Name CCLibrary -force -ErrorAction SilentlyContinue -ErrorVariable NotRunning
if($NotRunning){ Write-Host "CCLibrary - not running" -ForegroundColor DarkGray }
else { Write-Host " CCLibrary - PROCESS TERMINATED " -ForegroundColor White -BackgroundColor DarkRED }

Stop-Process -Name CCXProcess -force -ErrorAction SilentlyContinue -ErrorVariable NotRunning
if($NotRunning){ Write-Host "CCXProcess - not running" -ForegroundColor DarkGray }
else { Write-Host " CCXProcess - PROCESS TERMINATED " -ForegroundColor White -BackgroundColor DarkRED }

Stop-Process -Name CoreSync -force -ErrorAction SilentlyContinue -ErrorVariable NotRunning
if($NotRunning){ Write-Host "CoreSync - not running" -ForegroundColor DarkGray }
else { Write-Host " CoreSync - PROCESS TERMINATED " -ForegroundColor White -BackgroundColor DarkRED }

Stop-Process -Name "Creative Cloud Helper" -force -ErrorAction SilentlyContinue -ErrorVariable NotRunning
if($NotRunning){ Write-Host "Creative Cloud Helper - not running" -ForegroundColor DarkGray }
else { Write-Host " Creative Cloud Helper - PROCESS TERMINATED " -ForegroundColor White -BackgroundColor DarkRED }

Stop-Process -Name "Creative Cloud" -force -ErrorAction SilentlyContinue -ErrorVariable NotRunning
if($NotRunning){ Write-Host "Creative Cloud - not running" -ForegroundColor DarkGray }
else { Write-Host " Creative Cloud - PROCESS TERMINATED " -ForegroundColor White -BackgroundColor DarkRED }

Stop-Process -Name "Adobe Desktop Service" -force -ErrorAction SilentlyContinue -ErrorVariable NotRunning
if($NotRunning){ Write-Host "Adobe Desktop Service - not running" -ForegroundColor DarkGray }
else { Write-Host " Adobe Desktop Service - PROCESS TERMINATED " -ForegroundColor White -BackgroundColor DarkRED }

Stop-Process -Name CRWindowsClientService -force -ErrorAction SilentlyContinue -ErrorVariable NotRunning
if($NotRunning){ Write-Host "CRWindowsClientService - not running" -ForegroundColor DarkGray }
else { Write-Host " CRWindowsClientService - PROCESS TERMINATED " -ForegroundColor White -BackgroundColor DarkRED }

Stop-Process -Name "Adobe CEF Helper" -force -ErrorAction SilentlyContinue -ErrorVariable NotRunning
if($NotRunning){ Write-Host "Adobe CEF Helper - not running" -ForegroundColor DarkGray }
else { Write-Host " Adobe CEF Helper - PROCESS TERMINATED " -ForegroundColor White -BackgroundColor DarkRED }

Stop-Process -Name AdobeIPCBroker -force -ErrorAction SilentlyContinue -ErrorVariable NotRunning
if($NotRunning){ Write-Host "AdobeIPCBroker - not running" -ForegroundColor DarkGray }
else { Write-Host " AdobeIPCBroker - PROCESS TERMINATED " -ForegroundColor White -BackgroundColor DarkRED }

Write-Host ""
Write-Host "You may now close this window."
timeout /t 30