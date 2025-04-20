include <Settings.scad>;
include <Mater.scad>;
include <Climate.scad>;
include <Rete.scad>;
include <Ostensor.scad>;
include <Allidade.scad>;
include <Stars.scad>;
    

 
// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //  Switch  // // // // // // // // // // //

    
    Mater_Front  = 0;        Mater_Front_Lines = 0;        Mater_Front_Writings = 0;   
    Mater_Middle = 0;
    Mater_Back   = 0;        Mater_Back_Lines  = 0;        Mater_Back_Writings  = 0; 
    
    Climate      = 0;        Climate_Lines     = 0;        Climate_Writings     = 0;      
    
    Rete         = 0;        Rete_Lines        = 0;        Rete_Writings        = 0;
    
    Ostensor     = 0;        Ostensor_Lines    = 0;        Ostensor_Writings    = 0;
    
    Allidade     = 0;        Allidade_Lines    = 0;        Allidade_Writings    = 0;
    Allidade_pinule = 0;
    
    Stars        = 1;        Constellations    = 1;        Ecliptic             = 1; 
    





// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // Modules  // // // // // // // // // // //    



// // // // // // // // // //   Mater's front   // // // // // // // // // 

if (Mater_Front==1 && Mater_Front_Lines==0 && Mater_Front_Writings==0){
    Mater_Ring();
}
if (Mater_Front==0 && Mater_Front_Lines==1  && Mater_Front_Writings==0){
    MaterFrontLines();
}
if (Mater_Front==0 && Mater_Front_Lines==0  && Mater_Front_Writings==1){
    Time();
    Angles();
}
if (Mater_Front==0 && Mater_Front_Lines==1  && Mater_Front_Writings==1){
    Time();
    Angles();
    MaterFrontLines();
}
if (Mater_Front==1 && Mater_Front_Lines==1  && Mater_Front_Writings==0){
    difference(){
        Mater_Ring();
        MaterFrontLines();
    }
}
if (Mater_Front==1 && Mater_Front_Lines==0  && Mater_Front_Writings==1){
    difference(){
        Mater_Ring();
        Time();
        Angles();
    }
}
if (Mater_Front==1 && Mater_Front_Lines==1  && Mater_Front_Writings==1){
    difference(){
        Mater_Ring();
        Time();
        Angles();
        MaterFrontLines();
    }
}



// // // // // // // // // //   Mater's middle  // // // // // // // // // 
if (Mater_Middle == 1){
    Mater_Middle();
    Pin_Climate();
}



// // // // // // // // // //    Mater's back   // // // // // // // // // 

if (Mater_Back==1 && Mater_Back_Lines==0 && Mater_Back_Writings==0){
    Mater_Body();

}
if (Mater_Back==0 && Mater_Back_Lines==1 && Mater_Back_Writings==0){
    MaterBackLines();
    Calendar();
    Equation_of_Time();
    Shadow_Square();
    Zodiac(); 
    Temporal_Hour();
}
if (Mater_Back==0 && Mater_Back_Lines==0 && Mater_Back_Writings==1){
    Back_angle();
    Calendar_Label();
    Zodiac_Label();
}
if (Mater_Back==1 && Mater_Back_Lines==1 && Mater_Back_Writings==0){
    difference(){
        Mater_Body();
        MaterBackLines();
        Calendar();
        Equation_of_Time();
        Shadow_Square();
        Zodiac(); 
        Temporal_Hour();
    }
}
if (Mater_Back==1 && Mater_Back_Lines==0 && Mater_Back_Writings==1){
    difference(){
        Mater_Body();
        Back_angle();
        Calendar_Label();
        Zodiac_Label();
    }
}
if (Mater_Back==1 && Mater_Back_Lines==1 && Mater_Back_Writings==1){
    difference(){
        Mater_Body();
        MaterBackLines();
        Calendar();
        Equation_of_Time();
        Shadow_Square();
        Zodiac(); 
        Temporal_Hour();
        Back_angle();
        Calendar_Label();
        Zodiac_Label();
    }
}
if (Mater_Back==0 && Mater_Back_Lines==1 && Mater_Back_Writings==1){
    MaterBackLines();
    Calendar();
    Equation_of_Time();
    Shadow_Square();
    Zodiac(); 
    Temporal_Hour();
    Back_angle();
    Calendar_Label();
    Zodiac_Label();
}



// // // // // // // // // // //   Climate   // // // // // // // // // // 

if (Climate==1 && Climate_Lines==0 && Climate_Writings==0){
    Climate_Body(); 
}
if (Climate==0 && Climate_Lines==1 && Climate_Writings==0){
    Local_Meridian();
    Tropiques();
    Almicantarat();
    Twilights();
    Azimuth();
    Unequal_Hours();
}
if (Climate==0 && Climate_Lines==0 && Climate_Writings==1){
       
}
if (Climate==1 && Climate_Lines==1 && Climate_Writings==0){
    difference(){
        Climate_Body(); 
        Local_Meridian();
        Tropiques();
        Almicantarat();
        Twilights();
        Azimuth();
        Unequal_Hours();
    }
}
if (Climate==1 && Climate_Lines==0 && Climate_Writings==1){
    difference(){
        Climate_Body(); 
        
    }
}
if (Climate==1 && Climate_Lines==1 && Climate_Writings==1){
    difference(){
        Climate_Body(); 
        Local_Meridian();
        Tropiques();
        Almicantarat();
        Twilights();
        Azimuth();
        Unequal_Hours();
    } 
}
if (Climate==0 && Climate_Lines==1 && Climate_Writings==1){
    Local_Meridian();
    Tropiques();
    Almicantarat();
    Twilights();
    Azimuth();
    Unequal_Hours(); 
}



// // // // // // // // // // // //   Rete   // // // // // // // // // // 

if (Rete==1 && Rete_Lines==0 && Rete_Writings==0){
    Rete_Body();
    }
if (Rete==0 && Rete_Lines==1 && Rete_Writings==0){
    Rete_Calendar();
    Rete_Zodiac();
    Stars();
}
if (Rete==0 && Rete_Lines==0 && Rete_Writings==1){
    Rete_CalendarLabel();
    Rete_ZodiacLabel();
}
if (Rete==1 && Rete_Lines==1 && Rete_Writings==0){
    difference(){
        Rete_Body();
        Rete_Calendar();
        Rete_Zodiac();
    }
    Stars();
}
if (Rete==1 && Rete_Lines==0 && Rete_Writings==1){
    difference(){
        Rete_Body();
        Rete_CalendarLabel();
        Rete_ZodiacLabel();
    }
}
if (Rete==1 && Rete_Lines==1 && Rete_Writings==1){
    difference(){
        Rete_Body();
        Rete_Calendar();
        Rete_CalendarLabel();
        Rete_ZodiacLabel();
    }
    Stars();
    }
if (Rete==0 && Rete_Lines==1 && Rete_Writings==1){
    Rete_Body();
    Rete_Calendar();
    Rete_CalendarLabel();
    Rete_ZodiacLabel();
    Stars();
}



// // // // // // // // // //  Ostensor   // // // // // // // // // // 

if (Ostensor==1 && Ostensor_Lines==0 && Ostensor_Writings==0){
    Ostensor_Body();
    }
if (Ostensor==0 && Ostensor_Lines==1 && Ostensor_Writings==0){
    Ruler();
}
if (Ostensor==0 && Ostensor_Lines==0 && Ostensor_Writings==1){
    Ruler_Label();
}
if (Ostensor==1 && Ostensor_Lines==1 && Ostensor_Writings==0){
    difference(){
        Ostensor_Body();
        Ruler();
    }
}
if (Ostensor==1 && Ostensor_Lines==0 && Ostensor_Writings==1){
    difference(){
        Ostensor_Body();
        Ruler_Label();
    }
}
if (Ostensor==1 && Ostensor_Lines==1 && Ostensor_Writings==1){
    difference(){
        Ostensor_Body();
        Ruler();
        Ruler_Label();
    }
}
if (Ostensor==0 && Ostensor_Lines==1 && Ostensor_Writings==1){
    Ruler();
    Ruler_Label();
}



// // // // // // // // // //  Allidade   // // // // // // // // // // 

if (Allidade==1 && Allidade_Lines==0 && Allidade_Writings==0){
    Allidade_Body();
    }
if (Allidade==0 && Allidade_Lines==1 && Allidade_Writings==0){
    Allidade_Ruler();
}
if (Allidade==0 && Allidade_Lines==0 && Allidade_Writings==1){
    Allidade_Ruler_Label();
}
if (Allidade==1 && Allidade_Lines==1 && Allidade_Writings==0){
    difference(){
        Allidade_Body();
        Allidade_Ruler();
    }
}
if (Allidade==1 && Allidade_Lines==0 && Allidade_Writings==1){
    difference(){
        Allidade_Body();
        Allidade_Ruler_Label();
    }
}
if (Allidade==1 && Allidade_Lines==1 && Allidade_Writings==1){
    difference(){
        Allidade_Body();
        Allidade_Ruler();
        Allidade_Ruler_Label();
    }
}
if (Allidade==0 && Allidade_Lines==1 && Allidade_Writings==1){
    Allidade_Ruler();
    Allidade_Ruler_Label();
}

if (Allidade_pinule==1){
    Allidade_pinule();
}






// // // // // // // // //  Star Climate  // // // // // // // // // // 

if (Stars==1 && Constellations==0 && Ecliptic==0){
    Stars_Climate();
}
if (Stars==0 && Constellations==1 && Ecliptic==0){
    Constellations_Climate();
}
if (Stars==0 && Constellations==0 && Ecliptic==1){
    difference(){
        translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic,$fn=Smoothness);
        translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic-line,$fn=Smoothness);
    }
    difference(){
        translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic-Ecliptic_Ring+line,$fn=Smoothness);
        translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic-Ecliptic_Ring,$fn=Smoothness);
    }
    Rete_Calendar();
    Rete_Zodiac();
}
if (Stars==1 && Constellations==1 && Ecliptic==0){
    Stars_Climate();
    
    Constellations_Climate();
}
if (Stars==0 && Constellations==1 && Ecliptic==1){
    Constellations_Climate();
    
    difference(){
        translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic,$fn=Smoothness);
        translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic-line,$fn=Smoothness);
    }
    difference(){
        translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic-Ecliptic_Ring+line,$fn=Smoothness);
        translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic-Ecliptic_Ring,$fn=Smoothness);
    }
    difference(){
        circle(r=r_Capricorn,$fn=Smoothness);
        circle(r=r_Capricorn-line,$fn=Smoothness);
    }
    Rete_Calendar();
    Rete_Zodiac();
}
if (Stars==1 && Constellations==0 && Ecliptic==1){
    Stars_Climate();
    
    difference(){
        translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic,$fn=Smoothness);
        translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic-line,$fn=Smoothness);
    }
    difference(){
        translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic-Ecliptic_Ring+line,$fn=Smoothness);
        translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic-Ecliptic_Ring,$fn=Smoothness);
    }
    difference(){
        circle(r=r_Capricorn,$fn=Smoothness);
        circle(r=r_Capricorn-line,$fn=Smoothness);
    }
    Rete_Calendar();
    Rete_Zodiac();
}
if (Stars==1 && Constellations==1 && Ecliptic==1){
    Stars_Climate();
    
    Constellations_Climate();
    
    difference(){
        translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic,$fn=Smoothness);
        translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic-line,$fn=Smoothness);
    }
    difference(){
        translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic-Ecliptic_Ring+line,$fn=Smoothness);
        translate([0,r_Ecliptic-r_Cancer])circle(r=r_Ecliptic-Ecliptic_Ring,$fn=Smoothness);
    }
    difference(){
        circle(r=r_Capricorn,$fn=Smoothness);
        circle(r=r_Capricorn-line,$fn=Smoothness);
    }
    Rete_Calendar();
    Rete_Zodiac();
}





