include <Settings.scad>;



// // // // // // // // // // // // // // // // // // // // // // // // //     
// // // // // // // // // //   Allidade  // // // // // // // // // // //

module Allidade_Body(){
    difference(){
        union(){
            difference(){
                circle(r=3*Walls,$fn=Smoothness);
                Pin();
            }
            difference(){
                square([R_Mater-Walls,3*Walls]);
                translate([R_Mater-Walls,0])rotate([0,0,45])square([5*Walls,5*Walls]);
                Pin();
            }
            difference(){
                rotate([0,0,180])square([R_Mater-Walls,3*Walls]);
                rotate([0,0,180])translate([R_Mater-Walls,0])rotate([0,0,45])square([5*Walls,5*Walls]);    
                Pin();
            }
        }
        Allidade_hole();
    }
}



module Allidade_hole(){
   #translate([r_Capricorn+Walls,Walls])square([3,Walls]); 
   #rotate([0,0,180])translate([r_Capricorn+Walls,Walls])square([3,Walls]); 
}



module Allidade_Ruler(){
    Pin();
    EoT = [-16,-15,-14,-13,-12,-11,-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14];
    eot = [-15,-10,-5,0,5,10,15];
    
    for ( i = [0 : 1 : len(EoT)-1] ){
        translate([((EoT[i]-Tmin)/Tmax) * T_Ratio + T_Zero-line/2,0])square([line,Walls]);
    }
    for ( i = [0 : 1 : len(eot)-1] ){
        translate([((eot[i]-Tmin)/Tmax) * T_Ratio + T_Zero-line/2,0])square([line,2*Walls]);
    }
    
    Declinaison = [90,80,70,60,50,40,30,20,10,0];
    for ( i = [0:1:len(Declinaison)-1] )rotate([0,0,180]){
        translate([r_back_mid6*i/(len(Declinaison)-1) - line/2, 0])square([line,2*Walls]);
    }
    Declinaison2 = [90,88,86,84,82,80,78,76,74,72,70,68,66,64,62,60,58,56,54,52,50,48,46,44,42,40,38,36,34,32,30,28,26,24,22,20,18,16,14,12,10,8,6,4,0];
    for ( i = [0:1:len(Declinaison2)-1] )rotate([0,0,180]){
        translate([r_back_mid6*i/(len(Declinaison2)) - line/2, 0])square([line,Walls]);
    }
}

AlFont = 2.5;

module Allidade_Ruler_Label(){
    for ( i = [0 : 1 : len(eot)-1] ){
        translate([((eot[i]-Tmin)/Tmax) * T_Ratio + T_Zero-line/2,2*Walls])text(str(eot[i]),size = AlFont, valign = "center", halign = "center");
    }
}

// // // // // // // // // // // // // // // // // // // // // // // // //     
// // // // // // // // //    Allidade_Pinule   // // // // // // // // //



module Allidade_pinule(){
    translate([0,Walls])square([3,Walls]);
    difference(){
        translate([3,-2*Walls])square([4*Walls,5*Walls]);
        translate([3+2*Walls,0])circle(r=Walls,$fn=Smoothness);
    }
}




