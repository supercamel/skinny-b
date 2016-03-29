use <fuselage.scad>

difference()
{
    fuselage();
    
    /*
    translate([-100, 180, -50])
        cube([200, 200, 200]);
    */
    
    translate([-200, 20, -50])
        cube([200, 160, 200]);
    
    
    translate([0, 20, -50])
        cube([200, 160, 200]);

    
    translate([-200, -180, -50])
        cube([200, 200, 200]);

    translate([0, -180, -50])
        cube([200, 200, 200]);
}
