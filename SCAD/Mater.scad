include <Settings.scad>;



// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // //   Mater's front   // // // // // // // // // 



// // // // // // // // // //    Mater's Body   // // // // // // // // // 

module Mater_Ring(){
    difference(){
        circle(r=R_Mater,$fn=Smoothness);
        circle(r=r_Mater,$fn=Smoothness);   
    }
}
module MaterRingLines(){
    intersection(){
        Pin_Climate();
        union(){
            translate([-R_Mater,-line])square([2*R_Mater,2*line]);
            translate([-line,-R_Mater])square([2*line,2*R_Mater]);
        }
    }
}


module MaterFrontLines(){
      
    translate([0,0,0]){ 
        difference(){
            circle(r=r_degree_ext,$fn=Smoothness);
            circle(r=r_degree_ext-line,$fn=Smoothness); 
        }
        difference(){
            circle(r=r_degree_int,$fn=Smoothness);
            circle(r=r_degree_int-line,$fn=Smoothness); 
        }
        difference(){
            circle(r=r_degree_mid,$fn=Smoothness);
            circle(r=r_degree_mid-line,$fn=Smoothness); 
        }
        difference(){
            circle(r=r_degree_ext,$fn=Smoothness);
            circle(r=r_degree_ext-line,$fn=Smoothness); 
        }
    }  
    
    xxx = [15,10,5,3.75,7.5,1.25,0.25,1];
    yyy = [r_degree_ext,r_degree_mid,r_degree_mid-3,r_degree_mid+4,r_degree_mid+6,r_degree_mid+2,r_degree_mid,r_degree_int];
    zzz = [r_degree_mid,r_degree_int,r_degree_int,r_degree_mid,r_degree_mid,r_degree_mid,r_degree_mid,R_Mater-MaterEdge];
        
    for ( i = [0 : len(xxx)-1]){    
        difference(){
                for ( j = [0 : xxx[i] : 360] ){
                    rotate([0, 0, j])translate([0,-line/2])square([yyy[i],line]);
                }
                circle(r=zzz[i],$fn=Smoothness); 
            }
        } 
}



// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // //  Writing engraving // // // // // // // // // 



// // // // // // // // // // //   Time  //  // // // // // // // // // // 

module Time(){
    
    x_Time = -1;
    y_Time = 6;
    TimeFont = 5;  
    Time = ["I","II","III","IV","V","VI","VII","VIII","IX","X","XI","XII"];  
    TimeDeg = [15,30,45,60,75,90,105,120,135,150,165,180];    
    
    for ( i = [0,180,360] ){
            for ( j = [ 0 : len(Time)-1 ] ){
            rotate([0,0,-TimeDeg[j]+i])translate([x_Time,R_Mater-y_Time])text(Time[j],size = TimeFont, halign="right");
        }
    }
}



// // // // // // // // // // //  Angles //  // // // // // // // // // // 

module Angles(){
    
    Angle = ["0","10","20","30","40","50","60","70","80","90"];
    AngleDeg = [0,10,20,30,40,50,60,70,80,90];
    AngleFont = 4.5;
    x_Angle = 0.25;
    y_Angle = 7;
    
    for ( i = [90,270] ){
        for ( j = [0 : len(Angle)-1] ){
            rotate([0,0,i+AngleDeg[j]])translate([x_Angle,r_degree_mid-y_Angle])text(Angle[j],size = AngleFont, halign="left");
            rotate([0,0,i-AngleDeg[j]])translate([x_Angle,r_degree_mid-y_Angle])text(Angle[j],size = AngleFont, halign="left");
        }
    }
}

 


// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // //   Mater's back   // // // // // // // // // 


// // // // // // // // // // //  Throne //  // // // // // // // // // // 

module Throne(){
    
    r_Ring = 4;
    r_Throne1 = R_Mater/2.5;
    r_Throne2 = r_Throne1/2;
    a_Throne = ((R_Mater*R_Mater)-(r_Throne1*r_Throne1)+(R_Mater*R_Mater))/(2*R_Mater);  
    x_Throne = sqrt(R_Mater*R_Mater-a_Throne*a_Throne);                       
    y_Throne = a_Throne + (x_Throne * (0 - 0)/R_Mater);           

    translate([0,0])difference(){
        union(){
            translate([0,R_Mater,0])circle(r=r_Throne1,$fn=Smoothness);
            translate([x_Throne,y_Throne,0])scale([1,1])circle(r=r_Throne2,$fn=Smoothness);
            translate([-x_Throne,y_Throne,0])scale([1,1])circle(r=r_Throne2,$fn=Smoothness);
        }
        circle(r=R_Mater,$fn=Smoothness);
        translate([0,R_Mater+r_Throne1/2])circle(r=r_Ring,$fn=60);
    }
}



// // // // // // // // // //    Mater's Body   // // // // // // // // // 

module Mater_Body(){
    Throne();
    difference(){
        circle(r=R_Mater,$fn=Smoothness);
        Pin();  
    }
}


// // // // // // // // // //   Back Lines   // // // // // // // // // // 


    r_back_ext  = R_Mater;
    r_back_mid  = R_Mater - MaterEdge*2/10;
    r_back_mid2 = R_Mater - MaterEdge*5/10;
    r_back_mid3 = R_Mater - MaterEdge*9/10;
    r_back_mid4 = R_Mater - MaterEdge*10.5/10;
    r_back_mid5 = R_Mater - MaterEdge*12/10;
    r_back_mid6 = R_Mater - MaterEdge*16/10;
    r_back_int  = R_Mater - MaterEdge*16/10;

module MaterBackLines(){
    
    difference(){
        circle(r=r_back_ext,$fn=Smoothness);
        circle(r=r_back_ext-line,$fn=Smoothness); 
    }
    difference(){
        circle(r=r_back_mid,$fn=Smoothness);
        circle(r=r_back_mid-line,$fn=Smoothness); 
    }
    difference(){
        circle(r=r_back_mid2,$fn=Smoothness);
        circle(r=r_back_mid2-line,$fn=Smoothness); 
    }
    
    difference(){
        circle(r=r_back_mid2,$fn=Smoothness);
        circle(r=r_back_mid2-line,$fn=Smoothness); 
    }
    difference(){
        circle(r=r_back_mid3,$fn=Smoothness);
        circle(r=r_back_mid3-line,$fn=Smoothness); 
    }
    difference(){
        circle(r=r_back_mid4,$fn=Smoothness);
        circle(r=r_back_mid4-line,$fn=Smoothness); 
    }
    difference(){
        circle(r=r_back_mid5,$fn=Smoothness);
        circle(r=r_back_mid5-line,$fn=Smoothness); 
    }
    difference(){
        circle(r=r_back_mid6,$fn=Smoothness);
        circle(r=r_back_mid6-line,$fn=Smoothness); 
    }
    difference(){
        circle(r=r_back_int,$fn=Smoothness);
        circle(r=r_back_int-line,$fn=Smoothness); 
    }
}

module Back_angle()rotate([0,0,90]){  
    
    BackFont = Font;
    x_Back = 0;
    y_Back = 5.5;
    DegreeLabel = ["360","350","340","330","320","310","300","290","280","270","260","250","240","230","220","210","200","190","180","170","160","150","140","130","120","110","100","90","80","70","60","50","40","30","20","10"];
    Degree = [0,10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160,170,180,190,200,210,220,230,240,250,260,270,280,290,300,310,320,330,340,350,360];
    
    difference(){
        for ( i = [0 : 10 : 360] ){
            rotate([0, 0, i])translate([0,-line/2])square([r_back_ext,line]);
        }
        circle(r=r_back_mid,$fn=Smoothness); 
    }
    
    difference(){
        for ( i = [0 : 1 : 360] ){
            rotate([0, 0, i])translate([0,-line/2,0])square([r_back_ext,line]);
        }
        circle(r=r_back_ext-2,$fn=Smoothness); 
    }

//    for ( i = [0 : 1 : len(Degree)-1] ){
//        rotate([0,180,Degree[i]])translate([x_Back,r_back_mid-y_Back+1,0])mirror([360,0,0])text(DegreeLabel[i],size = BackFont-0.5, halign="center");
//    }    
}

 
// // // // // // // // // //  Calendar   // // // // // // // // // // //

    x_calendar = 0;
    y_calendar = -4;
    MidMonth = (31/Year*360)/2;
    x_Calendar = 0;
    y_Calendar = 0;    
    CalendarFont = Font;
    Months = ["Jan","Fev","Mar","Avr","Mai","Jun","Jul","Aou","Sep","Oct","Nov","Dec"];

module Calendar(){
    
    difference(){rotate([0,0,(Jun21st)/Year*360]){  
        for ( i = [0 : Year] ){ 
            x = -i/Year * 360;
            translate([x_Calendar,y_Calendar,-50])rotate([0, 0, x])translate([-line/2,0,0])square([line,r_back_mid3]);
            }
        }
        translate([x_Calendar,y_Calendar])circle(r=r_back_mid4,$fn=Smoothness); 
    }
    difference(){
        rotate([0,0,(Jun21st)/Year*360]){        
            for (i = [0 : len(Months)-1]){
                x = -Days[i]/Year*360;
                rotate([0, 0, x])translate([-line/2,0,0])square([line,r_back_mid4]);
            }   
        }
        circle(r=r_back_mid6,$fn=Smoothness);
    }
    
    difference(){
        union(){
            for ( i = [ 0 : len(Months)-1]){
                for ( j = [Days[i]+5,Days[i]+10,Days[i]+15,Days[i]+20,Days[i]+25]){
                    x = (j-Jun21st)/Year*360;
                    rotate([0,0,-x])translate([-line/2,0,0])square([line,r_back_mid4]);
                }
            }
            for ( i = [0,2,4,6,7,9,11]){
                for ( k = [Days[i]+30]){
                    x = (k-Jun21st)/Year*360;
                    rotate([0,0,-x])translate([-line/2,0,0])square([line,r_back_mid4]);
                }
            }
        }
        circle(r=r_back_mid5,$fn=Smoothness);   
    }
}

module Calendar_Label(){
    
    rotate([0,0,(Jun21st)/Year*360]){        
        for (i = [0 : len(Days)-2]){
            rotate([0,0,-Days[i+1]]){
                rotate([0,0,MidMonth+i/3])translate([x_calendar, r_back_mid5 + y_calendar])text(Months[i],size = CalendarFont, valign = "center", halign = "center");
            }
        }
    }
}


// // // // // // // // // // //  Zodiac  // // // // // // // // // // //

function add(v, i = 0,  r = 0) = i < len(v) ? add(v, i + 1, r + v[i]) : r;
    y_Zodiac = -6.5;
    ZodiacFont = Font;
    //zodiac = [0,29.3,21.1,36.9,44.5,21.1,8.4,18.4,33.6,27.4,22.9,37.7,25.5,38.2];
    zodiac = [0,29,21,37,45,23,6,18,34,27,23,38,25,39];
    caidoz = [for (i = [0:len(zodiac)-2]) (zodiac[len(zodiac)-1-i])];
    Zodiac = [ for (i=[0:len(zodiac)-1])(add(caidoz,len(caidoz)-i,0))];
    ZodiacLabel = ["Gemeaux","Cancer","Lion","Vierge","Balance","Sc.","Serpen.","Sagitaire","Capricorn","Verseau","Poisson","Belier","Taureau"];
    ZodiacAdjust = [5,3,15,15,4,2,2,5,2.5,3,7.5,7,10];
    ZodiacCenter = [1.25,1.2,4,2.75,1.25,1,1,1.2,1.1,1.1,1.5,1.5,1.75];  


module Zodiac(){
    
    difference(){
        for ( i = [0 : len(Zodiac)-2]){
            x = Zodiac[i+1]/Year * 360;
            rotate([0, 0, -x])translate([-line/2,0])square([line,r_back_mid2]);
        }
        circle(r=r_back_mid3,$fn=Smoothness); 
    }
}


module Zodiac_Label(){
    
    for ( i = [0 : len(Zodiac)-2]){
        x = ZodiacLabel[i];
        y = len(x)*ZodiacCenter[i];
        Zo = zodiac[i+1];
        for (j = [0 : y]){
            z = (   (j/y) * (-Zo) -Zodiac[i]  - ZodiacAdjust[i])  / Year * 360;
            Char = [for (c = ZodiacLabel[i]) ord(c)];
            rotate([0,0,z])translate([0, r_back_mid2 + ZodiacFont/2 + y_Zodiac])rotate([0,0,0])text(chr(Char)[j],size = ZodiacFont, valign = "center", halign = "center");
         }
     }
}


// // // // // // // // //   Equation of Time   // // // // // // // // //

    Tmin = -16.5;
    Tmax = 14.598;
    T_Zero = 30;
    T_Ratio = 30;

module Equation_of_Time(){
    
    for ( i = [0 : 1 : Year]){
        x = i-81;
        B = (2*pi*x)/Year;
        e = B+1.374;
        E = 7.678 * sin(e*180/pi); 
        O = 9.87 * sin(2*B*180/pi);
        T = ((E - O)-Tmin)/Tmax;
        R = (i/Year *360)+Jan1st;
        rotate([0,0,-R+90])translate([T * T_Ratio + T_Zero,0,0])circle(r=line2,$fn=Smoothness);
        //echo(R,E-O);
    }        
}

// // // // // // // // // //   Temporal Hours   // // // // // // // // //

module Temporal_Hour(){
    
    difference(){
        union(){
    difference(){
        circle(r=r_back_int,$fn=Smoothness);
        circle(r=r_back_int-line,$fn=Smoothness); 
    }
    
    x0 = 0;
    y0 = r_back_int/2;
    difference(){
        translate([x0,y0])circle(r=r_back_int/2,$fn=Smoothness);
        translate([x0,y0])circle(r=r_back_int/2-line,$fn=Smoothness); 
    }
    x_hour = [ for (i = [1:5]) (cos(15*i)*r_back_int) ];
    y_hour = [ for (i = [1:5]) (sin(15*i)*r_back_int) ];

    slope = [ for (i = [0:4]) ((y_hour[i] / x_hour[i])) ];
    m = [ for (i = [0:4]) (-1/slope[i]) ];
    b = [ for (i = [0:4]) (y_hour[i]/2 - (m[i] * x_hour[i]/2)) ];
    slope2 = [ for (i = [0:4]) ((y_hour[i] / -x_hour[i])) ];
    mm = [ for (i = [0:4]) (-1/slope2[i]) ];
    bb = [ for (i = [0:4]) (y_hour[i]/2 - (mm[i] * (-x_hour[i]/2))) ];
    x_temporal_hour = [ for (i = [0:4]) ((bb[i]-b[i]) / (m[i]-mm[i])) ]; 
    y_temporal_hour = [ for (i = [0:4]) (m[i] * x_temporal_hour[i] + b[i]) ];    
    r_temporal_hour = [ for (i =[0:4]) (sqrt(pow((x_temporal_hour[i]-x_hour[i]),2)+pow((y_temporal_hour[i]-y_hour[i]),2))) ];

    for (i = [0:4]){
        intersection(){
            difference(){
                translate([x_temporal_hour[i],y_temporal_hour[i]])circle(r=r_temporal_hour[i],$fn=Smoothness);
                translate([x_temporal_hour[i],y_temporal_hour[i]])circle(r=r_temporal_hour[i]-line,$fn=Smoothness);
            }
            circle(r=r_back_int,$fn=Smoothness);
        }
    }
//    translate([r_back_int-2,Font/2+1,0])text("Orient",size=Font,valign="center",halign="right");
//    translate([-r_back_int+2,Font/2+1,0])text("Occident",size=Font,valign="center",halign="left");
    }
    Equation_of_Time();
}
}


// // // // // // // // // // Shadow Square  // // // // // // // // // //


module Shadow_Square(){

    x_Shadow = r_back_int-35;
    y_Shadow = x_Shadow;
    Shadow_Edge =3;
    Shadow_Edge2 =10;

    difference(){
        union(){
    intersection(){
        translate([-r_back_int,-line/2])square([r_back_int*2,line]);
        circle(r=r_back_int,$fn=Smoothness);
    }
    
    difference(){
        translate([-x_Shadow,-y_Shadow])square([x_Shadow*2,y_Shadow]);
        translate([-x_Shadow+line,-y_Shadow+line])square([x_Shadow*2-2*line,y_Shadow]);
    }
    difference(){
        translate([-x_Shadow+Shadow_Edge,-y_Shadow+Shadow_Edge])square([x_Shadow*2-2*Shadow_Edge,y_Shadow-Shadow_Edge]);
        translate([-x_Shadow+Shadow_Edge+line,-y_Shadow+Shadow_Edge+line])square([x_Shadow*2-2*Shadow_Edge-2*line,y_Shadow]);
    }
    difference(){
        translate([-x_Shadow+Shadow_Edge+Shadow_Edge2,-y_Shadow+Shadow_Edge+Shadow_Edge2])square([x_Shadow*2-2*Shadow_Edge-2*Shadow_Edge2,y_Shadow-Shadow_Edge-Shadow_Edge2]);
        translate([-x_Shadow+Shadow_Edge+Shadow_Edge2+line,-y_Shadow+Shadow_Edge+Shadow_Edge2+line])square([x_Shadow*2-2*Shadow_Edge-2*Shadow_Edge2-2*line,y_Shadow]);
    }

    for (i =[0:3.75:180]){
        intersection(){
            difference(){
                translate([-x_Shadow,-y_Shadow])square([x_Shadow*2,y_Shadow]);
                translate([-x_Shadow+Shadow_Edge,-y_Shadow+Shadow_Edge])square([x_Shadow*2-2*Shadow_Edge,y_Shadow-Shadow_Edge]);
            }
            rotate([0,0,-i])square([r_back_int,line]);
        }
    }
    
    for (i =[0:3*3.75:180]){
        intersection(){
            difference(){
                translate([-x_Shadow+Shadow_Edge,-y_Shadow++Shadow_Edge])square([x_Shadow*2-2*Shadow_Edge,y_Shadow-+Shadow_Edge]);
                translate([-x_Shadow+Shadow_Edge+Shadow_Edge2,-y_Shadow+Shadow_Edge++Shadow_Edge2])square([x_Shadow*2-2*Shadow_Edge-2*+Shadow_Edge2,y_Shadow-Shadow_Edge-+Shadow_Edge2]);
            }
            rotate([0,0,-i])square([r_back_int,line]);
        }   
    }
    
    Umbra = ["3","6","9","12"];
//    for (i = [0:3]){
//        translate([x_Shadow-Shadow_Edge-Font,-1-((y_Shadow-Shadow_Edge)*i/4)-1.5+i])rotate([0,0,90])text(Umbra[i],size=Font,valign="center",halign="center");
//        translate([-x_Shadow+Shadow_Edge+Font,-1-((y_Shadow-Shadow_Edge)*i/4)-2+i])rotate([0,0,180+90])text(Umbra[i],size=Font,valign="center",halign="center");
//        translate([1+(x_Shadow+Shadow_Edge)*i/4-3*i,-y_Shadow+Shadow_Edge+Font])text(Umbra[i],size=Font,valign="center",halign="left");
//        translate([-1-(x_Shadow+Shadow_Edge)*i/4+3.5*i,-y_Shadow+Shadow_Edge+Font])text(Umbra[i],size=Font,valign="center",halign="right");
//    }
//    translate([x_Shadow-Shadow_Edge-Shadow_Edge2-Font,(-y_Shadow+Shadow_Edge+Shadow_Edge2)/2])rotate([0,0,90])text("Umbra",size=Font,valign="center",halign="center");
//    translate([-x_Shadow+Shadow_Edge+Shadow_Edge2+Font,(-y_Shadow+Shadow_Edge+Shadow_Edge2)/2])rotate([0,0,-90])text("Versa",size=Font,valign="center",halign="center");
//    translate([0,-y_Shadow+Shadow_Edge+Shadow_Edge2+Font])text("Umbra Recta",size=Font,valign="center",halign="center");
    }
    Equation_of_Time();
    }
}



// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // //   Mater's middle  // // // // // // // // // 

module Mater_Middle(){
    Mater_Ring();
}




