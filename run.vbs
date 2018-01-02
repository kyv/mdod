Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs1 = "cmd /c .\pinky-1.0\allinoneruby.exe .\pinky-1.0\pinky.rb"
strArgs2 = ".\FireFoxPortable\FirefoxPortable.exe http://localhost:8000"
oShell.Run strArgs1, 0, false
oShell.Run strArgs2, 0, false