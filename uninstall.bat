@echo off
cd /d "%~dp0"

:: Remove Steam Styler directory after running this script
:: to completely uninstall it from your system.

set lnkpath=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Steam Styler.lnk
del /q /f "%lnkpath%"
