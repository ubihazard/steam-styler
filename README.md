Steam CSS Theme Switcher
========================

![Steam Styler](/gfx/icon256.png)

Manage Steam CSS customizations with comfort.

How to use
----------

Download the [latest release](/releases) and unzip its contents into any directory. Run `install.bat` to create a shortcut in Start menu. Press <kbd>Win</kbd> key and launch **Steam Styler**.

![Steam Styler](/gallery/preview/styler.webp "Steam Styler")

It is recommended for **Steam** to be running so that you can observe changes in real-time.

![Ubi style](/gallery/preview/ubi.webp "Ubi style")

You can see all currently available styles in the [gallery](/gallery#available-styles "Style previews").

Steam will revert back to original style with each update. So you will need to run Styler again to reapply your style.

![Default style](/gallery/preview/default.webp "Default style")

This is already easy to do with the GUI version, but it’s technically possible to automate the process even further so that Styler would run every time Steam updates. How exactly you are going to go about this is out of scope of this project and this guide, but the [command-line version](/#command-line-version) of Styler will certainly be of great help here.

Configuration
-------------

Steam Styler must be pointed to correct Steam installation folder in order to be able to modify its CSS. If your Steam isn’t installed at default location, launch Styler and click the “Steam path...” button to make it aware of your Steam whereabouts.

### Clean uninstall

Run `uninstall.bat` and move the Steam Styler folder into recycle bin.

Command-line version
--------------------

Steam Styler comes with a command-line version of its tool for use together with scripting engines and other automation scenarios. The advantage of command line version is that it allows to apply styles quickly without going through GUI.

In its simplest form it can be just a Windows shortcut which would reapply your configured style upon execution.

Manually create a shortcut to `styler.jse` file and rename it to “Steam Styler (Reapply)”. Right-click the created shortcut and choose “Properties”. Change the “Target” field by prepending `wscript.exe //E:JScript //NoLogo ` in the beginning (note the space character at the end). Change the icon to Styler icon included in the archive. Click `Apply` and `OK` to dismiss the dialog.

An example of a correct-looking target field:

```sh
C:\Windows\System32\wscript.exe //E:JScript //NoLogo "C:\Steam Styler\styler.jse"
```

(Assuming you extracted Styler into `C:\Steam Styler`.)

Press <kbd>Win+E</kbd> to open Windows Explorer, then press <kbd>Ctrl+L</kbd> to change location and go to `%APPDATA%\Microsoft\Windows\Start Menu\Programs`. Copy the shortcut you created into this location and delete the original one.

### Apply styles automatically

You can override the configured style and apply any other style by providing it as a command line argument at the end:

```sh
wscript.exe //E:JScript //NoLogo "C:\Steam Styler\styler.jse" ubi.css
```

Buy me a ☕
----------

If you like Steam Styler, [buy me a coffee](https://buymeacoff.ee/ubihazard "Support")!
