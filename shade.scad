// outer diameter
$outer_d = 59-0.2; // Fixme: measure

// inner diameter
$inner_d = 57+0.2; // Fixme: measure

// height
$height = 30; // Fixme: test

// square hole
$hole_x = 10; // Fixme: measure
$hole_y = 11; // Fixme: measure

$fn = 100;

difference() {
    cylinder($height, $outer_d/2, $outer_d/2);
    translate([0,0,-1])
        cylinder($height+2,$inner_d/2,$inner_d/2);
 
    for (a =[0:72:360]) rotate([0,0,a])
        translate([0,-$hole_x/2,-1])
            cube([$outer_d,$hole_x,$hole_y+1]);
}
