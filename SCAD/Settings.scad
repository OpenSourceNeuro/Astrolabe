
// // // // // // // // //   Object Parameters  // // // // // // // // // 

    Walls = 3;                             // Normalised elements width
    line= 0.01;                            // Width of engravings
    line2 = 0.75;
    hline = 0.6;                           // Depth of engravings
    
    
// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // //   Object Parameters  // // // // // // // // // 


    R_Mater = 250/2;                       // External radius of the Mater
    MaterEdge = 20;                        // Width of the Mather dial
    r_Mater = R_Mater-MaterEdge;           // Internal radius of the Mater
    H_Mater = 3*Walls;                     // Height of the Mater edge
    h_Mater = 2*Walls;                     // Height of the inner Mater

    r_pin = 5/2;                           // Radius of the main screw
    r_zenith = 3/2;

    almicantarat_step = 5;                 // Almicantarat step in degree
    azimuth_step = 10;                     // Azimuth step in degree 
 

// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // CNC Parameters // // // // // // // // // //

    Smoothness = 360;                // Number of facets
    tol = 0.1;                       // Tolerance between elements
    // // // // // // // // // // // // // // // // // // // // // // // // // 

    Font = 4;                              // General font size
   
   
// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // Astrolabe Parameters // // // // // // // // // 

    pi=3.14159265359;                      // Because we all need pi in our life
    alpha = 23.4366907752;                 // Earthaxis inclinaison (01/01/2020)
    phi = 45.650278;                              // Longitude du meridien local, Sarrebourg = 48.7333;
    
    Year = 365;                            // Number of days in a year (non bisextile)
    Jan1st = -171;                         // January 1st position from June 21st
    Jun21st = 172;                         // June 21st position from January 1st
    Days = [0,31,59,90,120,151,181,212,243,273,304,334,365];

    r_Capricorn = r_Mater-tol;
    r_Equator = r_Capricorn * tan((90 - alpha)/2);
    r_Cancer = r_Equator * tan((90 - alpha)/2);
    r_Ecliptic = (r_Capricorn+r_Cancer)/2;
    
    y_Zenith = r_Equator * tan((90-phi)/2);
    y_Nadir = r_Equator * tan((90-phi)/2+90);
    y_Median = (y_Zenith+y_Nadir)/2;
   
  
  
// // // // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // //  Central Pin   // // // // // // // // // // 

module Pin(){ 
    circle(r=r_pin+tol,$fn=60);
}


// // // // // // // // // //   Climate Pin  // // // // // // // // // // 

    r_pinClimate = 3;
    a_pinClimate = 30;
    

module Pin_Climate(){
    for (i =[0:90:360]){
        rotate([0,0,i])translate([(R_Mater-MaterEdge),0])circle(r=r_pinClimate,$fn=60); 
    }
}


module Pin_Climate_Neg(){
for (i =[0:90:360]){
        rotate([0,0,i])translate([(R_Mater-MaterEdge),0])circle(r=r_pinClimate+tol,$fn=60); 
    }
}


// // // // // // // // // // //  Zenith Pin  // // // // // // // // // // 
module Zenith(){ 
    circle(r=r_zenith,$fn=Smoothness);
}





r_Stars = 1;
wConstellation1 = 0.025;
wConstellation2 = 0.01;
lnStar = 1.47;

module StarShape(points, outer, inner) {
	
	// polar to cartesian: radius/angle to x/y
	function x(r, a) = r * cos(a);
	function y(r, a) = r * sin(a);
	
	// angular width of each pie slice of the star
	increment = 360/points;
    
	
    
	union() {
		for (p = [0 : points-1]) {
			x_outer = x(outer, increment * p);
            y_outer = y(outer, increment * p);
            x_inner = x(inner, (increment * p) + (increment/2));
            y_inner = y(inner, (increment * p) + (increment/2));
            x_next  = x(outer, increment * (p+1));
            y_next  = y(outer, increment * (p+1));
            polygon(points = [[x_outer, y_outer], [x_inner, y_inner], [x_next, y_next], [0, 0]], paths  = [[0, 1, 2, 3]]);
		}
	}
}
    
    
 module Star_Climate(outer) {
    inner = outer/4;//outer*sqrt(3.5-1.5*sqrt(5));
    StarShape(5,outer, inner);
}

