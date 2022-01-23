@echo off
cd /d "%~dp0"

:: Installer script to automatically create
:: the Start menu shortcut.

set lnkhome=%~dp0
set lnkhome=%lnkhome:~0,-1%
set lnkpath=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Steam Styler.lnk
del /q /f "%lnkpath%" > nul

set lnkhome=%lnkhome:\=\\%
set lnkpath=%lnkpath:\=\\%
set jsepath=%TEMP%\steamstyler%RANDOM%%RANDOM%%RANDOM%.jse
echo var shell = WScript.CreateObject("WScript.Shell"); > "%jsepath%"
echo var lnk = shell.CreateShortcut("%lnkpath%"); >> "%jsepath%"
echo lnk.TargetPath = "%lnkhome%\\app.hta"; >> "%jsepath%"
echo lnk.WorkingDirectory = "%lnkhome%"; >> "%jsepath%"
echo lnk.Description = "Steam Styler"; >> "%jsepath%"
echo lnk.IconLocation = "%lnkhome%\\app.ico"; >> "%jsepath%"
echo lnk.Save(); >> "%jsepath%"
cscript.exe //E:JScript //NoLogo "%jsepath%"
del /q /f "%jsepath%"
