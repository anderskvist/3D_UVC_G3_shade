// outer diameter
$outer_d = 59.8; // 0.4mm nozzle

// inner diameter
$inner_d = 57.4; // 0.4mm nozzle

// height
$height = 30; // Fixme: test

// square hole
$hole_x = 10;
$hole_y = 10;

$fn = 100;

difference() {
    cylinder($height, $outer_d/2, $outer_d/2);
    translate([0,0,-1])
        cylinder($height+2,$inner_d/2,$inner_d/2);
 
    for (a =[0:72:360]) rotate([0,0,a])
        translate([0,-$hole_x/2,-1])
            cube([$outer_d,$hole_x,$hole_y+1]);
}
