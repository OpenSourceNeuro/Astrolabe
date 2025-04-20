include <Settings.scad>;


// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //   Rete face    // // // // // // // // // 

r_Rete = r_Ecliptic+r_Equator;
a_Rete = 15;
b_Rete = 50;
W_Rete = 6;
w_Rete = 4;


module Rete_Body(){
    difference(){
        union(){
            difference(){
                translate([-r_Capricorn+tol,-W_Rete/2])square([2*r_Capricorn-2*tol,W_Rete]);
                translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic,$fn=Smoothness);
            }
            translate([-W_Rete/2,-r_Capricorn])square([W_Rete,r_Capricorn]);
            circle(r=3*Walls,$fn=Smoothness);
            
            difference(){
                circle(r=r_Capricorn,$fn=Smoothness);
                circle(r=r_Capricorn-W_Rete,$fn=Smoothness);
                translate([0,r_Ecliptic-r_Cancer+10])circle(r=r_Ecliptic,$fn=Smoothness);
            } 
            difference(){
                translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic,$fn=Smoothness);
                translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic-Ecliptic_Ring,$fn=Smoothness);
            }
        } 
        Pin();
    }
    xx = 0.75;
    intersection(){
        difference(){
            translate([0,r_Capricorn-r_Ecliptic])circle(r=r_Ecliptic,$fn=Smoothness);
            translate([-r_Capricorn,-r_Capricorn+Walls])square([2*r_Capricorn,r_Capricorn]);
        }
        union(){
            difference(){
                translate([r_Equator,0])scale([1,xx])circle(r=r_Equator,$fn=Smoothness);
                translate([r_Equator,0])scale([1,xx])circle(r=r_Equator-w_Rete,$fn=Smoothness);
            }
            difference(){
                translate([-r_Equator,0])scale([1,xx])circle(r=r_Equator,$fn=Smoothness);
                translate([-r_Equator,0])scale([1,xx])circle(r=r_Equator-w_Rete,$fn=Smoothness);
            }
        }
    }
    Rete_Circle();
}

module Rete_Circle(){
    intersection(){
        circle(r=r_Capricorn,$fn=Smoothness);
        union(){
            translate([0,-r_Rete])difference(){
                circle(r=r_Ecliptic,$fn=Smoothness);
                circle(r=r_Ecliptic-w_Rete,$fn=Smoothness);
            }
            translate([cos(a_Rete)*r_Rete,-sin(a_Rete)*r_Rete])difference(){
                circle(r=r_Ecliptic,$fn=Smoothness);
                circle(r=r_Ecliptic-w_Rete,$fn=Smoothness);
            }
            translate([-cos(a_Rete)*r_Rete,-sin(a_Rete)*r_Rete])difference(){
                circle(r=r_Ecliptic,$fn=Smoothness);
                circle(r=r_Ecliptic-w_Rete,$fn=Smoothness);
            }
        }
    }
    intersection(){
        circle(r=r_Capricorn,$fn=Smoothness);
        difference(){
            union(){    
                translate([cos(b_Rete)*r_Rete,-sin(b_Rete)*r_Rete])difference(){
                    circle(r=r_Ecliptic,$fn=Smoothness);
                    circle(r=r_Ecliptic-w_Rete,$fn=Smoothness);
                }
                translate([-cos(b_Rete)*r_Rete,-sin(b_Rete)*r_Rete])difference(){
                    circle(r=r_Ecliptic,$fn=Smoothness);
                    circle(r=r_Ecliptic-w_Rete,$fn=Smoothness);
                }
            }
            translate([0,-r_Rete])circle(r=r_Ecliptic-tol,$fn=Smoothness);
            translate([cos(a_Rete)*r_Rete,-sin(a_Rete)*r_Rete])circle(r=r_Ecliptic-tol,$fn=Smoothness);
            translate([-cos(a_Rete)*r_Rete,-sin(a_Rete)*r_Rete])circle(r=r_Ecliptic-tol,$fn=Smoothness);
        }
    }
}



// // // // // // // // // // // //   Stars  // // // // // // // // // // 


StarsName = [   "Sirius",
                "Arcturus",
                "Vega",
                "Capella",
                "Rigel",
                "Procyon",
                "Betelgeuse",
                "Altair",
                "Aldebaran",
                "Antares",
                "Spica",
                "Deneb",
                "Alphard",
                "Menkar"
                ];
                
Ascension = [   6.75,
                14.25,
                18.6,
                5.26,
                5.25,
                7.65,
                5.91,
                19.83,
                4.58,
                16.5,
                13.41,
                20.68,
                9.46,
                3.03  
                ];
                
Declination = [ -16.7, 
                19.16, 
                38.78, 
                45.98, 
                -8.2,
                5.21, 
                 7.4, 
                8.86, 
                16.5, 
                -26.41, 
                -11.15,
                45.26,
                -8.11,
                4.08
                ];
                
Asc = [ for (i=[0:len(Ascension)-1]) (Ascension[i]*360/24)]; 
Dec = [ for (i=[0:len(Declination)-1]) (r_Equator*tan(45-(Declination[i])/2))];
   

module Stars(){
    for (i = [0:len(StarsName)-1]){
        rotate([0,0,90+Asc[i]])translate([0,Dec[i]])circle(r=0.1);
    }
}



// // // // // // // // // // //   Calendar  // // // // // // // // // // 

Months = [  "January",
            "February",
            "March",
            "April",
            "Mai",
            "June",
            "July",
            "August",
            "September",
            "October",
            "November",
            "December"
            ];

module Rete_Calendar(){
    intersection(){
        union(){
            for ( i = [ 0 : len(Months)-1]){
                for ( j = [Days[i],Days[i]+5,Days[i]+10,Days[i]+15,Days[i]+20,Days[i]+25]){
                    x = (j-Jun21st)/Year*360;
                    rotate([0,0,x-10])translate([-line/2,0])square([line,r_Capricorn]);
                }
            }
        }
        difference(){
            translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic,$fn=Smoothness);
            translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic-Ecliptic_Ring/2,$fn=Smoothness);
        }
    }
    difference(){
        translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic-Ecliptic_Ring/2+line,$fn=Smoothness);
        translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic-Ecliptic_Ring/2,$fn=Smoothness);
    }
}


module Rete_CalendarLabel(){
    
    for ( i = [ 0 : len(Months)-1]){
        x = (i-Jun21st)/Year*360;
        rotate([0,0,x])translate([-line/2,25])rotate([0,0,180])text("0",size = ZodFont, valign = "center", halign = "center");;
    }
    
    for ( i = [ 0 : len(Months)-1]){
        for ( j = [Days[i]]){
            x = (j-Jun21st-10)/Year*360;
            xx = j/Year*360;
            rotate([0,0,x+1])translate([0,(r_Cancer-ZodFont)*cos(xx)])rotate([0,0,180])text("0",size = ZodFont, valign = "center", halign = "center");
        }
    }
}



// // // // // // // // // // //   Zodiac  // // // // // // // // // // 

module Rete_Zodiac(){
    intersection(){
        for ( i = [0 : len(Zodiac)-2]){
            x = Zodiac[i+1]/Year * 360;
            rotate([0, 0, x-90])translate([-line/2,0])square([r_Capricorn,line]);
        }
        difference(){
            translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic-2*Walls,$fn=Smoothness);
            translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic-Ecliptic_Ring,$fn=Smoothness);
        } 
    }    
}

Ecliptic_Ring = 4*Walls;
y_Zod = 1.5;
ZodFont = 1.75;
ZodLabel = ["Gemini",
            "Cancer",
            "Leo",
            "Virgo",
            "Libra",
            "Scorpio",
            "Ophiucus",
            "Sagitarius",
            "Capricorn",
            "Aquarius",
            "Pisces",
            "Aries",
            "Taurus"
            ];
ZodCenter = [2,1.75,4,3,1.5,1.5,1.5,1.5,1.5,1.75,2.5,2.5,2.25];  
ZodAdjust = [2,-11,-7,-9,-11,-10,-5,12,22.5,31,37.5,29,20];


module Rete_ZodiacLabel(){
    for ( i = [0 : len(Zodiac)-2]){
        x = ZodiacLabel[i];
        y = len(x)*ZodCenter[i];
        Zo = zodiac[i+1];
        for (j = [0 : y]){
            z = (   (j/y) * (-Zo) -Zodiac[i]  - ZodAdjust[i])  / Year * 360;
            Char = [for (c = ZodLabel[i]) ord(c)];
            translate([0,r_Capricorn-r_Ecliptic])rotate([0,0,180-z])translate([0, r_Ecliptic - Ecliptic_Ring + ZodFont/2 + y_Zod])rotate([0,0,180])text(chr(Char)[j],size = ZodFont, valign = "center", halign = "center");
         }
     }
}






