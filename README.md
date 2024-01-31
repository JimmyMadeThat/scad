# JimmyMadeThat OpenSCAD 3D Printing Files

A collection of free 3D-printable OpenSCAD models, also available on [Ultimaker Thingiverse](https://www.thingiverse.com/jimmymadethat/designs) (and all compatible with the Thingiverse customizer).

## Requirements to Build

 * [OpenSCAD](https://openscad.org/)
 * GNU Make (`make` command)

## Build and Print

With `openscad` and `make` in our path,

```zsh
% cd path/to/this/repo
% make
```

will build all STL files in the same directories as the `.scad` files.

(If you don't have this system set up or can't get it to work, you can also just open each `.scad` file with the OpenSCAD program and export an STL (F7), or any other format using the File -> Export menu)

Then import the STL into your favorite slicer program (e.g., Bambu Studio, Ultimaker Cura, PrusaSlicer, Simplify3D) and slice pint as usual.

## License

JimmyMadeThat OpenSCAD, STL, and image files are © 2024 by JimmyMadeThat.

Unless otherwise noted in the `.scad` files or `README.md`s in each directory, all models and images are released under the **CC BY-NC-SA 4.0 (Attribution-NonCommercial-ShareAlike 4.0 International)** license.

To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
