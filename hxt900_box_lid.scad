union()
{
    cube([40, 26, 1]);
    
    difference()
    {
        translate([0, -4.5, 0])
            cube([4.5, 4.5, 1]);
        translate([2.25, -2.25, 0])
            cylinder(30, 3.05/2, 3.05/2);
    }
    
    difference()
    {
        translate([40, 21.5, 0])
            cube([4.5, 4.5, 1]);
        translate([42.5, 23.5, 0])
            cylinder(15, 3.05/2, 3.05/2);
    }
}

