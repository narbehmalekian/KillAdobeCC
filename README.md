# KillAdobeCC
This script forcibly terminates Adobe background tasks, because when you click "Exit Creative Cloud", Adobe decides to run in the background.

<h3>⚠️ RUN THIS SCRIPT AT YOUR OWN RISK!</h3>

> I haven't tested what happens when this script is run while Photoshop, or other Adobe programs are running, but I imagine it would NOT go well. Please save your work before killing Adobe background tasks.

<h2>Targetted Adobe Processes</h2>
  
  - AGMService
  - acrotray
  - adobeupdateservice
  - armsvc
  - adobe_licensing_helper
  - agsservice
  - CCLibrary
  - CCXProcess
  - CoreSync
  - Creative Cloud Helper
  - Creative Cloud
  - Adobe Desktop Service
  - CRWindowsClientService
  - Adobe CEF Helper
  - AdobeIPCBroker
  - AdobeCollabSync
  - AcrobatNotificationClient
  - AdobeExtensionsService
  
[Process Reference](https://helpx.adobe.com/x-productkb/global/adobe-background-processes.html "Adobe's article explaining many of the background processes")

<h2>Troubleshooting</h2><h3>PowerShell error: Running scripts is disabled on this system</h3>

> Powershell does not allow you to run scripts by default.
> Change the permissions with an administrator PowerShell window using the following command

```powershell
Set-ExecutionPolicy RemoteSigned
```
