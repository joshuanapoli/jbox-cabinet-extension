// measurements in millimeters
height=73; // outer body height
width=43; // outer body width
depth=50;
thickness=2;
boxMount=83.33;
hole=5; // diameter
lip=10;

translate([-height/2,-width/2,-thickness]) rotate([90,0,90])
difference() {
    // body
    union() {
        cube([width,depth+thickness,height]);
        
        // lip
        translate([-lip, 0, -lip]) cube([width+2*lip, thickness, height+2*lip]);
    }
    
    // interior
    translate([thickness, -thickness, thickness]) cube([width-2*thickness,depth+3*thickness,height-2*thickness]);
    
    // box mount through-holes
translate([width/2, 1.5*thickness, boxMount/2+height/2]) rotate([90,0,0]) cylinder(thickness*2, hole/2, hole/2);
translate([width/2, 1.5*thickness, -boxMount/2+height/2]) rotate([90,0,0]) cylinder(thickness*2, hole/2, hole/2);
    
}

