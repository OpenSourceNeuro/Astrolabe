include <Settings.scad>;


// // // // // // // // // // // // // // // // // // // // // // // // //     
// // // // // // // // // //   Ostensor  // // // // // // // // // // //

module Ostensor_Body(){
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

module Ruler(){
    Pin();
    Graduation = [-alpha,0,alpha];
    
    Grad = [ for (i=[0:len(Graduation)-1]) (r_Equator*tan((90-Graduation[i])/2))]; 
    Graduation1 = [-20,-10,0,10,20,30,40,50,60,70,80];
    Grad1 = [ for (i=[0:len(Graduation1)-1]) (r_Equator*tan((90-Graduation1[i])/2))]; 
    Graduation2 = [-22,-20,-18,-16,-14,,-12,-10,-8,-6,-4,-2,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,74,76,78,80,82,84,86,88,90];
    Grad2 = [ for (i=[0:len(Graduation2)-1]) (r_Equator*tan((90-Graduation2[i])/2))]; 
    GradFont = 1.5;   
    
    for (i=[0:len(Grad1)-1]){
        translate([Grad1[i]-line/2,0])square([line,2*Walls]);
    }
    for (i=[0:len(Grad2)-1]){
        translate([Grad2[i]-line/2,0])square([line,Walls]);
    }

    for (i=[0:len(Grad)-1]){
        rotate([0,0,180])translate([Grad[i]-line/2,0])square([line,2*Walls]);
    }
}

module Ruler_Label(){
    AGrad = ["Capricorn","Equator","Cancer"];
    for (i=[0:len(Grad1)-1]){
        translate([Grad1[i],2.5*Walls])text(str(Graduation1[i]),size = GradFont, valign = "center", halign = "center");
        for (i=[0:len(Grad)-1]){
            rotate([0,0,180])translate([Grad[i],2.5*Walls])text(AGrad[i],size = GradFont, valign = "center", halign = "center");
        }
    }
}
