# JimmyMadeThat OpenSCAD 3D Printing Files

A collection of free 3D-printable OpenSCAD models, also available on [Ultimaker Thingiverse](https://www.thingiverse.com/jimmymadethat/designs) (and all compatible with the Thingiverse customizer).

## Printing

The `.stl` files for these models are already available in this repository (or on any of the linked websites above), so they can be used directly in your favorite slicer program (e.g., Bambu Studio, Ultimaker Cura, PrusaSlicer, Simplify3D) to slice and print as usual. If you want to make changes or customize these models, see below.

## Requirements to Build

 * [OpenSCAD](https://openscad.org/)
 * GNU Make (`make` command, if building from the command line)
 * ImageMagick (`convert` command, optional for generating preview images)
 * ExifTool (`exiftool` command, optional for generating preview images)

## Customize and Build

With `openscad` and `make` in our path,

```zsh
% cd path/to/this/repo
% make clean-models models
```

will delete all of the checked-in `.stl` files and rebuild them using the current contents of the `.scad` files.

(If you don't have this system set up or can't get it to work, you can also just open each `.scad` file with the OpenSCAD program, edit it, and export an STL (F7), or any other format using the File -> Export menu)

To also build the png and webp previews (with `convert`, `exiftool` in your path):

```zsh
% make clean-images images
```

## My Setup

All of these models were designed using OpenSCAD on a MacBook Pro and printed on a Bambu A1 Mini using Bambu Studio.

Mostly for my notes: real life photos are taken on an iPhone, then run:

```
% convert IMG_1234.heic real-life-large.webp
% magick real-life-large.webp -resize 800x800 real-life.webp
% make real-images
```

## License

JimmyMadeThat OpenSCAD, STL, and image files are © 2024 by JimmyMadeThat.

Unless otherwise noted in the `.scad` files or `README.md`s in each directory, all models and images are released under the **CC BY-NC-SA 4.0 (Attribution-NonCommercial-ShareAlike 4.0 International)** license.

To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
