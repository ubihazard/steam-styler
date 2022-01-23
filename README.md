Steam CSS Theme Switcher
========================

Download the code as ZIP file and extract its contents into any directory.

Create a Windows shortcut to `steam-styler.jse` file and rename it to “Steam Styler”. Right-click the created shortcut and choose “Properties”. Change the “Target” field by prepending `C:\Windows\System32\wscript.exe<space>` in the beginning (where `<space>` is a single space character) and appending `<space>ubi.css` at the end. (Change the `ubi.css` part to any other CSS theme you want.) Click `Apply` and `OK` to close the dialog.

An example of a correct-looking target field:

`C:\Windows\System32\wscript.exe C:\steam-styler\steam-styler.jse ubi.css`

(Assuming you extracted **Steam Styler** into `C:\steam-styler`.)

Press `Win+E` to open Windows Explorer, then press `Ctrl+L` to change location and go to `%APPDATA%\Microsoft\Windows\Start Menu\Programs`. Copy the shortcut you created into this location.

Press `Win` (Windows) key to open Start menu and launch **Steam Styler** to modify the Steam theme. If Steam is running you should notice changes immediately.
