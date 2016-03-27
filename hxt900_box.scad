module hxt900_box(lid_on_top=true)
{
    union()
    {
        cube([23, 23, 13]);
        translate([1.5, -5, 0])
            cube([3, 33, 13]);
        
        translate([-6, 7, 0])
            cube([6, 15, 13]);
        
        translate([15, 23, 2])
            cube([15, 10, 9]);
        
        if(lid_on_top)
        {
            translate([0, -10, 13])
                cube([23, 43, 5]);
        }
        else
        {
            translate([0, -10, -5])
                cube([23, 43, 5]);
        }
        
        translate([19, -5, 0])
            cylinder(13, 1.7, 1.7, $fn=18);
        
        translate([8, 28, 0])
            cylinder(13, 1.7, 1.7, $fn=18);
    }
}

//hxt900_box(false);