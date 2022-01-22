Steam Theme Switcher
====================

Download the code as ZIP file and extract its contents into any directory.

Create a Windows shortcut to `steam-styler.jse` file and rename it to “Steam Styler”. Right-click the created shortcut and choose “Properties”. Change the “Target” field by prepending `C:\Windows\System32\wscript.exe ` in the beginning (note the single trailing space character) and appending ` ubi.css` at the end (again, not the single leading space character). (Change the `ubi.css` part to any other CSS theme you want.) Click “Apply” and “OK” to close the dialog.

An example of a correct-looking target field:

`C:\Windows\System32\wscript.exe C:\steam-styler\steam-styler.jse ubi.css`

(Assuming you extracted **Steam Styler** into `C:\steam-styler`.)

Press `Win+E` to open Windows Explorer, press `Ctrl+L` to change location and go to `%APPDATA%\Microsoft\Windows\Start Menu\Programs`. Copy the shortcut you created into this location.

Press the `Win` (Windows) key to open Start menu and launch **Steam Styler** to modify the Steam theme.
