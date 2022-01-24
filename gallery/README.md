Steam Styler gallery
====================

Style previews in original resolution.

WebP image viewer, such as [qimgv](https://github.com/easymodo/qimgv "Download WebP viewer"), for example, must be installed on your system for previews to work locally.

(The `preview` subfolder contains smaller previews intended for GitHub.)

Available styles
----------------

![Ubi style](https://raw.githubusercontent.com/ubihazard/steam-styler/main/gallery/preview/ubi.webp)

[Ubi](https://raw.githubusercontent.com/ubihazard/steam-styler/main/gallery/ubi.webp)

![Default style](https://raw.githubusercontent.com/ubihazard/steam-styler/main/gallery/preview/default.webp)

[Default](https://raw.githubusercontent.com/ubihazard/steam-styler/main/gallery/default.webp)

Creating gallery previews
-------------------------

All previews must be saved in `WebP` format for maximum compression and visual fidelity. `JPEG` is not allowed due to how bad it performs for screenshots, even with maximum quality preset.

Images in the `gallery` folder, except `default.webp` and `ubi.webp`, must be saved with the maximum *lossy* quality preset. Only the two original styles are preserved lossless for wider demonstration purposes. Example conversion command with `cwebp` encoder [by Google](https://developers.google.com/speed/webp/docs/precompiled "Download cwebp encoder"):

```sh
cwebp -q 100 style.png -o style.webp
```

Web previews in the `gallery/preview` subfolder are `600px` wide and are encoded with lesser quality setting of `90`:

```sh
cwebp -q 90 -resize 600 0 style.png -o style.webp
```

In both examples above `style.png` is an original cropped screenshot.
