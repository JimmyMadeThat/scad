/**
 * ----------------------------------------------------------------------------
 *
 * Name:        Vertical Breathe Right® strip container
 * Version:     v1
 * Description: A simple container, open at the top, which holds approximately
 *              one box (26 count) of Breathe Right® Extra Strength nasal
 *              strips vertically.
 *
 * ----------------------------------------------------------------------------
 *
 * Copyright © 2024 JimmyMadeThat
 *
 * This work is licensed under the `CC BY-NC-SA 4.0`
 * (Attribution-NonCommercial-ShareAlike 4.0 International) license. To view a
 * copy of this license, visit:
 *
 *   <http://creativecommons.org/licenses/by-nc-sa/4.0/>
 *
 * ----------------------------------------------------------------------------
 */

/**
 * ================
 *    Parameters
 * ================
 */

/* [Strip Size and Count] */

// actual width in mm of the nasal strips
strip_width                 = 33;     // [1:100]
// actual length in mm of the nasal strips
strip_length                = 84;     // [50:500]
// actual strip thickness when loosely stacked
strip_thickness             = 1.115;  // [0.5:0.0001:2.0]
// number of strips container will hold
strip_count                 = 26;     // [0:300]

/* [Extra Space in Container] */

// total mm of additional horizontal/width space to be added inside
horizontal_space_added      = 1;      // [0:10]
// total mm of additional vertical/length space to be added inside
vertical_space_added        = 1;      // [0:10]
// total mm of additional depth/thickness space to be added inside
depth_added                 = 2;      // [1:10]

/* [Wall Configuration] */

// thickness in mm of the walls
wall_thickness              = 1;      // [0.5:0.1:5]
// mm of straight wall on each side before curved cutout begins
wall_padding_before_cutout  = 2;      // [0:0.5:50]

/**
 * ====================
 *    End Parameters
 * ====================
 */

/* [Hidden] */

// Resolution settings
$fa = 1;
$fs = 0.4;

fudge = 0.001;

total_strip_depth = strip_count * strip_thickness;

inner_box_width = strip_width + horizontal_space_added;
outer_box_width = inner_box_width + (wall_thickness * 2);

inner_box_height = strip_length + vertical_space_added + fudge;
outer_box_height = inner_box_height + wall_thickness - fudge; // no lid

inner_box_depth = total_strip_depth + depth_added;
outer_box_depth = inner_box_depth + (wall_thickness * 2);

cutout_width = inner_box_width - (2 * wall_padding_before_cutout);
cutout_radius = cutout_width / 2;
cutout_height = outer_box_depth + (2 * fudge);

cutout_center_x = outer_box_width / 2;
cutout_center_y = outer_box_height;
cutout_center_z = -outer_box_depth - fudge;

difference() {
  // Outer box
  cube([outer_box_width, outer_box_depth, outer_box_height]);
  // Inner box cutout
  translate([wall_thickness, wall_thickness, wall_thickness])
    cube([inner_box_width, inner_box_depth, inner_box_height]);
  rotate([90,0,0])
  // Rounded cutout
  translate([cutout_center_x, cutout_center_y, cutout_center_z])
    cylinder(h = cutout_height, r1 = cutout_radius, r2 = cutout_radius);
}
