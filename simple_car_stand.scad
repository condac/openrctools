//Universal car stand for 1/10 touring car

plate = 3;
width = 90;
height = 30; 
length = 185;
b = 12;
a = atan(width/length);

leg = b;

%	cube([width,length,plate]);

union() {
	cube([width,b,plate]);

	translate([0,length-b,0])
	cube([width,b,plate]);

	translate([0,0,0])
	cube([b,length,plate]);
	translate([width-b,0,0])
	cube([b,length,plate]);

	
	translate([width-b/1.2,b/3,0])
	rotate([0,0,a])	
	cube([b,length,plate]);

	translate([0,b/2,0])
	rotate([0,0,-a])	
	cube([b,length,plate]);

// Legs

	translate([0,0,0])
	cube([leg,plate,height]);
	translate([0,0,0])
	cube([plate,leg,height]);

	translate([width-leg,0,0])
	cube([leg,plate,height]);
	translate([width-plate,0,0])
	cube([plate,leg,height]);

	translate([0,length-plate,0])
	cube([leg,plate,height]);
	translate([0,length-leg,0])
	cube([plate,leg,height]);

	translate([width-leg,length-plate,0])
	cube([leg,plate,height]);
	translate([width-plate,length-leg,0])
	cube([plate,leg,height]);
}