use <reflexed_aerofoil.scad>

module full_wing(remove_elevon = true)
{
    difference()
    {
        rotate([3.5, 0, -90])
        {
            union()
            {
                rotate([90, 0, -11])
                {
                    translate([0, 0, -330])
                        reflexed_aerofoil(height=330, 
                            length=230, 
                                    end_length=250); 
                }
                rotate([90, 0, -16])
                {
                    translate([-28, 0, -528])
                        reflexed_aerofoil(height=200, 
                            length=210, 
                                    end_length=230); 
                }
            }
        }
        
        union()
        {
            translate([-100, -300, -50])
                cube([100, 300, 100]);
            
            translate([450, -400, 0])
                cube([100, 400, 100]);
            
            
            rotate([3.5, 0, -90])
                rotate([90, 0, -11])
                {
                    translate([140, -2, -481])
                        cylinder(480, 2.1, 2.1, $fn=20);
                    
                    translate([60, -2, -481])
                        cylinder(480, 2.1, 2.1, $fn=20);
                                                         
                }
            
            if(remove_elevon)
            {
                translate([193, -325, 0])
                    cube([100, 100, 100]);
                
                rotate([3.5, 0, -90])
                    rotate([90, 0, -11])
                    {
                        translate([170, -2, -331])
                            cylinder(300, 8.5, 8.5);
                                                            
                        translate([170, -20, -331])
                            cube([100, 100, 400]);
                    }
            }
        }
    }
}

module full_elevon()
{
    difference()
    {
        intersection()
        {
            full_wing(false);
            
            union()
            {
                translate([193, -345, 0])
                        cube([100, 100, 100]);
                
                //main elevon cutout
                rotate([3.5, 0, -90])
                    rotate([90, 0, -11])
                    {
                        translate([175, -2, -331])
                            cylinder(300, 8.5, 8.5);
                                                            
                        translate([175, -20, -331])
                            cube([100, 100, 400]);
                    }
            }
        }
        translate([290, -400, 0])
            cube([10, 400, 100]);
        
        translate([0, -400, -50])
            cube([3, 400, 100]);
    }
}

module all_wing_ribs()
{
    difference()
    {
        full_wing();
        
        for(i = [0:10])
        {
            translate([(i*27)+3, (i*-5.5)-160, -20])
                cube([24, 140, 100]);
        }
        
        for(i = [11:16])
        {
            j = ((i-10)*-8.0)-(200+55);
            translate([(i*27)+3, j, -20])
                cube([24, 180, 100]);
        }
    }
}

module inbd_wing_ribs()
{
    difference()
    {
        all_wing_ribs();
        
        translate([150, -400, -50])
            cube([400, 400, 100]);
    }
}

module mid_wing_ribs()
{
    difference()
    {
        all_wing_ribs();
        
        translate([300, -400, -50])
            cube([400, 400, 100]);
        
        translate([0, -400, -50])
            cube([150, 400, 100]);
    }
}

module outbd_wing_ribs()
{
    difference()
    {
        all_wing_ribs();
        
        translate([0, -400, -50])
            cube([300, 400, 100]);
    }
}

module inbd_elevon_ribs()
{
    difference()
    {
        full_elevon();
        
        for(i = [0:4])
        {
            translate([(i*30)+7, (i*-4.5)-240, -20])
                cube([24, 50, 100]);
        }
        
        translate([150, -400, -20])
            cube([150, 400, 100]);
        
        rotate([3.5, 0, -90])
            rotate([90, 0, -11])
            {
                translate([170, -2, -481])
                    cylinder(480, 2.35, 2.35, 
                            $fn=20);                                         
            }
    }
}

module outbd_elevon_ribs()
{
    difference()
    {
        full_elevon();
        
        for(i = [5:9])
        {
            translate([(i*27)+18, (i*-4.5)-240, -20])
                cube([24, 44, 100]);
        }
        
        translate([0, -400, -20])
            cube([150, 400, 100]);
        
        rotate([3.5, 0, -90])
            rotate([90, 0, -11])
            {
                translate([170, -2, -481])
                    cylinder(480, 2.1, 2.1, 
                            $fn=20);                                         
            }
    }
}

