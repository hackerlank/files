@net use Z: /USER:blaketang \\10.6.207.84\blaketang 131457
@net use A: /USER:blaketang \\10.6.207.84\blaketang\qzone\application 131457
@net use Y: /USER:blaketang \\10.6.207.61\blaketang 131457
del R:\temp\*.* /F /S /A /Q
del R:\temp\* /F /S /A /Q
RD /S /Q R:\temp
MD R:\Temp
:MD R:\Qzone
MD R:\Cache\Firefox
MD R:\Cache\IExplorer
MD R:\Cache\Chrome
start /MIN D:\Tools\boot\windows_hotkey.ahk

