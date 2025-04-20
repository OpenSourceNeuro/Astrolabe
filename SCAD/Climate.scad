include <Settings.scad>;



// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // //   Climate face    // // // // // // // // // 



module Climate_Body(){
    
    difference(){
        circle(r=r_Capricorn,$fn=Smoothness); 
        Pin();
        Pin_Climate_Neg();
    }
}



// // // // // // // // // //   Local Meridian  // // // // // // // // //  

module Local_Meridian(){
    
    translate([-line/2,-r_Capricorn])square([line,r_Capricorn*2]); 
}



// // // // // // // // // // //  Tropiques  // // // // // // // // // //  

module Tropiques(){
    
    translate([0,0]){
        difference(){
            circle(r=r_Equator,$fn=Smoothness);
            circle(r=r_Equator-line2,$fn=Smoothness);
        }
    }
    translate([0,0]){
        difference(){
            circle(r=r_Cancer,$fn=Smoothness);
            circle(r=r_Cancer-line2,$fn=Smoothness);
        }
    }  
    translate([0,0]){
        difference(){
            circle(r=r_Capricorn,$fn=Smoothness);
            circle(r=r_Capricorn-line2,$fn=Smoothness);
        }
    } 
}



// // // // // // // // // //  Almicantarat  // // // // // // // // // // 

module Almicantarat(){ 
    
    South = [ for (i = [almicantarat_step/2:almicantarat_step/2:45]) r_Equator * tan((90-phi)/2-i)];
    North = [ for (i = [almicantarat_step/2:almicantarat_step/2:45]) r_Equator * tan((90-phi)/2+i)];
    y_Almicantarat = [ for (i = [0:len(South)-1]) (North[i] - South[i]) / 2 + South[i] ];
    r_Almicantarat = [ for (i = [0:len(South)-1]) (North[i] - South[i]) / 2 ];
        
    intersection(){   
        for (i = [0:len(South)-1]){
            difference(){
                translate([0,y_Almicantarat[i]])circle(r=r_Almicantarat[i],$fn=Smoothness);
                translate([0,y_Almicantarat[i]])circle(r=r_Almicantarat[i]-line,$fn=Smoothness);
            }
        }
        circle(r=r_Capricorn,$fn=Smoothness);
    }   

}


 
// // // // // // // // // //    Twilights   // // // // // // // // // // 

module Twilights(){
    
    TwilightSouth = [ for (i = [3,6,9]) r_Equator * tan((90-phi)/2-45-i)];
    TwilightNorth = [ for (i = [3,6,9]) r_Equator * tan((90-phi)/2+45+i)];
    y_Twilight = [ for (i = [0:len(TwilightSouth)-1]) (TwilightNorth[i] - TwilightSouth[i]) / 2 + TwilightSouth[i] ];
    r_Twilight = [ for (i = [0:len(TwilightSouth)-1]) (TwilightNorth[i] - TwilightSouth[i]) / 2 ];    
  
    intersection(){
        for (i = [0:len(TwilightSouth)-1]){
            difference(){
                translate([0,y_Twilight[i]])circle(r=r_Twilight[i],$fn=Smoothness);
                translate([0,y_Twilight[i]])circle(r=r_Twilight[i]-line2,$fn=Smoothness);
            }
        }
        circle(r=r_Capricorn,$fn=Smoothness);
    }
}



// // // // // // // // // // //   Azimuth   // // // // // // // // // // 

module Azimuth(){
    
    y_Azimuth = y_Zenith-y_Median;
    y_South = r_Equator * tan((90-phi)/2-45);
    y_North = r_Equator * tan((90-phi)/2+45);
    y_Horizon = (y_North - y_South)/2+y_South;
    r_Horizon = (y_North - y_South)/2;

    AzimuthAngle = [ for (i = [0 : azimuth_step : 90] ) i ];
    Azimuth = [ for (i = [0 : azimuth_step : 90]) (y_Azimuth / tan(90-i-0.001)) ]; 
    r_Azimuth = [ for (i = [0 : len(Azimuth)-1]) (Azimuth[i]) / sin(AzimuthAngle[i]+0.001) ];

    difference(){    
        intersection(){
            intersection(){
                translate([0,y_Horizon])circle(r=r_Horizon,$fn=Smoothness);
                translate([0,0])circle(r=r_Capricorn,$fn=Smoothness);  
            } 
            for ( i = [0 : len(Azimuth)-1]){
                difference(){
                    translate([Azimuth[i],y_Median])circle(r=r_Azimuth[i],$fn=Smoothness);
                     translate([Azimuth[i],y_Median])circle(r=r_Azimuth[i]-line,$fn=Smoothness);
                }
                difference(){
                    translate([-Azimuth[i],y_Median])circle(r=r_Azimuth[i],$fn=Smoothness);
                    translate([-Azimuth[i],y_Median])circle(r=r_Azimuth[i]-line,$fn=Smoothness);
                }
            }
        }
        translate([0,y_Zenith])Zenith();
    }
}



// // // // // // // // // // //  Unequal Hours  // // // // // // // // // 

module Unequal_Hours(){
    
    y_South = r_Equator * tan((90-phi)/2-45);
    y_North = r_Equator * tan((90-phi)/2+45);  
    y_Horizon = (y_North - y_South)/2+y_South;  
    r_Horizon = (y_North - y_South)/2;
    
    // Determining intersection points between Capricorn and Horizon
    x0 = 0;                                         // x Capricorn circle centre
    y0 = 0;                                         // y Capricorn circle centre
    x1 = 0;                                         // x Horizon circle centre
    y1 = y_Horizon;                                 // y Horizon circle centre
    d = y_Horizon;                                  // distance between the two circle centres
    r0 = r_Capricorn;                               // radius Capricorn circle
    r1 = r_Horizon;                                 // radius Horizon circle
    a = ((r0*r0)-(r1*r1)+(d*d))/(2*d);              // distance between y capricorn and y intersection points
    xinter = sqrt(r0*r0-a*a);                       // determining x intersection (+/- around the y axis)
    yinter = a + (xinter * (x1 - x0))/d;            // determining y intersection 
    
    // Determining intersection points between Cancer and Horizon
    r2 = r_Cancer;                                  // radius Cancer circle
    aa = ((r2*r2)-(r1*r1)+(d*d))/(2*d);             // distance between y capricorn and y intersection points
    xxinter = sqrt(r2*r2-aa*aa);                    // determining x intersection (+/- around the y axis)
    yyinter = aa + (xxinter * (x1 - x0))/d;         // determining y intersection 

    // Determining the arc angle in degree on the Capricorn tropique for the unequal hours = 360 - arc(horizon)
    Capri_arc_hours = (360-(2*acos(yinter/r_Capricorn)))/12;   // Angle in degree for each hour
    Capri_horizon_alpha = atan(yinter/xinter);                 // Angle in degree of intersection point with midline
    alpha_Capricorn = [for (i = [1:5]) (Capri_horizon_alpha - i*Capri_arc_hours) ];
    x_Capri = [for (i = [0 : len(alpha_Capricorn)-1]) (cos(alpha_Capricorn[i]) * r_Capricorn) ]; 
    y_Capri = [for (i = [0 : len(alpha_Capricorn)-1]) (sin(alpha_Capricorn[i]) * r_Capricorn) ]; 
    
    // Determining the arc angle in degree on the Cancer tropique for the unequal hours = 360 - arc(horizon)
    Cancer_arc_hours = (360-(2*acos(yyinter/r_Cancer)))/12;   // Angle in degree for each hour
    Cancer_horizon_alpha = atan(yyinter/xxinter);             // Angle in degree of intersection point with midline
    alpha_Cancer = [for (i = [1:5]) (Cancer_horizon_alpha - i*Cancer_arc_hours) ];
    x_Cancer = [for (i = [0 : len(alpha_Cancer)-1]) (cos(alpha_Cancer[i]) * r_Cancer) ]; 
    y_Cancer = [for (i = [0 : len(alpha_Cancer)-1]) (sin(alpha_Cancer[i]) * r_Cancer) ];
    
    // Determining the arc angle in degree on the Equator for the unequal hours = 180 / 12
    alpha_Equator = [15,30,45,60,75];
    x_Equa = [for (i = [0 : len(alpha_Equator)-1]) (cos(alpha_Equator[i]) * r_Equator) ];
    y_Equa = [for (i = [0 : len(alpha_Equator)-1]) (sin(alpha_Equator[i]) * r_Equator) ];
    
    // Determining line equations for the median between Capricorn and Equator
    x_Mid1 = [for ( i = [0 : len(alpha_Capricorn)-1] ) ((x_Capri[i] + x_Equa[i])/2) ];
    y_Mid1 = [for ( i = [0 : len(alpha_Capricorn)-1] ) ((y_Capri[i] - y_Equa[i])/2) ];
    Slope1 = [for ( i = [0 : len(alpha_Capricorn)-1] ) ((-y_Equa[i] - y_Capri[i]) / (x_Equa[i] - x_Capri [i])) ];
    m1 = [for ( i = [0 : len(alpha_Capricorn)-1] ) (-1 / Slope1[i]) ];
    b1 = [for ( i = [0 : len(alpha_Capricorn)-1] ) (y_Mid1[i] - (m1[i] * x_Mid1[i])) ];
        
    // Determining line equations for the median between Cancer and Equator
    x_Mid2 = [for ( i = [0 : len(alpha_Cancer)-1] ) ((x_Cancer[i] + x_Equa[i])/2) ];
    y_Mid2 = [for ( i = [0 : len(alpha_Cancer)-1] ) ((y_Cancer[i] - y_Equa[i])/2) ];
    Slope2 = [for ( i = [0 : len(alpha_Cancer)-1] ) ((-y_Equa[i] - y_Cancer[i]) / (x_Equa[i] - x_Cancer [i])) ];
    m2 = [for ( i = [0 : len(alpha_Cancer)-1] ) (-1 / Slope2[i]) ];
    b2 = [for ( i = [0 : len(alpha_Cancer)-1] ) (y_Mid2[i] - (m2[i] * x_Mid2[i])) ];

    // Determining unequal hours circles center and radius 
    x_Hour = [for ( i = [0 : len(alpha_Cancer)-1] ) ((b2[i]-b1[i]) / (m1[i]-m2[i])) ];
    y_Hour = [for ( i = [0 : len(alpha_Cancer)-1] ) (m1[i] * x_Hour[i] + b1[i]) ];
    r_Hour = [for ( i = [0 : len(alpha_Cancer)-1] ) (sqrt(pow((x_Hour[i]-x_Capri[i]),2)+pow((y_Hour[i]-y_Capri[i]),2))) ];
    
    difference(){  
        intersection(){
            circle(r=r_Capricorn,$fn=Smoothness);
            for ( i = [0 : len(alpha_Cancer)-1] ){
                difference(){
                    translate([x_Hour[i],y_Hour[i]])circle(r=r_Hour[i],$fn=Smoothness);
                    translate([x_Hour[i],y_Hour[i]])circle(r=r_Hour[i]-line,$fn=Smoothness);
                }
                difference(){
                    translate([-x_Hour[i],y_Hour[i]])circle(r=r_Hour[i],$fn=Smoothness);
                    translate([-x_Hour[i],y_Hour[i]])circle(r=r_Hour[i]-line,$fn=Smoothness);
                }
            }
        }
        translate([0,y_Horizon])circle(r=r_Horizon,$fn=Smoothness);
    }
}


