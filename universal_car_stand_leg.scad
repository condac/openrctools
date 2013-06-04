//Universal car stand for 1/10 touring car

plate = 3;
width = 80;
height = 80; 
leg = 10;
hwcube = 80; //the biggest value of heigth and width

length = 300;

mounthole = 10;

difference() {
union() {

difference() {
	cube([width,height,plate]);

	translate([width/2,height/2-leg/2,0])
	rotate([0,0,180+45])
	cube([hwcube*0.5,hwcube*0.5,plate*3], center =false);

	translate([width/2,0,0])
	rotate([0,0,0])
	cube([width*0.7,height*0.2,plate*3], center = true);

	translate([width/2,height,0])
	rotate([0,0,0])
	cube([width*0.7,height*0.2,plate*3], center = true);
	
	translate([width/2,height*0.9,0])
	rotate([0,0,45])
	cube([hwcube*0.5,hwcube*0.5,plate*3], center = true);

	

	//side cuts
	translate([width,height*0.5,0])
	rotate([0,0,45])
	cube([hwcube*0.5,hwcube*0.5,plate*3], center = true);
	translate([0,height*0.5,0])
	rotate([0,0,45])
	cube([hwcube*0.5,hwcube*0.5,plate*3], center = true);

	

}
	translate([width/2,height*0.9,plate/2])
	rotate([0,0,0])
	cube([width*0.8,height*0.1,plate], center = true);

	translate([width/2,height*0.2,plate/2])
	rotate([0,0,0])
	cube([width*0.8,height*0.1,plate], center = true);


	translate([width/2,height*0.7,plate/2])
	rotate([0,0,90])
	cube([width*0.4,height*0.1,plate], center = true);
		
}
//mounting holes

	translate([width/2,height*0.7,0])
	rotate([0,0,45])
	union() {
	//low left
	translate([-15,0,0])
	cube([plate,mounthole,plate*3], center = true);
	//high left
	translate([-15,20,0])
	cube([plate,mounthole,plate*3], center = true);
	}

	translate([width/2,height*0.7,0])
	rotate([0,0,-45])
	union() {
	//low left
	translate([15,0,0])
	cube([plate,mounthole,plate*3], center = true);
	//high left
	translate([15,20,0])
	cube([plate,mounthole,plate*3], center = true);
	}
	translate([width/2,height*0.6,0])
	rotate([0,0,0])
	union() {
	//low left
	translate([0,0,0])
	cube([plate,mounthole,plate*3], center = true);
	//high left
	translate([0,20,0])
	cube([plate,mounthole,plate*3], center = true);
	}
}