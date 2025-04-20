
// // // // // // // // //   Object Parameters  // // // // // // // // // 

    Walls = 3;                             // Normalised elements width
    line= 0.01;                            // Width of engravings
    line2 = 0.75;
    hline = 0.6;                           // Depth of engravings
    
    
// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // //   Object Parameters  // // // // // // // // // 


    R_Mater = 300/2;                       // External radius of the Mater
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
    phi = 50.883;                              // Longitude du meridien local, Sarrebourg = 48.7333;
    
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
    circle(r=r_pin+tol,$fn=Smoothness);
}


// // // // // // // // // //   Climate Pin  // // // // // // // // // // 

    r_pinClimate = 3;
    a_pinClimate = 30;
    

module Pin_Climate(){
    
    translate([(R_Mater-MaterEdge)*cos(a_pinClimate),-(R_Mater-MaterEdge)*sin(a_pinClimate)])circle(r=r_pinClimate,$fn=Smoothness);
    translate([-(R_Mater-MaterEdge)*cos(a_pinClimate),-(R_Mater-MaterEdge)*sin(a_pinClimate)])circle(r=r_pinClimate,$fn=Smoothness);
}


module Pin_Climate_Neg(){
    
    translate([(R_Mater-MaterEdge)*cos(a_pinClimate),-(R_Mater-MaterEdge)*sin(a_pinClimate)])circle(r=r_pinClimate+tol,$fn=Smoothness);
    translate([-(R_Mater-MaterEdge)*cos(a_pinClimate),-(R_Mater-MaterEdge)*sin(a_pinClimate)])circle(r=r_pinClimate+tol,$fn=Smoothness);
}


// // // // // // // // // // //  Zenith Pin  // // // // // // // // // // 
module Zenith(){ 
    circle(r=r_zenith,$fn=Smoothness);
}

