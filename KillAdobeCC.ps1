# The following lines confirm that the script is running as an administrator
# code from: https://superuser.com/a/532109
param([switch]$Elevated)

function Test-Admin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
    $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

if ((Test-Admin) -eq $false)  {
    if ($elevated) {
        # tried to elevate, did not work, aborting
    } else {
        Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
    }
    exit
}
# End of Admin check

$ProcessList = @(
    'AGMService'
    'acrotray'
    'adobeupdateservice'
    'armsvc'
    'adobe_licensing_helper'
    'agsservice'
    'CCLibrary'
    'CCXProcess'
    'CoreSync'
    'Creative Cloud Helper'
    'Creative Cloud'
    'Adobe Desktop Service'
    'CRWindowsClientService'
    'Adobe CEF Helper'
    'AdobeIPCBroker'
    'AdobeCollabSync'
    'AcrobatNotificationClient'
    'AdobeExtensionsService'
    
    # Task names are found in the Details tab in Task Manager
    # Right clicking an item on the Processes tab will link you to the appropriate process in the Details tab via the "Go to Details" option
)

$Delay = 100 # in milliseconds, per item, this delay is just for fun. It can be set to 0 for near-instant runtime

Write-Host ""
Write-Host "Purging unwanted background processes..." -ForegroundColor Red
Write-Host ""

for( $i=0; $i -lt $ProcessList.count; $i++){
    $p = $ProcessList[$i]
    Write-Host -NoNewLine " checking:" $p -ForegroundColor White
    Start-Sleep -milliseconds $Delay
    Stop-Process -Name $p -force -ErrorAction SilentlyContinue -ErrorVariable NotRunning
    if($NotRunning){ Write-Host "`r not running:"$p -ForegroundColor DarkGray }
    else { Write-Host "`r PROCESS TERMINATED:"$p"" -ForegroundColor White -BackgroundColor DarkRED }
}

Write-Host ""
Write-Host "Done!"
Write-Host ""
Write-Host -NoNewLine "The window will close soon."
timeout /t 10