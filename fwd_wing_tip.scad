difference()
{
    import("wing_tip.stl", convexity=10);

    translate([0, -250, 0])
    cube([100, 150, 1000]);
}
