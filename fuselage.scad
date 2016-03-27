use <MCAD/boxes.scad>
use <hxt900_box.scad>

difference()
{
    translate([1, 0, 0])
        import("skinny-b-fuse.stl", convexity=20);

    //air intake cutout - for motor cooling
    translate([0, 60, 49.5])
        rotate([100, 0, 0])
                cylinder(2000, 10, 10);
    
    //motor mount inner cutout
    translate([0, -98, 15])
        rotate([91, 0, 0])
            cylinder(90, 25, 25, true);
    
    //outer cutout for motor mount
    translate([0, -110, 17])
        rotate([91, 0, 0])
            cylinder(45, 31, 31, true);
    
    //main avionics bay cutout
    translate([0, 34, -5.5])
        rotate([2.5, 0, 0])
            roundedBox([176, 186, 70], 4);
    
    //trims a rim around avionics bay for lid to sit on
    translate([-100, -61, -22])
        rotate([-1.8, 0, 0])
            cube([200, 190, 30]);
    
    //battery cutout
    translate([-30, -60, -35])
        cube([60, 190, 70]);
    
    translate([-55/2, 115, -24])
        rotate([8, 0, 0])
            cube([55, 150, 80]);
            
            
    //LH servo cut out
    translate([-165, -70, 8])
    {
        rotate([-4, 0, 0])
        {
            hxt900_box(false);
        }
    }
    
    //RH servo cut out
    translate([165, -70, 19.5])
    {
        rotate([4, 180, 0])
        {
            hxt900_box(true);
        }
    }
    
    //space for servo wiring
    translate([60, -40, 8])
        cube([90, 20, 15]);
    
    translate([-150, -40, 8])
        cube([60, 20, 15]);
}
