use <hxt900_box.scad>

module fuselage()
{
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
        
        //remove as much interior as possible to create space for payload
        translate([-140, -30, 20])
            cube([280, 400, 400]);
            
        translate([-140, -30, 5])
            cube([280, 110, 100]);
            
        translate([-85, -20, 3])
            cube([170, 150, 40]);
        translate([-40, -30, -10])
            cube([80, 200, 40]);
        
        translate([-30, -30, -18])
            cube([60, 200, 40]);
        
        //battery cutout
        translate([-55/2, 115, -24])
            rotate([8, 0, 0])
                cube([55, 150, 40]);
                
                
        //LH servo cut out
        translate([-165, -70, 8])
        {
            rotate([-4, 0, 11])
            {
                hxt900_box(false);
            }
        }
        
        //RH servo cut out
        translate([165, -70, 19.5])
        {
            rotate([4, 180, -11])
            {
                hxt900_box(true);
            }
        }
        
        //space for servo wiring
        translate([60, -40, 8])
            cube([90, 20, 15]);
        
        translate([-150, -40, 8])
            cube([60, 20, 15]);
        
        //screw hole in nose
        translate([0, 280, 3])
            cylinder(200, 1.7, 1.7);
            
        //LH wing screw hole
        translate([-130, 125, 7])
            cylinder(200, 1.7, 1.7);
            
        //RH wing screw hole
        translate([130, 125, 7])
            cylinder(200, 1.7, 1.7);
        
        
        //holes for wing carbon rods
        mirror([1,0,0], true)
        {
            translate([173, 122, 15])
            {
                //all_wing_ribs();
                translate([480, -155, 28])
                {
                    rotate([3.5, 0, -90])
                        rotate([90, 0, -11])
                            cylinder(500, 2.2, 2.2, $fn=20);
                    
                    translate([0, -80, 0])
                        rotate([3.5, 0, -90])
                            rotate([90, 0, -11])
                                cylinder(500, 2.2, 2.2, $fn=20);
                }
            }
        }

        translate([173, 122, 15])
            {
                //all_wing_ribs();
                translate([480, -155, 28])
                {
                    rotate([3.5, 0, -90])
                        rotate([90, 0, -11])
                            cylinder(500, 2.2, 2.2, $fn=20);
                    
                    translate([0, -80, 0])
                        rotate([3.5, 0, -90])
                            rotate([90, 0, -11])
                                cylinder(500, 2.2, 2.2, $fn=20);
                }
            }
    }
}

/*
translate([-100, 180, -50])
    cube([200, 200, 200]);

translate([-200, 0, -50])
    cube([200, 200, 200]);

translate([0, 0, -50])
    cube([200, 200, 200]);

translate([-200, -180, -50])
    cube([200, 200, 200]);

translate([0, -180, -50])
    cube([200, 200, 200]);
*/



/*
translate([173, 122, 15])
    all_wing_ribs();
*/