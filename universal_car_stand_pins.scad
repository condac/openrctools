//Universal car stand for 1/10 touring car

plate = 3;
width = 80;
height = 80; 

length = 200;

mounthole = 10;

union() {

difference() {
	cube([length,30,plate]);

	translate([0,10,0])
	rotate([0,0,0])
	cube([6,10,plate], center = false);
	
	translate([3,0,0])
	rotate([0,0,0])
	cube([3,5,plate], center = false);
	translate([3,20,0])
	rotate([0,0,0])
	cube([3,5,plate], center = false);

	translate([length-6,10,0])
	rotate([0,0,0])
	cube([6,10,plate], center = false);
	
	translate([length-6,0,0])
	rotate([0,0,0])
	cube([3,5,plate], center = false);
	translate([length-6,20,0])
	rotate([0,0,0])
	cube([3,5,plate], center = false);

}


}

