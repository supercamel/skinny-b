difference()
{
    intersection()
    {
        
        union()
        {
            translate([-90, -60, -44])
                cube([180, 190, 60]);
            
            translate([-30, -60, -35])
                cube([60, 190, 50]);
        }
        
        translate([1, 0, 0])
            import("skinny-b-fuse.stl", convexity=20);

    }

    
    translate([-34, -220, -12])
        cube([68, 600, 100]);
    
    
    translate([-120, -220, 8])
        rotate([-1.8, 0, 0])
            cube([240, 600, 200]);

}
