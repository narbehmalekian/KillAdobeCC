# KillAdobeCC
Forcibly terminates Adobe background tasks because when you click "Exit Creative Cloud", Adobe thinks you want "Run in the background".

I haven't tested what happens when you run this script while you have Photoshop, or another Adobe programs open, but I imagine it would NOT go well. Please save your work before killing background tasks.

The script kills the following tasks:
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
