use <fuselage.scad>

difference()
{
    fuselage();
    
    /*
    translate([-100, 180, -50])
        cube([200, 200, 200]);
    */
    
    translate([-200, 0, -50])
        cube([200, 200, 200]);

    translate([0, 0, -50])
        cube([200, 200, 200]);

    translate([-200, -180, -50])
        cube([200, 200, 200]);

    translate([0, -180, -50])
        cube([200, 200, 200]);
    
}
