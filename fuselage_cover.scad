module fuse_cover()
{
    difference()
    {
        intersection()
        {
            translate([-140, -30, 20])
                cube([280, 400, 400]);
            
            translate([1, 0, 0])
                import("skinny-b-fuse.stl", convexity=20);

        }

        //air intake cutout - for motor cooling
        translate([0, 60, 49.5])
            rotate([100, 0, 0])
                    cylinder(2000, 10, 10);
        
            
        translate([-140, -30, 5])
            cube([280, 150, 20]);
            
        translate([-85, -20, 3])
            cube([170, 190, 25]);
        
        translate([-40, -30, -10])
            cube([80, 270, 40]);
        
        translate([-30, -30, -18])
            cube([60, 290, 50]);
        
        //screw hole in nose
        translate([0, 280, -20])
            cylinder(200, 1.7, 1.7);
            
        translate([0, 280, 35])
            cylinder(30, 3, 3);
            
        //LH wing screw hole
        translate([-130, 125, -20])
        {
            cylinder(200, 1.7, 1.7);
            translate([0, 0, 43])
                cylinder(100, 3, 3);
        }
            
        //RH wing screw hole
        translate([130, 125, -20])
        {
            cylinder(200, 1.7, 1.7);
            translate([0, 0, 43])
                cylinder(100, 3, 3);
        }
    }
}
