'Show/Hide System Files by Herby

Dim WSHShell
Set WSHShell = WScript.CreateObject("WScript.Shell")
sTitle1 = "SSH=0"
sTitle2 = "SSH=1"

if WSHShell.RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden") = 1 then

WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden", "0", "REG_DWORD"
WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden", "2", "REG_DWORD"
'WSHShell.SendKeys "{F5}+{F10}e"
'WSHShell.Popup "Poof, they're gone!", 1, sTitle1, vbInformation

else

WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden", "1", "REG_DWORD"
WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden", "1", "REG_DWORD"
'WSHShell.SendKeys "{F5}+{F10}e"
'WSHShell.Popup "Here they are!", 1, sTitle2, vbInformation

end if

Set WSHShell = Nothing
WScript.Quit(0)