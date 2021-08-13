# telegram-based-wojak
Source images and convert script for **based wojak** stickerpack.

# Usage
## Prerequisites
 - [make](https://www.gnu.org/software/make/)
 - [imagemagick](https://imagemagick.org) - used to convert source images into stickers
 - [sxiv](https://github.com/muennich/sxiv) - optional, can be used to gallery-preview stickerpack

## Generating stickerpack
In order to generate telegram-adapted stickers from the images in `src` directory, simply run:
```bash
$ make
```
Generated stickers are located in `out` directory, you can preview them with `sxiv`:
```
$ make view
```

# TODO
 - Automatically publish new stickers using `CircleCI`

# Contributing
Feel free to submit a *Pull Request* and add more stickers!

