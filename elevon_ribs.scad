use <reflexed_aerofoil.scad>

rotate([0, 0, -90])
{
union()
{
    start_length = 250;
    
    rotate([90, 0, 0])
    {
        
        for(i = [0 : 10])
        {
            diff = 2;
            translate([i*5.0, i*1.6, -i*27])
                intersection()
                {
                    union()
                    {
                         translate([175, -2, -1])
                            cylinder(300, 8.5, 8.5);
                    
                        translate([175, -20, -1])
                            cube([100, 100, 400]);
                    }
                    reflexed_aerofoil(height=2, length=start_length-(diff*i), 
                                end_length=start_length-(diff*i)); 
                }
        }
    }
}

}