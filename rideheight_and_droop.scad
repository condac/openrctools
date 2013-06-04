// A stair shaped tool with small steps to messure height of the chassi from the ground.
// Can be used as droop messure also
// The stick is 1mm high per 1cm length with 0.5mm steps

width = 5;
step_width = 2.5;
step_height = 0.5;
steps = 20;

for ( i = [0 : steps]  )  {
    translate([step_width*i, 0, 0])
    cube([step_width,width,step_height*i], center = false);
}