difference()
{
    import("wing_tip.stl", convexity=10);

    translate([0, -100, 0])
        cube([100, 150, 1000]);
}
