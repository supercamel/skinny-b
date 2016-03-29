use <fuselage_cover.scad>

difference()
{
    fuse_cover();

    /*
    translate([-200, -60, 0])
        cube([200, 200, 200]);
    */
    
    translate([0, -60, 0])
        cube([200, 200, 200]);
        
    translate([-180, 140, 0])
        cube([200, 200, 200]);

    translate([20, 140, 0])
        cube([200, 200, 200]);
    
}