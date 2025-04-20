include <Settings.scad>;

Sm = 60;



module Stars_Climate(){
    
    Andromeda();
    Aquarius();
    Aquila();
    Aries();
    Auriga();
        Bootes();
        Camelopardalis();
        Cancer();
        CanesVenatici();
        CanisMajor();
    CanisMinor();
    Capricornus();
    Cassiopeia();
    Cepheus();
    Cetus();
        ComaBerenices();
        CoronaBorealis();
        Corvus();
        Crater();
        Cygnus();
    Delphinus();
    Draco();
    Eridanus();
    Equuleus();
    Gemini();
        Hercules();
        Hydra();
        Lacerta();
        Leo();
        LeoMinor();
    Lepus();
    Libra();
    Lynx();
    Lyra();
    Monoceros();
        Ophiochus();
        Orion();
        Pegasus();
        Perseus();
        Pisces();
    Sagitta();
    Sagittarius();
    Sextans();
    Scorpius();
    Scutum();
        Serpens();
        Taurus();
        Triangulum();
        UrsaMajor();
        UrsaMinor();
    Virgo();
    Vulpecula();
}

module Constellations_Climate(){
    Andromeda_Constellation();
    Aquarius_Constellation();
    Aries_Constellation();
    Aquila_Constellation();
    Auriga_Constellation();
    Bootes_Constellation();
    Camelopardalis_Constellation();
    Cancer_Constellation();
    CanesVenatici_Constellation();
    CanisMajor_Constellation();
    CanisMinor_Constellation();
    Capricornus_Constellation();
    Cassiopeia_Constellation();
    Cepheus_Constellation();
    Cetus_Constellation();
    ComaBerenices_Constellation();
    CoronaBorealis_Constellation();
    Corvus_Constellation();
    Crater_Constellation();
    Cygnus_Constellation();
    Delphinus_Constellation();
    Draco_Constellation();
    Eridanus_Constellation();
    Equuleus_Constellation();
    Gemini_Constellation();
    Hercules_Constellation();
    Hydra_Constellation();
    Lacerta_Constellation();
    Leo_Constellation();
    Lepus_Constellation();
    LeoMinor_Constellation();
    Libra_Constellation();
    Lynx_Constellation();
    Lyra_Constellation();
    Monoceros_Constellation();
    Ophiochus_Constellation();
    Orion_Constellation();
    Pegasus_Constellation();
    Perseus_Constellation();
    Pisces_Constellation();
    Sagitta_Constellation();
    Sagittarius_Constellation();
    Scorpius_Constellation();
    Serpens_Constellation();
    Sextans_Constellation();
    Scutum_Constellation();
    Taurus_Constellation();
    Triangulum_Constellation();
    UrsaMajor_Constellation();
    UrsaMinor_Constellation();
    Virgo_Constellation();
    Vulpecula_Constellation();
    
}

module constellation(star1, star2, rot1, rot2, thickness) {
    hull() {
        rotate([0,0,90+rot1*360/24])translate([0,(r_Equator*tan(45-star1/2))])circle(thickness);
        rotate([0,0,90+rot2*360/24])translate([0,(r_Equator*tan(45-star2/2))])circle(thickness);
    }
}




// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //  Andromeda  // // // // // // // // // // 
    
Andromeda = [2.03,
             2.17,
             2.23,
             3.42,
             3.44,
             3.59,
             3.62,
             3.81,
             3.86,
             4.08,
             4.10,
             4.15,
             4.26,
             4.29,
             4.34,
             4.34,
             4.40,
             4.51,
             4.53
            ];

Andromeda_Ascension = [0.1611,
                       1.1853,
                       2.0903,
                       0.6775,
                       0.7122,
                       1.6331,
                       23.0319,
                       23.6258,
                       0.9458,
                       0.7889,
                       1.6131,
                       23.6733,
                       1.1583,
                       23.6356,
                       0.6144,
                       0.6425,
                       0.9533,
                       0.3053,
                       0.8300
                      ];
                       
Andromeda_Declination = [29.23,
                         35.75,
                         42.45,
                         31.00,
                         41.27,
                         48.63,
                         42.33,
                         46.46,
                         38.50,
                         24.27,
                         41.41,
                         44.33,
                         47.24,
                         43.27,
                         33.72,
                         29.31,
                         23.42,
                         36.47,
                         41.08
                         ];
                         
Andromeda_Asc = [ for (i=[0:len(Andromeda_Ascension)-1]) (Andromeda_Ascension[i]*360/24)]; 
Andromeda_Dec = [ for (i=[0:len(Andromeda_Declination)-1]) (r_Equator*tan(45-(Andromeda_Declination[i])/2))];
   

module Andromeda(){
    for (i = [0:len(Andromeda)-1]){
        rotate([0,0,90+Andromeda_Asc[i]])translate([0,Andromeda_Dec[i]])Star_Climate(r_Stars/ln(Andromeda[i]+lnStar));
    }
}

module Andromeda_Constellation(){
    Star1 = [Andromeda_Declination[0], 
             Andromeda_Declination[3], 
             Andromeda_Declination[1], 
             Andromeda_Declination[3],
    
             Andromeda_Declination[3], 
             Andromeda_Declination[15], 
             Andromeda_Declination[9],
    
             Andromeda_Declination[14], 
             Andromeda_Declination[13], 
             Andromeda_Declination[13], 
             Andromeda_Declination[11],
    
             Andromeda_Declination[1],
    
             Andromeda_Declination[1], 
             Andromeda_Declination[8], 
             Andromeda_Declination[18], 
             Andromeda_Declination[12]
            ];    
    Rot1 = [Andromeda_Ascension[0], 
            Andromeda_Ascension[3], 
            Andromeda_Ascension[1], 
            Andromeda_Ascension[3],
    
            Andromeda_Ascension[3], 
            Andromeda_Ascension[15], 
            Andromeda_Ascension[9],
            
            Andromeda_Ascension[14], 
            Andromeda_Ascension[13], 
            Andromeda_Ascension[13], 
            Andromeda_Ascension[11],
            
            Andromeda_Ascension[1],
            
            Andromeda_Ascension[1], 
            Andromeda_Ascension[8], 
            Andromeda_Ascension[18], 
            Andromeda_Ascension[12]
           ];
    Star2 = [Andromeda_Declination[3], 
             Andromeda_Declination[1], 
             Andromeda_Declination[14], 
             Andromeda_Declination[14],
             
             Andromeda_Declination[15], 
             Andromeda_Declination[9], 
             Andromeda_Declination[16],
    
             Andromeda_Declination[13], 
             Andromeda_Declination[6], 
             Andromeda_Declination[11], 
             Andromeda_Declination[7],
            
             Andromeda_Declination[2],
    
             Andromeda_Declination[8], 
             Andromeda_Declination[18], 
             Andromeda_Declination[12], 
             Andromeda_Declination[5]
            ];

    Rot2 = [Andromeda_Ascension[3], 
            Andromeda_Ascension[1], 
            Andromeda_Ascension[14], 
            Andromeda_Ascension[14], 
            
            Andromeda_Ascension[15], 
            Andromeda_Ascension[9], 
            Andromeda_Ascension[16],
            
            Andromeda_Ascension[13], 
            Andromeda_Ascension[6], 
            Andromeda_Ascension[11], 
            Andromeda_Ascension[7],
            
            Andromeda_Ascension[2],
            
            Andromeda_Ascension[8], 
            Andromeda_Ascension[18], 
            Andromeda_Ascension[12], 
            Andromeda_Ascension[5]
           ];
    
    for ( i = [0 : 15]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}



// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //   Aquarius  // // // // // // // // // // 
    
Aquarius = [2.9,
            2.95,
            3.27,
            3.65,
            3.68,
            3.73,
            3.78,
            3.86,
            3.96,
            4.04,
            4.05,
            4.17,
            4.22,
            4.24,
            4.29,

            4.82
            ];

Aquarius_Ascension = [21.5258,
                      22.0964,
                      22.9108,
                      22.4803,
                      23.1572,
                      22.8767, 
                      20.7944,
                      22.3608,                      
                      23.3828,
                      22.5892,
                      22.8264,
                      22.2803,
                      23.2381,
                      23.2647,
                      22.1072,
                      
                      22.5106
                      ];
                       
Aquarius_Declination = [-5.57,
                        -0.32,
                        -15.82,
                        -0.02,
                        -21.17,
                        -7.58,
                        -9.49,
                        -1.39,
                        -20.1,
                        -0.12,
                        -13.60,
                        -7.78,
                        -6.05,
                        -9.09,
                        -13.87,
                        
                        -10.68
                         ];
                         
Aquarius_Asc = [ for (i=[0:len(Aquarius_Ascension)-1]) (Aquarius_Ascension[i]*360/24)]; 
Aquarius_Dec = [ for (i=[0:len(Aquarius_Declination)-1]) (r_Equator*tan(45-(Aquarius_Declination[i])/2))];
   

module Aquarius(){
    for (i = [0:len(Aquarius)-1]){
        rotate([0,0,90+Aquarius_Asc[i]])translate([0,Aquarius_Dec[i]])Star_Climate(r_Stars/ln(Aquarius[i]+lnStar));
    }
}

module Aquarius_Constellation(){
    Star1 = [Aquarius_Declination[1], 
             Aquarius_Declination[7],
             Aquarius_Declination[3],
             Aquarius_Declination[9], 
             Aquarius_Declination[5],
             Aquarius_Declination[13],
    
             Aquarius_Declination[1],
             Aquarius_Declination[11],
             Aquarius_Declination[11],
             Aquarius_Declination[15],
             Aquarius_Declination[10],
             Aquarius_Declination[2],
    
             Aquarius_Declination[1],
             Aquarius_Declination[0]

            ];    
    Rot1 = [Aquarius_Ascension[1],
            Aquarius_Ascension[7], 
            Aquarius_Ascension[3],
            Aquarius_Ascension[9],
            Aquarius_Ascension[5], 
            Aquarius_Ascension[13],
    
            Aquarius_Ascension[1], 
            Aquarius_Ascension[11], 
            Aquarius_Ascension[11], 
            Aquarius_Ascension[15], 
            Aquarius_Ascension[10], 
            Aquarius_Ascension[2],
    
            Aquarius_Ascension[1], 
            Aquarius_Ascension[0]

           ];
    Star2 = [Aquarius_Declination[7],
             Aquarius_Declination[3], 
             Aquarius_Declination[9],
             Aquarius_Declination[5], 
             Aquarius_Declination[13],
             Aquarius_Declination[8],
    
             Aquarius_Declination[11],
             Aquarius_Declination[14],
             Aquarius_Declination[15],
             Aquarius_Declination[10],
             Aquarius_Declination[2],
             Aquarius_Declination[4],
    
             Aquarius_Declination[0],
             Aquarius_Declination[6]

            ];

    Rot2 = [Aquarius_Ascension[7], 
            Aquarius_Ascension[3],
            Aquarius_Ascension[9],
            Aquarius_Ascension[5],
            Aquarius_Ascension[13], 
            Aquarius_Ascension[8],
    
            Aquarius_Ascension[11], 
            Aquarius_Ascension[14], 
            Aquarius_Ascension[15], 
            Aquarius_Ascension[10], 
            Aquarius_Ascension[2], 
            Aquarius_Ascension[4],
    
            Aquarius_Ascension[0], 
            Aquarius_Ascension[6]

           ];
    
    for ( i = [0 : 13]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}



// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // //  Aquila  // // // // // // // // // // 
    
Aquila = [0.76,
          2.72,
          2.99,
          3.24,
          3.36,
          3.43,
          3.71,
          3.87,
          4.02,
          4.02,
          4.36
         ];

Aquila_Ascension = [19.8461,
                    19.7708,
                    19.0900,
                    20.1883,
                    19.4247,
                    19.1039,
                    19.9217,
                    19.8744,
                    18.9936,
                    19.0278,
                    19.6119
                   ];
                       
Aquila_Declination = [8.86,
                      10.61,
                      13.87,
                      -0.82,
                      3.11,
                      -4.88,
                      6.41,
                      1.01,
                      15.07,
                      -5.74,
                      -1.29
                     ];
                         
Aquila_Asc = [ for (i=[0:len(Aquila_Ascension)-1]) (Aquila_Ascension[i]*360/24)]; 
Aquila_Dec = [ for (i=[0:len(Aquila_Declination)-1]) (r_Equator*tan(45-(Aquila_Declination[i])/2))];
   

module Aquila(){
    for (i = [0:len(Aquila)-1]){
        rotate([0,0,90+Aquila_Asc[i]])translate([0,Aquila_Dec[i]])Star_Climate(r_Stars/ln(Aquila[i]+lnStar));
    }
}

module Aquila_Constellation(){
    Star1 = [Aquila_Declination[0], 
             Aquila_Declination[0], 
             Aquila_Declination[1], 
             Aquila_Declination[4], 
             Aquila_Declination[2], 
             Aquila_Declination[4], 
             Aquila_Declination[7], 
             Aquila_Declination[4], 
             Aquila_Declination[2], 
             Aquila_Declination[3], 
             Aquila_Declination[10], 
             Aquila_Declination[5]
    

            ];    
    Rot1 = [Aquila_Ascension[0], 
            Aquila_Ascension[0], 
            Aquila_Ascension[1], 
            Aquila_Ascension[4], 
            Aquila_Ascension[2], 
            Aquila_Ascension[4], 
            Aquila_Ascension[7], 
            Aquila_Ascension[4], 
            Aquila_Ascension[2], 
            Aquila_Ascension[3], 
            Aquila_Ascension[10], 
            Aquila_Ascension[5]
    

           ];
    Star2 = [Aquila_Declination[1], 
             Aquila_Declination[6], 
             Aquila_Declination[4], 
             Aquila_Declination[2], 
             Aquila_Declination[8], 
             Aquila_Declination[7], 
             Aquila_Declination[3], 
             Aquila_Declination[5], 
             Aquila_Declination[5], 
             Aquila_Declination[10], 
             Aquila_Declination[5], 
             Aquila_Declination[9]
             
            ];

    Rot2 = [Aquila_Ascension[1], 
            Aquila_Ascension[6], 
            Aquila_Ascension[4], 
            Aquila_Ascension[2], 
            Aquila_Ascension[8], 
            Aquila_Ascension[7], 
            Aquila_Ascension[3], 
            Aquila_Ascension[5], 
            Aquila_Ascension[5], 
            Aquila_Ascension[10], 
            Aquila_Ascension[5], 
            Aquila_Ascension[9]

           ];
    
    for ( i = [0 : 11]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}




// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // // Aries // // // // // // // // // // // 
    
Aries = [2.01,
         2.64,
         3.61,
         4.62
        ];

Aries_Ascension = [2.1194,
                   1.9106,
                   2.8328,
                   1.8919
                  ];
                       
Aries_Declination = [23.46,
                     20.81,
                     27.26,
                     19.29
                    ];
                         
Aries_Asc = [ for (i=[0:len(Aries_Ascension)-1]) (Aries_Ascension[i]*360/24)]; 
Aries_Dec = [ for (i=[0:len(Aries_Declination)-1]) (r_Equator*tan(45-(Aries_Declination[i])/2))];
   

module Aries(){
    for (i = [0:len(Aries)-1]){
        rotate([0,0,90+Aries_Asc[i]])translate([0,Aries_Dec[i]])Star_Climate(r_Stars/ln(Aries[i]+lnStar));
    }
}

module Aries_Constellation(){
    Star1 = [Aries_Declination[2], 
             Aries_Declination[0], 
             Aries_Declination[1]
            ];    
    Rot1 = [Aries_Ascension[2], 
            Aries_Ascension[0], 
            Aries_Ascension[1] 
           ];
    Star2 = [Aries_Declination[0], 
             Aries_Declination[1], 
             Aries_Declination[3]
            ];

    Rot2 = [Aries_Ascension[0], 
            Aries_Ascension[1], 
            Aries_Ascension[3]
           ];
    
    for ( i = [0 : 2]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}



// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //  Auriga  // // // // // // // // // // // 
    
Auriga = [0.08,
          1.9,
          2.62,
          2.69,
          3.03,
          3.18,
          3.69,
          3.72,
          1.61
        ];

Auriga_Ascension = [5.2781,
                    5.9919,
                    5.9953,
                    4.9497,
                    5.0328,
                    5.1083,
                    5.0411,
                    5.9919,
                    5.4647
                  ];
                       
Auriga_Declination = [46.00,
                      44.95,
                      37.21,
                      33.16,
                      43.82,
                      41.23,
                      41.08,
                      54.28,
                      28.63
                    ];
                         
Auriga_Asc = [ for (i=[0:len(Auriga_Ascension)-1]) (Auriga_Ascension[i]*360/24)]; 
Auriga_Dec = [ for (i=[0:len(Auriga_Declination)-1]) (r_Equator*tan(45-(Auriga_Declination[i])/2))];
   

module Auriga(){
    for (i = [0:len(Auriga)-1]){
        rotate([0,0,90+Auriga_Asc[i]])translate([0,Auriga_Dec[i]])Star_Climate(r_Stars/ln(Auriga[i]+lnStar));
    }
}

module Auriga_Constellation(){
    Star1 = [Auriga_Declination[0], 
             Auriga_Declination[0],
             Auriga_Declination[1],
    
                Auriga_Declination[0],
                Auriga_Declination[5],
                Auriga_Declination[3],
                Auriga_Declination[8],
                Auriga_Declination[2],
    
                    Auriga_Declination[0], 
                    Auriga_Declination[4]
            ];    
    Rot1 = [Auriga_Ascension[0], 
            Auriga_Ascension[0],
            Auriga_Ascension[1], 
    
                Auriga_Ascension[0],
                Auriga_Ascension[5],
                Auriga_Ascension[3],
                Auriga_Ascension[8],
                Auriga_Ascension[2],
    
                    Auriga_Ascension[0], 
                    Auriga_Ascension[4] 
           ];
    Star2 = [Auriga_Declination[1], 
             Auriga_Declination[7],
             Auriga_Declination[7], 
    
                Auriga_Declination[5], 
                Auriga_Declination[3],
                Auriga_Declination[8],
                Auriga_Declination[2],
                Auriga_Declination[1],
    
                    Auriga_Declination[4], 
                    Auriga_Declination[6]
            ];

    Rot2 = [Auriga_Ascension[1], 
            Auriga_Ascension[7],
            Auriga_Ascension[7], 
            
                Auriga_Ascension[5],
                Auriga_Ascension[3],
                Auriga_Ascension[8],
                Auriga_Ascension[2],
                Auriga_Ascension[1],
    
                    Auriga_Ascension[4], 
                    Auriga_Ascension[6]
           ];
    
    for ( i = [0 : 9]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}




// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // CanesVenatici  // // // // // // // // // 
    
CanesVenatici = [2.89,
                 4.24 
                ];

CanesVenatici_Ascension = [12.9336,
                           12.5625
                          ];
                       
CanesVenatici_Declination = [38.32,
                             41.36
                            ];
                         
CanesVenatici_Asc = [ for (i=[0:len(CanesVenatici_Ascension)-1]) (CanesVenatici_Ascension[i]*360/24)]; 
CanesVenatici_Dec = [ for (i=[0:len(CanesVenatici_Declination)-1]) (r_Equator*tan(45-(CanesVenatici_Declination[i])/2))];
   

module CanesVenatici(){
    for (i = [0:len(CanesVenatici)-1]){
        rotate([0,0,90+CanesVenatici_Asc[i]])translate([0,CanesVenatici_Dec[i]])Star_Climate(r_Stars/ln(CanesVenatici[i]+lnStar));
    }
}

module CanesVenatici_Constellation(){
    Star1 = [CanesVenatici_Declination[0]
            ];    
    Rot1 = [CanesVenatici_Ascension[0]
           ];
    Star2 = [CanesVenatici_Declination[1]
            ];

    Rot2 = [CanesVenatici_Ascension[1]
           ];
    
        constellation(Star1[0], Star2[0], Rot1[0], Rot2[0], wConstellation1);
}



// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //    Bootes   // // // // // // // // // // 
    
Bootes = [-0.05,
          2.37,
          2.68,
          3.04,
          3.46,
          3.49,
          3.57,
          3.78,
          4.04,
          4.05,
          4.18,
          4.31,
          4.43,
          4.47,
          4.49,
          4.50,
          4.52,
          4.53
            ];

Bootes_Ascension = [14.2611,
                    14.7497,
                    13.9114,
                    14.5344,
                    15.2583,
                    15.0322,
                    14.5303,
                    14.6856,
                    14.4200,
                    13.8244,
                    14.2731,
                    15.4081,
                    14.6856,
                    14.5778,
                    14.6786,
                    13.7878 ,
                    15.0739,
                    14.2244
                       ];
                       
Bootes_Declination = [19.19,
                      27.07,
                      18.40,
                      38.31,
                      33.32,
                      40.39,
                      30.37,
                      13.73,
                      51.85,
                      15.80,
                      46.09,
                      37.38,
                      13.73,
                      29.74,
                      16.42,
                      17.46,
                      26.95,
                      51.79
                         ];
                         
Bootes_Asc = [ for (i=[0:len(Bootes_Ascension)-1]) (Bootes_Ascension[i]*360/24)]; 
Bootes_Dec = [ for (i=[0:len(Bootes_Declination)-1]) (r_Equator*tan(45-(Bootes_Declination[i])/2))];
   

module Bootes(){
    for (i = [0:len(Bootes)-1]){
        rotate([0,0,90+Bootes_Asc[i]])translate([0,Bootes_Dec[i]])Star_Climate(r_Stars/ln(Bootes[i]+lnStar));
    }
}

module Bootes_Constellation(){
    Star1 = [Bootes_Declination[0],  
             Bootes_Declination[1],
             Bootes_Declination[4],
             Bootes_Declination[5],
             Bootes_Declination[3],
             Bootes_Declination[6],
    
                Bootes_Declination[0], 
                Bootes_Declination[2], 
    
                Bootes_Declination[0], 
    
                     Bootes_Declination[3], 
                     Bootes_Declination[10], 
                     Bootes_Declination[10], 
                     Bootes_Declination[8]  
            ];    
    Rot1 = [Bootes_Ascension[0], 
            Bootes_Ascension[1], 
            Bootes_Ascension[4],
            Bootes_Ascension[5],
            Bootes_Ascension[3],
            Bootes_Ascension[6],
            
                Bootes_Ascension[0], 
                Bootes_Ascension[2],
                    
                Bootes_Ascension[0],

                    Bootes_Ascension[3], 
                    Bootes_Ascension[10], 
                    Bootes_Ascension[10], 
                    Bootes_Ascension[8]
           
           ];
    Star2 = [Bootes_Declination[1], 
             Bootes_Declination[4], 
             Bootes_Declination[5],
             Bootes_Declination[3],
             Bootes_Declination[6],
             Bootes_Declination[0],
             
                Bootes_Declination[2], 
                Bootes_Declination[15], 
             
                Bootes_Declination[7], 

                    Bootes_Declination[10], 
                    Bootes_Declination[8], 
                    Bootes_Declination[17], 
                    Bootes_Declination[17], 
            ];

    Rot2 = [Bootes_Ascension[1], 
            Bootes_Ascension[4],
            Bootes_Ascension[5],
            Bootes_Ascension[3],
            Bootes_Ascension[6],
            Bootes_Ascension[0],
            
                Bootes_Ascension[2], 
                Bootes_Ascension[15], 
                    
                Bootes_Ascension[7],
                
                    Bootes_Ascension[10],
                    Bootes_Ascension[8], 
                    Bootes_Ascension[17],  
                    Bootes_Ascension[17],
           ];
    
    for ( i = [0 : 12]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}






// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // //  Camelopardis  // // // // // // // // // // 
    
Camelopardis = [4.03,
                4.21,
                4.26,
                4.39,
                4.43,
                4.55,
                4.55,
                4.59,
                4.74,
                4.76
            ];

Camelopardis_Ascension = [5.0569,
                          3.4900,
                          4.9008,
                          3.8253,
                          4.9547,
                          3.4983,
                          7.0008,
                          3.8392,
                          3.3331,
                          6.3139
                      ];
                       
Camelopardis_Declination = [60.44,
                            59.94,
                            66.34,
                            65.53,
                            53.75,
                            58.88,
                            76.98,
                            71.33,
                            65.65,
                            69.32
                         ];
                         
Camelopardis_Asc = [ for (i=[0:len(Camelopardis_Ascension)-1]) (Camelopardis_Ascension[i]*360/24)]; 
Camelopardis_Dec = [ for (i=[0:len(Camelopardis_Declination)-1]) (r_Equator*tan(45-(Camelopardis_Declination[i])/2))];
   

module Camelopardalis(){
    for (i = [0:len(Camelopardis)-1]){
        rotate([0,0,90+Camelopardis_Asc[i]])translate([0,Camelopardis_Dec[i]])Star_Climate(r_Stars/ln(Camelopardis[i]+lnStar));
    }
}

module Camelopardalis_Constellation(){
    Star1 = [Camelopardis_Declination[4], 
             Camelopardis_Declination[0], 
             Camelopardis_Declination[2], 
             Camelopardis_Declination[7],
             Camelopardis_Declination[3], 
    
             Camelopardis_Declination[2], 
             Camelopardis_Declination[9],
            ];    
    Rot1 = [Camelopardis_Ascension[4], 
            Camelopardis_Ascension[0], 
            Camelopardis_Ascension[2], 
            Camelopardis_Ascension[7],
            Camelopardis_Ascension[3],
    
            Camelopardis_Ascension[2], 
            Camelopardis_Ascension[9],
            
           ];
    Star2 = [Camelopardis_Declination[0], 
             Camelopardis_Declination[2], 
             Camelopardis_Declination[7], 
             Camelopardis_Declination[3],
             Camelopardis_Declination[5], 
             
             Camelopardis_Declination[9], 
             Camelopardis_Declination[6],
            ];

    Rot2 = [Camelopardis_Ascension[0], 
            Camelopardis_Ascension[2], 
            Camelopardis_Ascension[7], 
            Camelopardis_Ascension[3], 
            Camelopardis_Ascension[5], 
            
            Camelopardis_Ascension[9],
            Camelopardis_Ascension[6], 
           ];
    
    for ( i = [0 : 6]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}






// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //  Cancer  // // // // // // // // // // // 
    
Cancer = [3.53,
          3.94,
          4.03,
          4.26,
          4.66
        ];

Cancer_Ascension = [8.2750,
                    8.6781,
                    8.7781,
                    8.9747,
                    8.7214
                  ];
                       
Cancer_Declination = [9.19,
                      18.15,
                      28.76,
                      11.86,
                      21.47
                    ];
                         
Cancer_Asc = [ for (i=[0:len(Cancer_Ascension)-1]) (Cancer_Ascension[i]*360/24)]; 
Cancer_Dec = [ for (i=[0:len(Cancer_Declination)-1]) (r_Equator*tan(45-(Cancer_Declination[i])/2))];
   

module Cancer(){
    for (i = [0:len(Cancer)-1]){
        rotate([0,0,90+Cancer_Asc[i]])translate([0,Cancer_Dec[i]])Star_Climate(r_Stars/ln(Cancer[i]+lnStar));
    }
}

module Cancer_Constellation(){
    Star1 = [Cancer_Declination[0], 
             Cancer_Declination[1], 
             Cancer_Declination[1], 
             Cancer_Declination[4]
            ];    
    Rot1 = [Cancer_Ascension[0], 
            Cancer_Ascension[1], 
            Cancer_Ascension[1], 
            Cancer_Ascension[4] 
           ];
    Star2 = [Cancer_Declination[1], 
             Cancer_Declination[3], 
             Cancer_Declination[4], 
             Cancer_Declination[2]
            ];

    Rot2 = [Cancer_Ascension[1], 
            Cancer_Ascension[3], 
            Cancer_Ascension[4], 
            Cancer_Ascension[2]
           ];
    
    for ( i = [0 : 3]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}




// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // Canis Major // // // // // // // // // // 
    
CanisMajor = [-1.46,
             1.5,
             4.06,
             1.96,
             1.41,
             2.94,
             2.41,
             4.19,
             4.34,
             4.09,
             4.53,
             3.00,
             3.98,
             3.58,
             4,
             3.45
            ];

CanisMajor_Ascension = [6.7711,
                        6.3969,
                        7.0817,
                        7.1572,
                        6.9939,
                        6.3547,
                        7.4183,
                        6.9228,
                        6.9544,
                        6.6297,
                        6.6019,
                        7.0681,
                        7.2642,
                        7.0456,
                        6.9197,
                        6.8464
                       ];
                       
CanisMajor_Declination = [-16.75,
                          -17.97,
                          -15.67,
                          -26.44,
                          -29.01,
                          -30.08,
                          -29.35,
                          -12.07,
                          -17.09,
                          -19.28,
                          -22.99,
                          -23.87,
                          -26.82,
                          -27.97,
                          -24.22,
                          -32.54
                         ];
                         
CanisMajor_Asc = [ for (i=[0:len(CanisMajor_Ascension)-1]) (CanisMajor_Ascension[i]*360/24)]; 
CanisMajor_Dec = [ for (i=[0:len(CanisMajor_Declination)-1]) (r_Equator*tan(45-(CanisMajor_Declination[i])/2))];
   

module CanisMajor(){
    for (i = [0:len(CanisMajor)-1]){
        rotate([0,0,90+CanisMajor_Asc[i]])translate([0,CanisMajor_Dec[i]])Star_Climate(r_Stars/ln(CanisMajor[i]+lnStar));
    }
}

module CanisMajor_Constellation(){
    Star1 = [CanisMajor_Declination[0], 
             CanisMajor_Declination[8],  
             CanisMajor_Declination[7], 
             CanisMajor_Declination[2],
    
             CanisMajor_Declination[0],
             CanisMajor_Declination[9], 
             CanisMajor_Declination[14], 
             CanisMajor_Declination[13], 
             CanisMajor_Declination[3],
             CanisMajor_Declination[11],
    
             CanisMajor_Declination[3],
             CanisMajor_Declination[12],
    
             CanisMajor_Declination[9], 
             CanisMajor_Declination[9],
    
             CanisMajor_Declination[13], 
             CanisMajor_Declination[4], 
             CanisMajor_Declination[4]
            ];    
    Rot1 = [CanisMajor_Ascension[0], 
            CanisMajor_Ascension[8], 
            CanisMajor_Ascension[7], 
            CanisMajor_Ascension[2], 
    
            CanisMajor_Ascension[0],
            CanisMajor_Ascension[9], 
            CanisMajor_Ascension[14], 
            CanisMajor_Ascension[13],
            CanisMajor_Ascension[3],
            CanisMajor_Ascension[11],
            
            CanisMajor_Ascension[3],
            CanisMajor_Ascension[12],

            CanisMajor_Ascension[9], 
            CanisMajor_Ascension[9],
           
            CanisMajor_Ascension[13], 
            CanisMajor_Ascension[4], 
            CanisMajor_Ascension[4]  
           ];
           
    Star2 = [CanisMajor_Declination[8], 
             CanisMajor_Declination[7], 
             CanisMajor_Declination[2], 
             CanisMajor_Declination[8],
             
             CanisMajor_Declination[9], 
             CanisMajor_Declination[14], 
             CanisMajor_Declination[13], 
             CanisMajor_Declination[3],
             CanisMajor_Declination[11],
             CanisMajor_Declination[0],
             
             CanisMajor_Declination[12],
             CanisMajor_Declination[6],
    
             CanisMajor_Declination[1], 
             CanisMajor_Declination[10],
             
             CanisMajor_Declination[4], 
             CanisMajor_Declination[5], 
             CanisMajor_Declination[15]
            ];

    Rot2 = [CanisMajor_Ascension[8], 
            CanisMajor_Ascension[7], 
            CanisMajor_Ascension[2], 
            CanisMajor_Ascension[8], 
            
            CanisMajor_Ascension[9], 
            CanisMajor_Ascension[14], 
            CanisMajor_Ascension[13], 
            CanisMajor_Ascension[3],
            CanisMajor_Ascension[11], 
            CanisMajor_Ascension[0],
            
            CanisMajor_Ascension[12],
            CanisMajor_Ascension[6],
    
            CanisMajor_Ascension[1], 
            CanisMajor_Ascension[10],
            
            CanisMajor_Ascension[4], 
            CanisMajor_Ascension[5], 
            CanisMajor_Ascension[15]
           ];
    
    for ( i = [0:16]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}



// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // //   Canis Minor  // // // // // // // // // // 
    
CanisMinor = [0.34,
              2.84
             ];

CanisMinor_Ascension = [7.6772,
                        7.4756 
                       ];
                       
CanisMinor_Declination = [5.16,
                          8.24
                         ];
                         
CanisMinor_Asc = [ for (i=[0:len(CanisMinor_Ascension)-1]) (CanisMinor_Ascension[i]*360/24)]; 
CanisMinor_Dec = [ for (i=[0:len(CanisMinor_Declination)-1]) (r_Equator*tan(45-(CanisMinor_Declination[i])/2))];
   

module CanisMinor(){
    for (i = [0:len(CanisMinor)-1]){
        rotate([0,0,90+CanisMinor_Asc[i]])translate([0,CanisMinor_Dec[i]])Star_Climate(r_Stars/ln(CanisMinor[i]+lnStar));
    }
}

module CanisMinor_Constellation(){
    Star1 = [CanisMinor_Declination[0] 
            ];    
    Rot1 = [CanisMinor_Ascension[0] 
           ];
    Star2 = [CanisMinor_Declination[1]
            ];

    Rot2 = [CanisMinor_Ascension[1]
           ];
    
    constellation(Star1[0], Star2[0], Rot1[0], Rot2[0], wConstellation1);
}






// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //   Capricornus  // // // // // // // // // 
    
Capricornus = [2.85,
               3.05,
               3.58,
               3.69,
               3.77,
               4.08,
               4.12,
               4.13,
               4.27,
               4.30,
               4.49,
               4.50,
               4.51,
               4.72,
               4.77,
               4.77,
               4.82,
               5.07,
               5.08
            ];

Capricornus_Ascension = [21.7839,
                         20.3506,
                         20.3008,
                         21.6681,
                         21.4444,
                         21.0989,
                         20.8636,
                         20.7681,
                         21.3706,
                         20.2939,
                         21.1186,
                         21.4786,
                         21.6178,
                         21.7108,
                         20.3442,
                         20.4808,
                         21.0733,
                         21.8881,
                         20.4553
                      ];
                       
Capricornus_Declination = [-16.13,
                           -14.78,
                           -12.54,
                           -16.66,
                           -22.41,
                           -17.24,
                           -26.92,
                           -25.27,
                           -16.83,
                           -12.51,
                           -25.00,
                           -21.81,
                           -19.47,
                           -18.87,
                           -12.76,
                           -17.81,
                           -19.85,
                           -13.55,
                           -18.21
                         ];
                         
Capricornus_Asc = [ for (i=[0:len(Capricornus_Ascension)-1]) (Capricornus_Ascension[i]*360/24)]; 
Capricornus_Dec = [ for (i=[0:len(Capricornus_Declination)-1]) (r_Equator*tan(45-(Capricornus_Declination[i])/2))];
   

module Capricornus(){
    for (i = [0:len(Capricornus)-1]){
        rotate([0,0,90+Capricornus_Asc[i]])translate([0,Capricornus_Dec[i]])Star_Climate(r_Stars/ln(Capricornus[i]+lnStar));
    }
}

module Capricornus_Constellation(){
    Star1 = [Capricornus_Declination[2], 
             Capricornus_Declination[1], 
             Capricornus_Declination[18], 
             Capricornus_Declination[7],
             Capricornus_Declination[6], 
             Capricornus_Declination[1],
    
             Capricornus_Declination[5], 
             Capricornus_Declination[4],
             Capricornus_Declination[8],

             Capricornus_Declination[8], 
             Capricornus_Declination[3]
            ];    
            
    Rot1 = [Capricornus_Ascension[2], 
            Capricornus_Ascension[1], 
            Capricornus_Ascension[18], 
            Capricornus_Ascension[7],
            Capricornus_Ascension[6],
            Capricornus_Ascension[1],
            
            Capricornus_Ascension[5], 
            Capricornus_Ascension[4],
            Capricornus_Ascension[8], 
               
            Capricornus_Ascension[8], 
            Capricornus_Ascension[3]
           ];
           
    Star2 = [Capricornus_Declination[1], 
             Capricornus_Declination[18], 
             Capricornus_Declination[7], 
             Capricornus_Declination[6],
             Capricornus_Declination[5], 
             Capricornus_Declination[5],
             
             Capricornus_Declination[4], 
             Capricornus_Declination[8],
             Capricornus_Declination[5],
             
             Capricornus_Declination[3], 
             Capricornus_Declination[0]
            ];

    Rot2 = [Capricornus_Ascension[1], 
            Capricornus_Ascension[18], 
            Capricornus_Ascension[7], 
            Capricornus_Ascension[6], 
            Capricornus_Ascension[5], 
            Capricornus_Ascension[5], 
            
            Capricornus_Ascension[4], 
            Capricornus_Ascension[8],
            Capricornus_Ascension[5],
            
            Capricornus_Ascension[3], 
            Capricornus_Ascension[0]
           ];
    
    for ( i = [0 : 10]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}




// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // //   Cassiopeia   // // // // // // // // // // 
    
Cassiopeia = [2.41,
              2.34,
              2.13,
              2.7,
              3.3
             ];

Cassiopeia_Ascension = [0.6983,
                        0.1744,
                        0.9697,
                        1.4572,
                        1.9364
                       ];
                       
Cassiopeia_Declination = [56.68,
                          59.29,
                          60.85,
                          60.37,
                          63.8
                         ];
                         
Cassiopeia_Asc = [ for (i=[0:len(Cassiopeia_Ascension)-1]) (Cassiopeia_Ascension[i]*360/24)]; 
Cassiopeia_Dec = [ for (i=[0:len(Cassiopeia_Declination)-1]) (r_Equator*tan(45-(Cassiopeia_Declination[i])/2))];
   

module Cassiopeia(){
    for (i = [0:len(Cassiopeia)-1]){
        rotate([0,0,90+Cassiopeia_Asc[i]])translate([0,Cassiopeia_Dec[i]])Star_Climate(r_Stars/ln(Cassiopeia[i]+lnStar));
    }
}

module Cassiopeia_Constellation(){
    Star1 = [Cassiopeia_Declination[1], 
             Cassiopeia_Declination[0], 
             Cassiopeia_Declination[2], 
             Cassiopeia_Declination[3]
            ];    
    Rot1 = [Cassiopeia_Ascension[1],
            Cassiopeia_Ascension[0],
            Cassiopeia_Ascension[2],
            Cassiopeia_Ascension[3]
           ];
    Star2 = [Cassiopeia_Declination[0], 
             Cassiopeia_Declination[2], 
             Cassiopeia_Declination[3], 
             Cassiopeia_Declination[4]
            ];

    Rot2 = [Cassiopeia_Ascension[0],
            Cassiopeia_Ascension[2],
            Cassiopeia_Ascension[3],
            Cassiopeia_Ascension[4]
           ];
    
    for ( i = [0:3]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}





// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //   Cepheus   // // // // // // // // // // 
    
Cepheus = [2.45,
           3.21,
           3.23,
           3.39,
           3.41,
           3.50,
           4.07,
           4.18,
           4.21,
           4.23
             ];

Cepheus_Ascension = [21.3094,
                     23.6556,
                     21.4775,
                     22.1808,
                     20.7547,
                     22.8278,
                     22.4861,
                     22.2503,
                     20.4928,
                     21.7250
                       ];
                       
Cepheus_Declination = [62.59,
                       77.63,
                       70.56,
                       58.12,
                       61.84,
                       66.21,
                       58.42,
                       57.04,
                       62.99,
                       58.78
                         ];
                         
Cepheus_Asc = [ for (i=[0:len(Cepheus_Ascension)-1]) (Cepheus_Ascension[i]*360/24)]; 
Cepheus_Dec = [ for (i=[0:len(Cepheus_Declination)-1]) (r_Equator*tan(45-(Cepheus_Declination[i])/2))];
   

module Cepheus(){
    for (i = [0:len(Cepheus)-1]){
        rotate([0,0,90+Cepheus_Asc[i]])translate([0,Cepheus_Dec[i]])Star_Climate(r_Stars/ln(Cepheus[i]+lnStar));
    }
}

module Cepheus_Constellation(){
    Star1 = [Cepheus_Declination[0], 
             Cepheus_Declination[2], 
             Cepheus_Declination[5], 
             Cepheus_Declination[6], 
             Cepheus_Declination[3], 
             Cepheus_Declination[7], 
             Cepheus_Declination[9],
    
             Cepheus_Declination[1], 
             Cepheus_Declination[1],
   
             Cepheus_Declination[0], 
             Cepheus_Declination[4]  
            ];  
    
    Rot1 = [Cepheus_Ascension[0],
            Cepheus_Ascension[2],
            Cepheus_Ascension[5],
            Cepheus_Ascension[6],
            Cepheus_Ascension[3],
            Cepheus_Ascension[7],
            Cepheus_Ascension[9],
    
            Cepheus_Ascension[1],
            Cepheus_Ascension[1],
            
            Cepheus_Ascension[0],
            Cepheus_Ascension[4]
           ];
           
    Star2 = [Cepheus_Declination[2], 
             Cepheus_Declination[5], 
             Cepheus_Declination[6], 
             Cepheus_Declination[3], 
             Cepheus_Declination[7], 
             Cepheus_Declination[9], 
             Cepheus_Declination[0],
             
             Cepheus_Declination[2], 
             Cepheus_Declination[5], 
             
             Cepheus_Declination[4], 
             Cepheus_Declination[8] 
            ];

    Rot2 = [Cepheus_Ascension[2],
            Cepheus_Ascension[5],
            Cepheus_Ascension[6],
            Cepheus_Ascension[3],
            Cepheus_Ascension[7],
            Cepheus_Ascension[9],
            Cepheus_Ascension[0],
            
            Cepheus_Ascension[2],
            Cepheus_Ascension[5],
            
            Cepheus_Ascension[4],
            Cepheus_Ascension[8]
           ];
    
    for ( i = [0:10]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}





// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //    Cetus    // // // // // // // // // // 
    
Cetus = [2.04,
         2.54,
         3.04,
         3.46,
         3.47,
            3.19,
             3.56,
             3.60,
             3.74,
             3.99,
                4.08,
                4.24,
                4.27,
                4.30,
                4.36,
                    4.44,
                    4.55,
                    4.66,
                    4.71,
                    4.74,
                        4.77,
                        4.48,
                        4.83,
                        4.84,
                        4.87
             ];

Cetus_Ascension = [0.7264,
                   3.0378,
                   2.3222,
                   1.1431,
                   2.7217,
                       1.7347,
                       0.1569,
                       1.4003,
                       1.8575,
                       2.0000,
                           2.6578,
                           2.7353,
                           2.7489,
                           2.4692,
                           2.2167,
                               0.2439,
                               0.0622,
                               1.8264,
                               2.9950,
                               2.5347,
                                   0.7364,
                                   0.8833,
                                   2.6592,
                                   3.3225,
                                   2.5978            
                       ];
                       
Cetus_Declination = [-17.99,
                     4.09,
                     -2.98,
                     -10.18,
                     3.24,
                         -15.94,
                         -8.82,
                         -8.18,
                         -10.33,
                         -21.08,
                             0.33,
                             -13.86,
                             10.11,
                             8.46,
                             8.45,
                                 -18.93,
                                 -17.33,
                                 -10.69,
                                 8.91,
                                 -15.24,
                                     -10.61,
                                     -1.14,
                                     -11.87,
                                     3.37,
                                     5.59
                         ];
                         
Cetus_Asc = [ for (i=[0:len(Cetus_Ascension)-1]) (Cetus_Ascension[i]*360/24)]; 
Cetus_Dec = [ for (i=[0:len(Cetus_Declination)-1]) (r_Equator*tan(45-(Cetus_Declination[i])/2))];
   

module Cetus(){
    for (i = [0:len(Cetus)-1]){
        rotate([0,0,90+Cetus_Asc[i]])translate([0,Cetus_Dec[i]])Star_Climate(r_Stars/ln(Cetus[i]+lnStar));
    }
}

module Cetus_Constellation(){
    Star1 = [Cetus_Declination[1], 
             Cetus_Declination[18], 
             Cetus_Declination[12], 
             Cetus_Declination[13], 
             Cetus_Declination[24], 
             Cetus_Declination[4], 
    
                 Cetus_Declination[4],
                 Cetus_Declination[10], 
                 Cetus_Declination[2],
        
                     Cetus_Declination[8], 
                     Cetus_Declination[7],
                     Cetus_Declination[3], 
                     Cetus_Declination[6],
                     Cetus_Declination[0], 
                     Cetus_Declination[5]  
            ];  
    
    Rot1 = [Cetus_Ascension[1],
            Cetus_Ascension[18],
            Cetus_Ascension[12],
            Cetus_Ascension[13],
            Cetus_Ascension[24],
            Cetus_Ascension[4],
    
                Cetus_Ascension[4],    
                Cetus_Ascension[10],
                Cetus_Ascension[2],  
                
                    Cetus_Ascension[8],
                    Cetus_Ascension[7],
                    Cetus_Ascension[3],
                    Cetus_Ascension[6],
                    Cetus_Ascension[0],
                    Cetus_Ascension[5]
           ];
           
    Star2 = [Cetus_Declination[18], 
             Cetus_Declination[12], 
             Cetus_Declination[13], 
             Cetus_Declination[24], 
             Cetus_Declination[4], 
             Cetus_Declination[1], 
             
                 Cetus_Declination[10],             
                 Cetus_Declination[2], 
                 Cetus_Declination[8],
             
                     Cetus_Declination[7], 
                     Cetus_Declination[3],
                     Cetus_Declination[6], 
                     Cetus_Declination[0],
                     Cetus_Declination[5], 
                     Cetus_Declination[8] 
            ];

    Rot2 = [Cetus_Ascension[18],
            Cetus_Ascension[12],
            Cetus_Ascension[13],
            Cetus_Ascension[24],
            Cetus_Ascension[4],
            Cetus_Ascension[1],
            
                Cetus_Ascension[10],            
                Cetus_Ascension[2],
                Cetus_Ascension[8],
            
                    Cetus_Ascension[7],
                    Cetus_Ascension[3],
                    Cetus_Ascension[6],
                    Cetus_Ascension[0],
                    Cetus_Ascension[5],
                    Cetus_Ascension[8]
           ];
    
    for ( i = [0:14]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}





// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //  ComaBerenices // // // // // // // // // 
    
ComaBerenices = [4.26,
                 4.32,
                 4.35
                ];

ComaBerenices_Ascension = [13.1978,
                           13.1664,
                           12.4489
                          ];
                       
ComaBerenices_Declination = [27.87,
                             17.53,
                             28.27
                            ];
                         
ComaBerenices_Asc = [ for (i=[0:len(ComaBerenices_Ascension)-1]) (ComaBerenices_Ascension[i]*360/24)]; 
ComaBerenices_Dec = [ for (i=[0:len(ComaBerenices_Declination)-1]) (r_Equator*tan(45-(ComaBerenices_Declination[i])/2))];
   

module ComaBerenices(){
    for (i = [0:len(ComaBerenices)-1]){
        rotate([0,0,90+ComaBerenices_Asc[i]])translate([0,ComaBerenices_Dec[i]])Star_Climate(r_Stars/ln(ComaBerenices[i]+lnStar));
    }
}

module ComaBerenices_Constellation(){
    Star1 = [ComaBerenices_Declination[1],
             ComaBerenices_Declination[0]
            ];    
    Rot1 = [ComaBerenices_Ascension[1],
            ComaBerenices_Ascension[0]
           ];
    Star2 = [ComaBerenices_Declination[0],
             ComaBerenices_Declination[2]
            ];

    Rot2 = [ComaBerenices_Ascension[0],
            ComaBerenices_Ascension[2]
           ];
    for ( i = [0:1]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}



// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // //  Corona Borealis  // // // // // // // // // 
    
CoronaBorealis = [2.22,
                  3.66,
                  3.81,
                  4.14,
                  4.14,
                  4.59,
                  4.64,
                  4.73,
                  4.79,
                  4.86,
                  4.98
       ];

CoronaBorealis_Ascension = [15.5781,
                            15.4636,
                            15.7122,
                            15.5486,
                            15.9597,
                            15.8264,
                            15.6561,
                            16.1494,
                            15.8536,
                            16.3681,
                            16.0239    
                 ];
                       
CoronaBorealis_Declination = [26.71,
                              29.11,
                              26.29,
                              31.36,
                              26.88,
                              26.07,
                              36.64,
                              36.49,
                              35.66,
                              30.89,
                              29.85
                   ];
                         
CoronaBorealis_Asc = [ for (i=[0:len(CoronaBorealis_Ascension)-1]) (CoronaBorealis_Ascension[i]*360/24)]; 
CoronaBorealis_Dec = [ for (i=[0:len(CoronaBorealis_Declination)-1]) (r_Equator*tan(45-(CoronaBorealis_Declination[i])/2))];
   

module CoronaBorealis(){
    for (i = [0:len(CoronaBorealis)-1]){
        rotate([0,0,90+CoronaBorealis_Asc[i]])translate([0,CoronaBorealis_Dec[i]])Star_Climate(r_Stars/ln(CoronaBorealis[i]+lnStar));
    }
}

module CoronaBorealis_Constellation(){
    Star1 = [CoronaBorealis_Declination[3], 
             CoronaBorealis_Declination[1], 
             CoronaBorealis_Declination[0], 
             CoronaBorealis_Declination[2], 
             CoronaBorealis_Declination[5], 
             CoronaBorealis_Declination[4]
            ];    
    Rot1 = [CoronaBorealis_Ascension[3], 
            CoronaBorealis_Ascension[1], 
            CoronaBorealis_Ascension[0], 
            CoronaBorealis_Ascension[2], 
            CoronaBorealis_Ascension[5], 
            CoronaBorealis_Ascension[10]
           ];
    Star2 = [CoronaBorealis_Declination[1], 
             CoronaBorealis_Declination[0], 
             CoronaBorealis_Declination[2], 
             CoronaBorealis_Declination[5],  
             CoronaBorealis_Declination[4], 
             CoronaBorealis_Declination[5]
            ];

    Rot2 = [CoronaBorealis_Ascension[1], 
            CoronaBorealis_Ascension[0], 
            CoronaBorealis_Ascension[2], 
            CoronaBorealis_Ascension[5], 
            CoronaBorealis_Ascension[4], 
            CoronaBorealis_Ascension[10]
           ];
    
    for ( i = [0 : 4]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }

}



// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //   Crater    // // // // // // // // // // 
    
Crater = [3.56,
          4.06,
          4.08,
          4.46,
          4.70,
              4.71,
              4.81,
              5.08,
              5.17,
              5.48
       ];

Crater_Ascension = [11.3222,
                    11.4144,
                    10.9961,
                    11.1942,
                    11.6111,
                        11.7458,
                        11.4100,
                        11.3894,
                        11.9333,
                        11.6442   
                 ];
                       
Crater_Declination = [-14.78,
                      -17.69,
                      -18.30,
                      -22.83,
                      -9.80,
                          -18.35,
                          -10.86,
                          -18.78,
                          -17.15,
                          -13.20
                   ];
                         
Crater_Asc = [ for (i=[0:len(Crater_Ascension)-1]) (Crater_Ascension[i]*360/24)]; 
Crater_Dec = [ for (i=[0:len(Crater_Declination)-1]) (r_Equator*tan(45-(Crater_Declination[i])/2))];
   

module Crater(){
    for (i = [0:len(Crater)-1]){
        rotate([0,0,90+Crater_Asc[i]])translate([0,Crater_Dec[i]])Star_Climate(r_Stars/ln(Crater[i]+lnStar));
    }
}




module Crater_Constellation(){
    Star1 = [Crater_Declination[2], 
             Crater_Declination[3], 
             Crater_Declination[1], 
             Crater_Declination[0],
    
             Crater_Declination[1], 
             Crater_Declination[5],
             Crater_Declination[8], 
             Crater_Declination[4],
             Crater_Declination[6]
            ];    
    Rot1 = [Crater_Ascension[2],
            Crater_Ascension[3], 
            Crater_Ascension[1], 
            Crater_Ascension[0],
    
            Crater_Ascension[1], 
            Crater_Ascension[5],
            Crater_Ascension[8], 
            Crater_Ascension[4],
            Crater_Ascension[6]
           ];
    Star2 = [Crater_Declination[3], 
             Crater_Declination[1], 
             Crater_Declination[0],
             Crater_Declination[2],
    
             Crater_Declination[5], 
             Crater_Declination[8],
             Crater_Declination[4], 
             Crater_Declination[6],
             Crater_Declination[0]
            ];

    Rot2 = [Crater_Ascension[3], 
            Crater_Ascension[1], 
            Crater_Ascension[0], 
            Crater_Ascension[2],
    
            Crater_Ascension[5], 
            Crater_Ascension[8],
            Crater_Ascension[4], 
            Crater_Ascension[6],
            Crater_Ascension[0]
           ];
    
    for ( i = [0 : 8]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}





// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //  Corvus  // // // // // // // // // // // 
    
Corvus = [2.58,
          2.65,
          2.94,
          3.02,
          4.02,
              4.30,
              5.15,
              5.17,
              5.20,
              5.28
       ];

Corvus_Ascension = [12.2633,
                    12.5731,
                    12.4975,
                    12.1686,
                    12.1400,
                        12.5344,
                        12.3486,
                        12.6878,
                        12.3425,
                        12.0142
                 ];
                       
Corvus_Declination = [-17.54,
                      -23.40,
                      -16.52,
                      -22.62,
                      -24.73,
                          -16.20,
                          -13.57,
                          -13.01,
                          -22.22,
                          -19.66
                   ];
                         
Corvus_Asc = [ for (i=[0:len(Corvus_Ascension)-1]) (Corvus_Ascension[i]*360/24)]; 
Corvus_Dec = [ for (i=[0:len(Corvus_Declination)-1]) (r_Equator*tan(45-(Corvus_Declination[i])/2))];
   

module Corvus(){
    for (i = [0:len(Corvus)-1]){
        rotate([0,0,90+Corvus_Asc[i]])translate([0,Corvus_Dec[i]])Star_Climate(r_Stars/ln(Corvus[i]+lnStar));
    }
}

module Corvus_Constellation(){
    Star1 = [Corvus_Declination[4], 
             Corvus_Declination[3], 
             Corvus_Declination[1], 
             Corvus_Declination[2], 
             Corvus_Declination[0]
            ];    
    Rot1 = [Corvus_Ascension[4], 
            Corvus_Ascension[3], 
            Corvus_Ascension[1], 
            Corvus_Ascension[2], 
            Corvus_Ascension[0]
           ];
    Star2 = [Corvus_Declination[3], 
             Corvus_Declination[1], 
             Corvus_Declination[2], 
             Corvus_Declination[0],  
             Corvus_Declination[3]
            ];

    Rot2 = [Corvus_Ascension[3], 
            Corvus_Ascension[1], 
            Corvus_Ascension[2], 
            Corvus_Ascension[0], 
            Corvus_Ascension[3]
           ];
    
    for ( i = [0 : 4]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}



// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //  Cygnus  // // // // // // // // // // // 
    
Cygnus = [1.25,
          2.23,
          2.48,
          2.86,
          3.05,
          3.21,
3.72,
3.74,
3.76,
3.80,
3.80,
3.89,
3.94,
3.96,
3.98

       ];

Cygnus_Ascension = [20.6903,
                    20.3703,
                    20.7700,
                    19.7494,
                    19.5119,
                    21.2156,
                    21.0819,
                    21.2464,
                    19.4950,
                    19.2850,
                    20.2269,
                    19.9383,
                    20.9528,
                    20.2578,
                    21.5661
                 ];
                       
Cygnus_Declination = [45.28,
                      40.26,
                      33.97,
                      45.13,
                      27.79,
                      30.23,
                      43.93,
                      38.04,
                      51.73,
                      53.37,
                      46.74,
                      35.08,
                      41.17,
                      47.7,
                      45.59
                   ];
                         
Cygnus_Asc = [ for (i=[0:len(Cygnus_Ascension)-1]) (Cygnus_Ascension[i]*360/24)]; 
Cygnus_Dec = [ for (i=[0:len(Cygnus_Declination)-1]) (r_Equator*tan(45-(Cygnus_Declination[i])/2))];
   

module Cygnus(){
    for (i = [0:len(Cygnus)-1]){
        rotate([0,0,90+Cygnus_Asc[i]])translate([0,Cygnus_Dec[i]])Star_Climate(r_Stars/ln(Cygnus[i]+lnStar));
    }
}

module Cygnus_Constellation(){
    Star1 = [Cygnus_Declination[0], 
             Cygnus_Declination[1], 
             Cygnus_Declination[3], 
             Cygnus_Declination[8], 
             Cygnus_Declination[8], 
             Cygnus_Declination[10], 
    
                 Cygnus_Declination[0], 
                 Cygnus_Declination[12], 
                 Cygnus_Declination[5], 
                 Cygnus_Declination[2], 
    
                     Cygnus_Declination[1], 
                     Cygnus_Declination[11], 
            ];    
    Rot1 = [Cygnus_Ascension[0], 
            Cygnus_Ascension[1], 
            Cygnus_Ascension[3], 
            Cygnus_Ascension[8], 
            Cygnus_Ascension[8], 
            Cygnus_Ascension[10], 
    
                Cygnus_Ascension[0], 
                Cygnus_Ascension[12], 
                Cygnus_Ascension[5], 
                Cygnus_Ascension[2],
                
                    Cygnus_Ascension[1], 
                    Cygnus_Ascension[11],
           ];
    Star2 = [Cygnus_Declination[1], 
             Cygnus_Declination[3], 
             Cygnus_Declination[8], 
             Cygnus_Declination[9],  
             Cygnus_Declination[10], 
             Cygnus_Declination[0],
             
                 Cygnus_Declination[12], 
                 Cygnus_Declination[5], 
                 Cygnus_Declination[2], 
                 Cygnus_Declination[1], 
                 
                     Cygnus_Declination[11], 
                     Cygnus_Declination[4], 
            ];

    Rot2 = [Cygnus_Ascension[1], 
            Cygnus_Ascension[3], 
            Cygnus_Ascension[8], 
            Cygnus_Ascension[9], 
            Cygnus_Ascension[10], 
            Cygnus_Ascension[0],
            
                Cygnus_Ascension[12], 
                Cygnus_Ascension[5], 
                Cygnus_Ascension[2], 
                Cygnus_Ascension[1],
                
                    Cygnus_Ascension[11], 
                    Cygnus_Ascension[4],
           ];
    
    for ( i = [0 : 11]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}





// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //  Delphinus  // // // // // // // // // // 
    
Delphinus = [3.64,
3.77,
4.03,
4.27,
4.43,
4.64
            ];

Delphinus_Ascension = [20.6256,
                       20.6606,
20.5533,
20.7775,
20.7242,
20.5883

                       ];
                       
Delphinus_Declination = [14.59,
15.91,
11.30,
16.12,
15.07,
14.67

                         ];
                         
Delphinus_Asc = [ for (i=[0:len(Delphinus_Ascension)-1]) (Delphinus_Ascension[i]*360/24)]; 
Delphinus_Dec = [ for (i=[0:len(Delphinus_Declination)-1]) (r_Equator*tan(45-(Delphinus_Declination[i])/2))];
   

module Delphinus(){
    for (i = [0:len(Delphinus)-1]){
        rotate([0,0,90+Delphinus_Asc[i]])translate([0,Delphinus_Dec[i]])Star_Climate(r_Stars/ln(Delphinus[i]+lnStar));
    }
}

module Delphinus_Constellation(){
    Star1 = [Delphinus_Declination[2], 
             Delphinus_Declination[0], 
             Delphinus_Declination[1], 
             Delphinus_Declination[3], 
             Delphinus_Declination[4]
            ];    
    Rot1 = [Delphinus_Ascension[2], 
            Delphinus_Ascension[0], 
            Delphinus_Ascension[1], 
            Delphinus_Ascension[3], 
            Delphinus_Ascension[4]
    
           ];
    Star2 = [Delphinus_Declination[0], 
             Delphinus_Declination[1], 
             Delphinus_Declination[3], 
             Delphinus_Declination[4],  
             Delphinus_Declination[0]
            ];

    Rot2 = [Delphinus_Ascension[0], 
            Delphinus_Ascension[1], 
            Delphinus_Ascension[3], 
            Delphinus_Ascension[4], 
            Delphinus_Ascension[0]
           ];
    
    for ( i = [0:4]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}







// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // //   Draco  // // // // // // // // // // 
    
Draco = [2.24,
         2.73,
         2.79,
         3.07,
         3.17,
         3.29,
         3.55,
         3.67,
         3.73,
         3.82,
         3.84,
         3.85,
         4.01,
         4.22,
         4.28,
         4.45,
         4.51,
         4.57,
         4.58,
         4.60,
         4.63,
         4.67,
         4.77,
         4.77,
         4.82,
         4.82,
         4.84,
         4.84,
         4.86,
         4.86
         
            ];

Draco_Ascension = [17.9433,
                   16.3997,
                   17.5069,
                   19.2092,
                   17.1464,
                   15.4153,
                   18.3506,
                   14.0731,
                   17.8919,
                   11.5233,
                   19.8028,
                   12.5581,
                   16.0314,
                   18.3458,
                   9.6181,
                   19.2592,
                   20.0469,
                   17.6989,
                  13.8569,
                 19.34,
                18.8533,
              19.6556,
            17.6158  ,
       18.5428     ,
       18.4328,
       18.9064,
       16.6819,
       16.7547,
       10.5847,
       17.5375 
                       ];
                       
Draco_Declination = [51.49,
                     61.51,
                     52.30,
                     67.66,
                     65.72,
                     58.97,
                     72.73,
                     64.38,
                     56.87,
                     69.33,
                     70.77,
                     69.79,
                     58.56,
                     71.34,
                     81.66,
                     73.36,
                     67.87,
                     72.15,
                     64.72,
                     65.71,
                     59.39,
                     69.66,
                     68.76,
                     57.05,
                     65.56,
                     71.30,
                     64.59,
                     56.78,
                     75.71,
                     55.17
                         ];
                         
Draco_Asc = [ for (i=[0:len(Draco_Ascension)-1]) (Draco_Ascension[i]*360/24)]; 
Draco_Dec = [ for (i=[0:len(Draco_Declination)-1]) (r_Equator*tan(45-(Draco_Declination[i])/2))];
   

module Draco(){
    for (i = [0:len(Draco)-1]){
        rotate([0,0,90+Draco_Asc[i]])translate([0,Draco_Dec[i]])Star_Climate(r_Stars/ln(Draco[i]+lnStar));
    }
}

module Draco_Constellation(){
    Star1 = [Draco_Declination[8], 
             Draco_Declination[0], 
             Draco_Declination[2], 
             Draco_Declination[29],
    
             Draco_Declination[8],
             Draco_Declination[3], 
             Draco_Declination[3],
             Draco_Declination[13], 
             Draco_Declination[13], 
             Draco_Declination[22], 
             Draco_Declination[4], 
             Draco_Declination[1], 
             Draco_Declination[12], 
             Draco_Declination[5], 
             Draco_Declination[7], 
             Draco_Declination[11]
            ];    
    Rot1 = [Draco_Ascension[8], 
            Draco_Ascension[0], 
            Draco_Ascension[2], 
            Draco_Ascension[29], 
            
            Draco_Ascension[8],
            Draco_Ascension[3], 
            Draco_Ascension[3],
            Draco_Ascension[13], 
            Draco_Ascension[13],
            Draco_Ascension[22], 
            Draco_Ascension[4], 
            Draco_Ascension[1],
            Draco_Ascension[12],
            Draco_Ascension[5], 
            Draco_Ascension[7],  
            Draco_Ascension[11]
           
           ];
    Star2 = [Draco_Declination[0], 
             Draco_Declination[2], 
             Draco_Declination[29], 
             Draco_Declination[8], 
             
             Draco_Declination[3], 
             Draco_Declination[10], 
             Draco_Declination[13],
             Draco_Declination[6], 
             Draco_Declination[22], 
             Draco_Declination[4], 
             Draco_Declination[1], 
             Draco_Declination[12],
             Draco_Declination[5], 
             Draco_Declination[7], 
             Draco_Declination[11], 
             Draco_Declination[9] 
            ];

    Rot2 = [Draco_Ascension[0], 
            Draco_Ascension[2], 
            Draco_Ascension[29], 
            Draco_Ascension[8], 
            
            Draco_Ascension[3], 
            Draco_Ascension[10], 
            Draco_Ascension[13],
            Draco_Ascension[6], 
            Draco_Ascension[22],
            Draco_Ascension[4], 
            Draco_Ascension[1],  
            Draco_Ascension[12],
            Draco_Ascension[5],
            Draco_Ascension[7], 
            Draco_Ascension[11],  
            Draco_Ascension[9]
           ];
    
    for ( i = [0 : 15]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }

}




// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // // Eridanus // // // // // // // // // // 
    
Eridanus = [0.45,
            2.78,
            2.88,
            2.97,
            3.52,
              3.55,
              3.56,
              3.69,
              3.70,
              3.72,
                3.81,
                3.86,
                3.89,
                3.93,
                3.97,
                  4.01,
                  4.04,
                  4.08,
                  4.11,
                  4.17,
                    4.22,
                    4.24,
                    4.25,
                    4.26,
                    4.26,
                      4.30,
                      4.32,
                      4.35,
                      4.36,
                      4.43,
                        4.43,
                        4.46,
                        4.47,
                        4.49,
                        4.57
            ];

Eridanus_Ascension = [1.6283,
                      5.1308,
                      2.9708,
                      3.9669,
                      3.7206,
                        4.2981,
                        2.2750,
                        1.9322,
                        3.3250,
                        3.5489,
                          4.5925,
                          4.6361,
                          2.9403,
                          4.6053,
                          4.4006,
                            4.7583,
                            4.1975,
                            3.0397,
                            2.6775,
                            3.8242,
                              3.7806,
                              2.4497,
                              5.1522,
                              3.3314,
                              3.5631,
                                3.8097,
                                4.6739,
                                2.9711,
                                4.8814,
                                3.7689,
                                  4.2547,
                                  3.9047,
                                  2.7514,
                                  4.5583,
                                  3.6181
                       ];
                       
Eridanus_Declination = [-57.14,
                        -5.09,
                        -40.30,
                        -13.51,
                        -9.77,
                          -33.79,
                          -51.51,
                          -51.61,
                          -21.76,
                          -9.46,
                            -30.56,
                            -14.18,
                            -8.90,
                            -3.35,
                            -34.02,
                              -3.25,
                              -6.84,
                              -23.62,
                              -39.86,
                              -36.2,
                                -23.24,
                                -47.70,
                                -8.75,
                                -43.07,
                                -21.63,
                                  -37.62,
                                  -19.67,
                                  -40.30,
                                  -5.45,
                                  -12.10,
                                    -7.64,
                                    -2.95,
                                    -18.57,
                                    -29.77,
                                    -40.27
                         ];
                         
Eridanus_Asc = [ for (i=[0:len(Eridanus_Ascension)-1]) (Eridanus_Ascension[i]*360/24)]; 
Eridanus_Dec = [ for (i=[0:len(Eridanus_Declination)-1]) (r_Equator*tan(45-(Eridanus_Declination[i])/2))];
   

module Eridanus(){
    for (i = [0:len(Eridanus)-1]){
        rotate([0,0,90+Eridanus_Asc[i]])translate([0,Eridanus_Dec[i]])Star_Climate(r_Stars/ln(Eridanus[i]+lnStar));
    }
}

module Eridanus_Constellation(){
    Star1 = [Eridanus_Declination[11], 
             Eridanus_Declination[22], 
             Eridanus_Declination[1], 
             Eridanus_Declination[28], 
             Eridanus_Declination[15],    
             Eridanus_Declination[13], 
             Eridanus_Declination[16],
             Eridanus_Declination[3],    
             Eridanus_Declination[29], 
             Eridanus_Declination[4], 
             Eridanus_Declination[9], 
             Eridanus_Declination[12],     
             Eridanus_Declination[32], 
             Eridanus_Declination[17], 
             Eridanus_Declination[8], 
             Eridanus_Declination[24],     
             Eridanus_Declination[20],
             Eridanus_Declination[10], 
             Eridanus_Declination[14],             
             Eridanus_Declination[5],
             Eridanus_Declination[19], 
             Eridanus_Declination[25], 
             Eridanus_Declination[23],
             Eridanus_Declination[2], 
             Eridanus_Declination[18], 
             Eridanus_Declination[21],
             Eridanus_Declination[6], 
             Eridanus_Declination[7]
            ];    
            
    Rot1 = [ Eridanus_Ascension[11], 
             Eridanus_Ascension[22], 
             Eridanus_Ascension[1], 
             Eridanus_Ascension[28], 
             Eridanus_Ascension[15],    
             Eridanus_Ascension[13], 
             Eridanus_Ascension[16],
             Eridanus_Ascension[3],    
             Eridanus_Ascension[29], 
             Eridanus_Ascension[4], 
             Eridanus_Ascension[9], 
             Eridanus_Ascension[12],     
             Eridanus_Ascension[32], 
             Eridanus_Ascension[17], 
             Eridanus_Ascension[8], 
             Eridanus_Ascension[24],     
             Eridanus_Ascension[20],
             Eridanus_Ascension[10], 
             Eridanus_Ascension[14],             
             Eridanus_Ascension[5],
             Eridanus_Ascension[19], 
             Eridanus_Ascension[25], 
             Eridanus_Ascension[23],
             Eridanus_Ascension[2], 
             Eridanus_Ascension[18], 
             Eridanus_Ascension[21],
             Eridanus_Ascension[6], 
             Eridanus_Ascension[7]
           ];
           
    Star2 = [ 
             Eridanus_Declination[22], 
             Eridanus_Declination[1], 
             Eridanus_Declination[28], 
             Eridanus_Declination[15],    
             Eridanus_Declination[13], 
             Eridanus_Declination[16],
             Eridanus_Declination[3],    
             Eridanus_Declination[29], 
             Eridanus_Declination[4], 
             Eridanus_Declination[9], 
             Eridanus_Declination[12],     
             Eridanus_Declination[32], 
             Eridanus_Declination[17], 
             Eridanus_Declination[8], 
             Eridanus_Declination[24],     
             Eridanus_Declination[20],
             Eridanus_Declination[10], 
             Eridanus_Declination[14],             
             Eridanus_Declination[5],
             Eridanus_Declination[19], 
             Eridanus_Declination[25], 
             Eridanus_Declination[23],
             Eridanus_Declination[2], 
             Eridanus_Declination[18], 
             Eridanus_Declination[21],
             Eridanus_Declination[6], 
             Eridanus_Declination[7], 
             Eridanus_Declination[0]
            ];

    Rot2 = [ 
             Eridanus_Ascension[22], 
             Eridanus_Ascension[1], 
             Eridanus_Ascension[28], 
             Eridanus_Ascension[15],    
             Eridanus_Ascension[13], 
             Eridanus_Ascension[16],
             Eridanus_Ascension[3],    
             Eridanus_Ascension[29], 
             Eridanus_Ascension[4], 
             Eridanus_Ascension[9], 
             Eridanus_Ascension[12],     
             Eridanus_Ascension[32], 
             Eridanus_Ascension[17], 
             Eridanus_Ascension[8], 
             Eridanus_Ascension[24],     
             Eridanus_Ascension[20],
             Eridanus_Ascension[10], 
             Eridanus_Ascension[14],             
             Eridanus_Ascension[5],
             Eridanus_Ascension[19], 
             Eridanus_Ascension[25], 
             Eridanus_Ascension[23],
             Eridanus_Ascension[2], 
             Eridanus_Ascension[18], 
             Eridanus_Ascension[21],
             Eridanus_Ascension[6], 
             Eridanus_Ascension[7],
             Eridanus_Ascension[0]
           ];
    
    for ( i = [0 : 27]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}




// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //   Equuleus  // // // // // // // // // // 
    
Equuleus = [3.92,
            4.47,
            4.70,
            5.16
            ];

Equuleus_Ascension = [21.2636,
                      21.2411,
                      21.1722,
                      21.3814 
                       ];
                       
Equuleus_Declination = [5.25,
                        10.01,
                        10.13,
                        6.81
                         ];
                         
Equuleus_Asc = [ for (i=[0:len(Equuleus_Ascension)-1]) (Equuleus_Ascension[i]*360/24)]; 
Equuleus_Dec = [ for (i=[0:len(Equuleus_Declination)-1]) (r_Equator*tan(45-(Equuleus_Declination[i])/2))];
   

module Equuleus(){
    for (i = [0:len(Equuleus)-1]){
        rotate([0,0,90+Equuleus_Asc[i]])translate([0,Equuleus_Dec[i]])Star_Climate(r_Stars/ln(Equuleus[i]+lnStar));
    }
}

module Equuleus_Constellation(){
    Star1 = [Equuleus_Declination[0], 
             Equuleus_Declination[3],
             Equuleus_Declination[1], 
             Equuleus_Declination[2]
            ];    
    Rot1 = [Equuleus_Ascension[0], 
            Equuleus_Ascension[3],
            Equuleus_Ascension[1], 
            Equuleus_Ascension[2]
    
           ];
    Star2 = [Equuleus_Declination[3], 
             Equuleus_Declination[1],
             Equuleus_Declination[2], 
             Equuleus_Declination[0]
            ];

    Rot2 = [Equuleus_Ascension[3], 
            Equuleus_Ascension[1],
            Equuleus_Ascension[2], 
            Equuleus_Ascension[0]
           ];
    
    for ( i = [0:3]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}




// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // //  Gemini  // // // // // // // // // // 
    
Gemini = [1.16,
          1.90,
          1.93,
          2.87,
          2.88,
          3.06,
          3.31,
          3.35,
          3.50,
          3.57,
          3.58,
          3.60,
          3.78,
          4.01,
          4.06,
          4.13,
          4.16,
          4.16,
          4.23,
          4.41
            ];

Gemini_Ascension = [7.7553,
                    7.5767,
                    6.6283,
                    6.3825,
                    7.5767,
                    6.7322,
                    6.2478,
                    6.7547,
                    7.3353,
                    7.7406,
                    7.3014,
                    6.8797,
                    7.4286,
                    7.0683,
                    7.5986,
                    6.4825,
                    6.0686,
                    7.4850,
                    7.7217,
                    7.1856
                       ];
                       
Gemini_Declination = [28.03,
                      31.89,
                      16.40,
                      22.51,
                      31.89,
                      25.13,
                      22.51,
                      12.90,
                      21.98,
                      24.40,
                      16.54,
                      33.96,
                      27.80,
                      20.57,
                      26.90,
                      20.21,
                      23.26,
                      31.78,
                      28.88,
                      30.25
                         ];
                         
Gemini_Asc = [ for (i=[0:len(Gemini_Ascension)-1]) (Gemini_Ascension[i]*360/24)]; 
Gemini_Dec = [ for (i=[0:len(Gemini_Declination)-1]) (r_Equator*tan(45-(Gemini_Declination[i])/2))];
   

module Gemini(){
    for (i = [0:len(Gemini)-1]){
        rotate([0,0,90+Gemini_Asc[i]])translate([0,Gemini_Dec[i]])Star_Climate(r_Stars/ln(Gemini[i]+lnStar));
    }
}

module Gemini_Constellation(){
    Star1 = [Gemini_Declination[0], 
             Gemini_Declination[14], 
             Gemini_Declination[14], 
             Gemini_Declination[14], 
             Gemini_Declination[8],
             Gemini_Declination[8], 
             Gemini_Declination[10],
             Gemini_Declination[13],
    
             Gemini_Declination[1], 
             Gemini_Declination[19], 
             Gemini_Declination[19], 
             Gemini_Declination[19], 
             Gemini_Declination[5], 
             Gemini_Declination[5], 
             Gemini_Declination[3], 
             Gemini_Declination[6] 
            ];    
            
    Rot1 = [Gemini_Ascension[0], 
            Gemini_Ascension[14], 
            Gemini_Ascension[14], 
            Gemini_Ascension[14], 
            Gemini_Ascension[8],
            Gemini_Ascension[8], 
            Gemini_Ascension[10],
            Gemini_Ascension[13],

            Gemini_Ascension[1],
            Gemini_Ascension[19], 
            Gemini_Ascension[19], 
            Gemini_Ascension[19],
            Gemini_Ascension[5],
            Gemini_Ascension[5], 
            Gemini_Ascension[3],  
            Gemini_Ascension[6]
           ];
           
    Star2 = [Gemini_Declination[14], 
             Gemini_Declination[9], 
             Gemini_Declination[12], 
             Gemini_Declination[8], 
             Gemini_Declination[10], 
             Gemini_Declination[13], 
             Gemini_Declination[7],
             Gemini_Declination[2],
             
             Gemini_Declination[19], 
             Gemini_Declination[12], 
             Gemini_Declination[11], 
             Gemini_Declination[5],
             Gemini_Declination[15], 
             Gemini_Declination[3], 
             Gemini_Declination[6], 
             Gemini_Declination[16] 
            ];

    Rot2 = [Gemini_Ascension[14], 
            Gemini_Ascension[9], 
            Gemini_Ascension[12], 
            Gemini_Ascension[8], 
            Gemini_Ascension[10], 
            Gemini_Ascension[13], 
            Gemini_Ascension[7],
            Gemini_Ascension[2], 
            
            Gemini_Ascension[19],
            Gemini_Ascension[12], 
            Gemini_Ascension[11],  
            Gemini_Ascension[5],
            Gemini_Ascension[15],
            Gemini_Ascension[3], 
            Gemini_Ascension[6],  
            Gemini_Ascension[16]
           ];
    
    for ( i = [0 : 15]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }

}



// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // // Hercules // // // // // // // // // // 
    
Hercules = [2.78,
            2.81,
            3.12,
            3.16,
            3.31,
              3.42,
              3.48,
              3.70,
              3.74,
              3.82,
                3.84,
                3.85,
                3.86,
                3.91,
                3.92,
                  4.19,
                  4.20,
                  4.23,
                  4.26,
                  4.34,
                    4.37,
                    4.41,
                    4.41,
                    4.51,
                    4.57,
                      4.57,
                      4.60,
                      4.64,
                      4.67,
                      4.72,
                        4.80,
                        4.82,
                        4.83,
                        4.84
            ];

Hercules_Ascension = [16.5036,
                      16.6881,
                      17.2503,
                      17.2506,
                      17.2439,
                        17.7742,
                        16.7147,
                        17.9625,
                        16.3653,
                        17.6575,
                          18.1256,
                          18.3947,
                          17.9375,
                          16.3289,
                          17.0047,
                            18.7608,
                            16.5683,
                            16.1461,
                            18.0250,
                            18.1811,
                              18.1458,
                              17.5122,
                              17.9750,
                              17.3944,
                              16.4233,
                                18.9122,
                                15.8778,
                                17.2944,
                                18.0008,
                                16.0464,
                                  17.2886,
                                  16.8206,
                                  16.4772,
                                  16.5433
                       ];
                       
Hercules_Declination = [21.49,
                        31.60,
                        24.84,
                        36.81,
                        14.39,
                          27.72,
                          38.92,
                          29.25,
                          19.15,
                          46.01,
                            28.78,
                            21.77,
                            37.25,
                            46.31,
                            30.93,
                              20.55,
                              42.44,
                              44.93,
                              21.59,
                              18.18,
                                20.81,
                                26.11,
                                30.19,
                                37.15,
                                14.00,
                                  22.65,
                                  42.45,
                                  37.29,
                                  16.75,
                                  46.04,
                                    33.10,
                                    45.98,
                                    41.88,
                                    11.49
                         ];
                         
Hercules_Asc = [ for (i=[0:len(Hercules_Ascension)-1]) (Hercules_Ascension[i]*360/24)]; 
Hercules_Dec = [ for (i=[0:len(Hercules_Declination)-1]) (r_Equator*tan(45-(Hercules_Declination[i])/2))];
   

module Hercules(){
    for (i = [0:len(Hercules)-1]){
        rotate([0,0,90+Hercules_Asc[i]])translate([0,Hercules_Dec[i]])Star_Climate(r_Stars/ln(Hercules[i]+lnStar));
    }
}

module Hercules_Constellation(){
    Star1 = [Hercules_Declination[0], 
             Hercules_Declination[4], 
             Hercules_Declination[2], 
             Hercules_Declination[14], 
             Hercules_Declination[1],
    
             Hercules_Declination[0], 
             Hercules_Declination[8],
             Hercules_Declination[24],
    
             Hercules_Declination[2], 
             Hercules_Declination[21], 
             Hercules_Declination[5], 
             Hercules_Declination[7], 
    
             Hercules_Declination[1], 
             Hercules_Declination[14], 
             Hercules_Declination[3], 
             Hercules_Declination[6], 
    
             Hercules_Declination[3],
             Hercules_Declination[23], 
             Hercules_Declination[12],
             
             Hercules_Declination[6],
             Hercules_Declination[16], 
             Hercules_Declination[13], 
             Hercules_Declination[17]
            ];    
            
    Rot1 = [Hercules_Ascension[0], 
            Hercules_Ascension[4], 
            Hercules_Ascension[2], 
            Hercules_Ascension[14], 
            Hercules_Ascension[1],
            
            Hercules_Ascension[0], 
            Hercules_Ascension[8],
            Hercules_Ascension[24],
            
            Hercules_Ascension[2],
            Hercules_Ascension[21], 
            Hercules_Ascension[5], 
            Hercules_Ascension[7],
            
            Hercules_Ascension[1],
            Hercules_Ascension[14], 
            Hercules_Ascension[3],  
            Hercules_Ascension[6],
            
            Hercules_Ascension[3], 
            Hercules_Ascension[23],  
            Hercules_Ascension[12],
            
            Hercules_Ascension[6],
            Hercules_Ascension[16], 
            Hercules_Ascension[13], 
            Hercules_Ascension[17]
           ];
           
    Star2 = [Hercules_Declination[4], 
             Hercules_Declination[2], 
             Hercules_Declination[14], 
             Hercules_Declination[1], 
             Hercules_Declination[0], 
             
             Hercules_Declination[8],
             Hercules_Declination[24],
             Hercules_Declination[33], 
             
             Hercules_Declination[21], 
             Hercules_Declination[5], 
             Hercules_Declination[7],
             Hercules_Declination[10], 
             
             Hercules_Declination[14], 
             Hercules_Declination[3], 
             Hercules_Declination[6], 
             Hercules_Declination[1],
             
             Hercules_Declination[23], 
             Hercules_Declination[12], 
             Hercules_Declination[9],
             
             Hercules_Declination[16],
             Hercules_Declination[13], 
             Hercules_Declination[17], 
             Hercules_Declination[26]
            ];

    Rot2 = [Hercules_Ascension[4], 
            Hercules_Ascension[2], 
            Hercules_Ascension[14], 
            Hercules_Ascension[1], 
            Hercules_Ascension[0],
            
            Hercules_Ascension[8],
            Hercules_Ascension[24], 
            Hercules_Ascension[33],
            
            Hercules_Ascension[21], 
            Hercules_Ascension[5],  
            Hercules_Ascension[7],
            Hercules_Ascension[10],
            
            Hercules_Ascension[14], 
            Hercules_Ascension[3],  
            Hercules_Ascension[6],  
            Hercules_Ascension[1],
            
            Hercules_Ascension[23], 
            Hercules_Ascension[12],  
            Hercules_Ascension[9],
            
            Hercules_Ascension[16],
            Hercules_Ascension[13], 
            Hercules_Ascension[17], 
            Hercules_Ascension[26]
           ];
    
    for ( i = [0 : 22]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }

}




// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // //   Hydra  // // // // // // // // // // 
    
Hydra = [1.99,
         2.99,
         3.11,
         3.11,
         3.25,
           3.38,
           3.54,
           3.61,
           3.83,
           3.89,
             3.90,
             3.91,
             4.11,
             4.14,
             4.29,
               4.30,
               4.32,
               4.35,
               4.42,
               4.45,
                 4.54,
                 4.59
            ];

Hydra_Ascension = [9.4597,
                   13.3153,
                   8.9231,
                   10.8269,
                   14.1061,
                     8.7794,
                     11.5500,
                     10.1764,
                     10.4347,
                     9.2392,
                       9.6642,
                       8.4275,
                       9.8578,
                       8.6275,
                       11.8817,
                         8.7203,
                         8.7728,
                         8.8069,
                         14.8381,
                         8.6458,
                           9.5328,
                           9.4856
                       ];
                       
Hydra_Declination = [-8.66,
                     -23.17,
                     5.94,
                     -16.19,
                     -26.68,
                       6.42,
                       -31.86,
                       -12.35,
                       -16.83,
                       2.32,
                         -1.14,
                         -3.91,
                         -14.85,
                         5.70,
                         -33.91,
                            3.40,
                            -13.55,
                            5.84,
                            -27.96,
                            3.34,
                              -1.18,
                              -2.77
                         ];
                         
Hydra_Asc = [ for (i=[0:len(Hydra_Ascension)-1]) (Hydra_Ascension[i]*360/24)]; 
Hydra_Dec = [ for (i=[0:len(Hydra_Declination)-1]) (r_Equator*tan(45-(Hydra_Declination[i])/2))];
   

module Hydra(){
    for (i = [0:len(Hydra)-1]){
        rotate([0,0,90+Hydra_Asc[i]])translate([0,Hydra_Dec[i]])Star_Climate(r_Stars/ln(Hydra[i]+lnStar));
    }
}

module Hydra_Constellation(){
    Star1 = [Hydra_Declination[17], 
             Hydra_Declination[15], 
             Hydra_Declination[19], 
             Hydra_Declination[13], 
             Hydra_Declination[5],
             Hydra_Declination[2], 
             Hydra_Declination[9],
             Hydra_Declination[21],
             Hydra_Declination[0], 
             Hydra_Declination[12], 
             Hydra_Declination[7], 
             Hydra_Declination[8], 
             Hydra_Declination[3],
             Hydra_Declination[6],
             Hydra_Declination[14], 
             Hydra_Declination[1], 
             Hydra_Declination[4]
            ];    
            
    Rot1 = [Hydra_Ascension[17], 
            Hydra_Ascension[15], 
            Hydra_Ascension[19], 
            Hydra_Ascension[13], 
            Hydra_Ascension[5],
            Hydra_Ascension[2], 
            Hydra_Ascension[9],
            Hydra_Ascension[21],  
            Hydra_Ascension[0],
            Hydra_Ascension[12], 
            Hydra_Ascension[7], 
            Hydra_Ascension[8], 
            Hydra_Ascension[3],
            Hydra_Ascension[6],  
            Hydra_Ascension[14],
            Hydra_Ascension[1],
            Hydra_Ascension[4]
           ];
           
    Star2 = [Hydra_Declination[15], 
             Hydra_Declination[19], 
             Hydra_Declination[13], 
             Hydra_Declination[5], 
             Hydra_Declination[2],   
             Hydra_Declination[9],
             Hydra_Declination[21],
             Hydra_Declination[0], 
             Hydra_Declination[12], 
             Hydra_Declination[7], 
             Hydra_Declination[8],
             Hydra_Declination[3], 
             Hydra_Declination[6], 
             Hydra_Declination[14],
             Hydra_Declination[1],
             Hydra_Declination[4],
             Hydra_Declination[18]
            ];

    Rot2 = [Hydra_Ascension[15], 
            Hydra_Ascension[19], 
            Hydra_Ascension[13], 
            Hydra_Ascension[5], 
            Hydra_Ascension[2],
            Hydra_Ascension[9],
            Hydra_Ascension[21], 
            Hydra_Ascension[0],
            Hydra_Ascension[12], 
            Hydra_Ascension[7],  
            Hydra_Ascension[8],
            Hydra_Ascension[3],
            Hydra_Ascension[6], 
            Hydra_Ascension[14],  
            Hydra_Ascension[1],
            Hydra_Ascension[4],
            Hydra_Ascension[18]
           ];
    
    for ( i = [0 : 16]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}




// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // // Lacerta  // // // // // // // // // // 
    
Lacerta = [3.76,
           4.14,
           4.34,
           4.42,
           4.50,
               4.50,
               4.52,
               4.55,
               4.55,
               4.64
            ];

Lacerta_Ascension = [22.5214,
                     22.2661,
                     22.4919,
                     22.2311,
                     22.2311,
                         22.6750,
                         22.5081,
                         22.3503,
                         22.4086,
                         22.6228
                       ];
                       
Lacerta_Declination = [50.28,
                       37.75,
                       47.71,
                       52.23,
                       39.71,
                           44.28,
                           43.12,
                           46.54,
                           49.48,
                           51.55
                         ];
                         
Lacerta_Asc = [ for (i=[0:len(Lacerta_Ascension)-1]) (Lacerta_Ascension[i]*360/24)]; 
Lacerta_Dec = [ for (i=[0:len(Lacerta_Declination)-1]) (r_Equator*tan(45-(Lacerta_Declination[i])/2))];
   

module Lacerta(){
    for (i = [0:len(Lacerta)-1]){
        rotate([0,0,90+Lacerta_Asc[i]])translate([0,Lacerta_Dec[i]])Star_Climate(r_Stars/ln(Lacerta[i]+lnStar));
    }
}
 
module Lacerta_Constellation(){
    Star1 = [Lacerta_Declination[2], 
             Lacerta_Declination[8], 
             Lacerta_Declination[3], 
             Lacerta_Declination[0],
    
             Lacerta_Declination[2],
             Lacerta_Declination[6]
            ];    
            
    Rot1 = [Lacerta_Ascension[2], 
            Lacerta_Ascension[8], 
            Lacerta_Ascension[3], 
            Lacerta_Ascension[0], 
    
            Lacerta_Ascension[2],
            Lacerta_Ascension[6]
           ];
           
    Star2 = [Lacerta_Declination[8], 
             Lacerta_Declination[3], 
             Lacerta_Declination[0], 
             Lacerta_Declination[2],
             
             Lacerta_Declination[6],   
             Lacerta_Declination[1]
            ];

    Rot2 = [Lacerta_Ascension[8], 
            Lacerta_Ascension[3], 
            Lacerta_Ascension[0], 
            Lacerta_Ascension[2],
            
            Lacerta_Ascension[6],
            Lacerta_Ascension[1]
           ];
    
    for ( i = [0 : 5]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}



// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // //  Leo  // // // // // // // // // // // 
    
Leo = [1.36,
       2.14,
       2.37,
       2.56,
       2.97,
         3.33,
         3.43,
         3.48,
         3.52,
         3.80,
           3.84,
           3.88,
           4.00,
           4.05,
           4.30,
             4.30,
             4.32,
             4.39,
             4.42,
             4.45,
               4.47
            ];

Leo_Ascension = [10.1394,
                 11.8175,
                 10.3328,
                 11.2350,
                 9.7642,
                   11.2372,
                   10.2781,
                   10.1219,
                   9.6858,
                   10.3328,
                     10.5467,
                     9.8792,
                     11.3986,
                     11.3522,
                     10.9267,
                       11.6156,
                       9.5286,
                       10.1317,
                       11.0386,
                       11.2775,
                         9.4108
                       ];
                       
Leo_Declination = [11.97,
                   14.57,
                   19.84,
                   20.52,
                   23.77,
                     15.43,
                     23.42,
                     16.76,
                     9.89,
                     19.84,
                       9.31,
                       26.01,
                       10.53,
                       6.03,
                       24.75,
                         -0.82,
                         22.97,
                         9.99,
                         20.18,
                         3.65,
                           26.18
                         ];
                         
Leo_Asc = [ for (i=[0:len(Leo_Ascension)-1]) (Leo_Ascension[i]*360/24)]; 
Leo_Dec = [ for (i=[0:len(Leo_Declination)-1]) (r_Equator*tan(45-(Leo_Declination[i])/2))];
   

module Leo(){
    for (i = [0:len(Leo)-1]){
        rotate([0,0,90+Leo_Asc[i]])translate([0,Leo_Dec[i]])Star_Climate(r_Stars/ln(Leo[i]+lnStar));
    }
}

module Leo_Constellation(){
    Star1 = [Leo_Declination[11], 
             Leo_Declination[4], 
             Leo_Declination[16], 
             Leo_Declination[20],
    
             Leo_Declination[4],
             Leo_Declination[7], 
             Leo_Declination[2],
             Leo_Declination[6],
    
             Leo_Declination[2], 
             Leo_Declination[3], 
             Leo_Declination[5],
    
             Leo_Declination[3], 
             Leo_Declination[1],
    
             Leo_Declination[7],
    
             Leo_Declination[5], 
             Leo_Declination[13]
            ];    
            
    Rot1 = [Leo_Ascension[11], 
            Leo_Ascension[4], 
            Leo_Ascension[16], 
            Leo_Ascension[20],
            
            Leo_Ascension[4],
            Leo_Ascension[7], 
            Leo_Ascension[2],
            Leo_Ascension[6],  
            
            Leo_Ascension[2],
            Leo_Ascension[3], 
            Leo_Ascension[5], 
            
            Leo_Ascension[3], 
            Leo_Ascension[1],
            
            Leo_Ascension[7],
            
            Leo_Ascension[5],
            Leo_Ascension[13]
           ];
           
    Star2 = [Leo_Declination[4], 
             Leo_Declination[16], 
             Leo_Declination[20], 
             Leo_Declination[11],
             
             Leo_Declination[7],   
             Leo_Declination[2],
             Leo_Declination[6],
             Leo_Declination[11],
             
             Leo_Declination[3], 
             Leo_Declination[5], 
             Leo_Declination[7],
             
             Leo_Declination[1], 
             Leo_Declination[5],
             
             Leo_Declination[0],
             
             Leo_Declination[13],
             Leo_Declination[15]
            ];

    Rot2 = [Leo_Ascension[4], 
            Leo_Ascension[16], 
            Leo_Ascension[20], 
            Leo_Ascension[11], 
            
            Leo_Ascension[7],
            Leo_Ascension[2],
            Leo_Ascension[6], 
            Leo_Ascension[11],
            
            Leo_Ascension[3], 
            Leo_Ascension[5],  
            Leo_Ascension[7],
            
            Leo_Ascension[1],
            Leo_Ascension[5], 
            
            Leo_Ascension[0],  
            
            Leo_Ascension[13],
            Leo_Ascension[15]
           ];
    
    for ( i = [0 : 15]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}






// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //    Leo Minor   // // // // // // // // // 
    
LeoMinor = [3.79,
            4.20,
            4.49,
            4.54,
            4.68
            ];

LeoMinor_Ascension = [10.8883,
                      10.4647,
                      10.1236,
                      9.5703,
                      10.6453,
                       ];
                       
LeoMinor_Declination = [34.22,
                        36.71,
                        35.24,
                        36.40,
                        31.98,
                         ];
                         
LeoMinor_Asc = [ for (i=[0:len(LeoMinor_Ascension)-1]) (LeoMinor_Ascension[i]*360/24)]; 
LeoMinor_Dec = [ for (i=[0:len(LeoMinor_Declination)-1]) (r_Equator*tan(45-(LeoMinor_Declination[i])/2))];
   

module LeoMinor(){
    for (i = [0:len(LeoMinor)-1]){
        rotate([0,0,90+LeoMinor_Asc[i]])translate([0,LeoMinor_Dec[i]])Star_Climate(r_Stars/ln(LeoMinor[i]+lnStar));
    }
}

module LeoMinor_Constellation(){
    Star1 = [LeoMinor_Declination[3], 
             LeoMinor_Declination[2], 
             LeoMinor_Declination[1], 
             LeoMinor_Declination[0], 
             LeoMinor_Declination[4]
            ];    
            
    Rot1 = [LeoMinor_Ascension[3], 
            LeoMinor_Ascension[2], 
            LeoMinor_Ascension[1], 
            LeoMinor_Ascension[0], 
            LeoMinor_Ascension[4]
           ];
           
    Star2 = [LeoMinor_Declination[2], 
             LeoMinor_Declination[1], 
             LeoMinor_Declination[0], 
             LeoMinor_Declination[4], 
             LeoMinor_Declination[2]
            ];

    Rot2 = [LeoMinor_Ascension[2], 
            LeoMinor_Ascension[1], 
            LeoMinor_Ascension[0], 
            LeoMinor_Ascension[4], 
            LeoMinor_Ascension[2]
           ];
    
    for ( i = [0 : 4]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}




// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // //  Lepus   // // // // // // // // // // 
    
Lepus = [2.58,
         2.81,
         3.19,
         3.29,
         3.55,
               3.59,
               3.71,
               3.76,
               4.29,
               4.36,
                   4.45,
                   4.67,
                   4.70,
                   4.91,
                   4.92
            ];

Lepus_Ascension = [5.5453,
                   5.4706,
                   5.0908,
                   5.2153,
                   5.7825,
                         5.7825,
                         5.9400,
                         5.8553,
                         5.3261,
                         5.2203,
                            5.2047,
                            6.1025,
                            5.3406,
                            5.0236,
                            6.0831
                       ];
                       
Lepus_Declination = [-17.82,
                     -20.76,
                     -22.15,
                     -16.21,
                     -14.82,
                           -22.45,
                           -14.17,
                           -20.88,
                           -13.18,
                           -12.94,
                               -11.87,
                               -14.94,
                               -21.24,
                               -20.05,
                               -16.48
                         ];
                         
Lepus_Asc = [ for (i=[0:len(Lepus_Ascension)-1]) (Lepus_Ascension[i]*360/24)]; 
Lepus_Dec = [ for (i=[0:len(Lepus_Declination)-1]) (r_Equator*tan(45-(Lepus_Declination[i])/2))];
   

module Lepus(){
    for (i = [0:len(Lepus)-1]){
        rotate([0,0,90+Lepus_Asc[i]])translate([0,Lepus_Dec[i]])Star_Climate(r_Stars/ln(Lepus[i]+lnStar));
    }
}
 
module Lepus_Constellation(){
    Star1 = [Lepus_Declination[0], 
             Lepus_Declination[1], 
             Lepus_Declination[2], 
             Lepus_Declination[3],
    
             Lepus_Declination[0],
             Lepus_Declination[4],
             Lepus_Declination[6],
             Lepus_Declination[11],
             Lepus_Declination[7],
             Lepus_Declination[5],
    
             Lepus_Declination[3],
    
             Lepus_Declination[3]
            ];    
            
    Rot1 = [Lepus_Ascension[0], 
            Lepus_Ascension[1], 
            Lepus_Ascension[2], 
            Lepus_Ascension[3], 
    
            Lepus_Ascension[0],
            Lepus_Ascension[4],
            Lepus_Ascension[6],
            Lepus_Ascension[11],
            Lepus_Ascension[7],
            Lepus_Ascension[5],

            Lepus_Ascension[3],
            
            Lepus_Ascension[3]
           ];
           
    Star2 = [Lepus_Declination[1], 
             Lepus_Declination[2], 
             Lepus_Declination[3], 
             Lepus_Declination[0],
             
             Lepus_Declination[4],   
             Lepus_Declination[6], 
             Lepus_Declination[11], 
             Lepus_Declination[7],
             Lepus_Declination[5],   
             Lepus_Declination[1],
             
             Lepus_Declination[8], 
             
             Lepus_Declination[9]
            ];

    Rot2 = [Lepus_Ascension[1], 
            Lepus_Ascension[2], 
            Lepus_Ascension[3], 
            Lepus_Ascension[0],
            
            Lepus_Ascension[4],
            Lepus_Ascension[6],
            Lepus_Ascension[11], 
            Lepus_Ascension[7],
            Lepus_Ascension[5],
            Lepus_Ascension[1],
            
            Lepus_Ascension[8],
            
            Lepus_Ascension[9]
           ];
    
    for ( i = [0 : 11]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}






// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // //   Libra  // // // // // // // // // // 
    
Libra = [2.61,
         2.75,
         3.25,
         3.60,
         3.66,
             3.91,
             4.13,
             4.47,
             4.54,
             4.61
            ];

Libra_Ascension = [15.2833,
                   14.8478,
                   15.0678,
                   15.6169,
                   15.6442,
                       15.5919,
                       15.8969,
                       14.9531,
                       15.2036,
                       15.5694
                       ];
                       
Libra_Declination = [-9.38,
                     -16.04,
                     -25.28,
                     -28.13,
                     -29.78,
                         -14.79,
                         -16.73,
                         -4.35,
                         -19.80,
                         -10.06
                         ];
                         
Libra_Asc = [ for (i=[0:len(Libra_Ascension)-1]) (Libra_Ascension[i]*360/24)]; 
Libra_Dec = [ for (i=[0:len(Libra_Declination)-1]) (r_Equator*tan(45-(Libra_Declination[i])/2))];
   

module Libra(){
    for (i = [0:len(Libra)-1]){
        rotate([0,0,90+Libra_Asc[i]])translate([0,Libra_Dec[i]])Star_Climate(r_Stars/ln(Libra[i]+lnStar));
    }
}

module Libra_Constellation(){
    Star1 = [Libra_Declination[2], 
             Libra_Declination[1], 
             Libra_Declination[0], 
             Libra_Declination[5], 
             Libra_Declination[5], 
             Libra_Declination[3]
            ];    
            
    Rot1 = [Libra_Ascension[2], 
            Libra_Ascension[1], 
            Libra_Ascension[0], 
            Libra_Ascension[5], 
            Libra_Ascension[5], 
            Libra_Ascension[3]
           ];
           
    Star2 = [Libra_Declination[1], 
             Libra_Declination[0], 
             Libra_Declination[5], 
             Libra_Declination[1], 
             Libra_Declination[3], 
             Libra_Declination[4]
            ];

    Rot2 = [Libra_Ascension[1], 
            Libra_Ascension[0], 
            Libra_Ascension[5], 
            Libra_Ascension[1], 
            Libra_Ascension[3], 
            Libra_Ascension[4]
           ];
    
    for ( i = [0 : 5]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}



// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // //   Lynx   // // // // // // // // // // 
    
Lynx = [3.14,
        3.82,
        3.96,
        4.25,
        4.35,
          4.44,
          4.56,
          4.61
            ];

Lynx_Ascension = [9.3508,
                  9.3139,
                  9.0106,
                  8.3806,
                  6.9544,
                    6.3269,
                    9.1086,
                    7.45
                       ];
                       
Lynx_Declination = [34.39,
                    36.80,
                    41.78,
                    43.19,
                    58.42,
                      59.01,
                      38.45,
                      49.21
                         ];
                         
Lynx_Asc = [ for (i=[0:len(Lynx_Ascension)-1]) (Lynx_Ascension[i]*360/24)]; 
Lynx_Dec = [ for (i=[0:len(Lynx_Declination)-1]) (r_Equator*tan(45-(Lynx_Declination[i])/2))];
   

module Lynx(){
    for (i = [0:len(Lynx)-1]){
        rotate([0,0,90+Lynx_Asc[i]])translate([0,Lynx_Dec[i]])Star_Climate(r_Stars/ln(Lynx[i]+lnStar));
    }
}

module Lynx_Constellation(){
    Star1 = [Lynx_Declination[0], 
             Lynx_Declination[1], 
             Lynx_Declination[6], 
             Lynx_Declination[2], 
             Lynx_Declination[3], 
               Lynx_Declination[7], 
               Lynx_Declination[4]
            ];    
            
    Rot1 = [Lynx_Ascension[0], 
            Lynx_Ascension[1], 
            Lynx_Ascension[6], 
            Lynx_Ascension[2], 
            Lynx_Ascension[3], 
              Lynx_Ascension[7], 
              Lynx_Ascension[4]
           ];
           
    Star2 = [Lynx_Declination[1], 
             Lynx_Declination[6], 
             Lynx_Declination[2], 
             Lynx_Declination[3], 
             Lynx_Declination[7], 
               Lynx_Declination[4], 
               Lynx_Declination[5]
            ];

    Rot2 = [Lynx_Ascension[1], 
            Lynx_Ascension[6], 
            Lynx_Ascension[2], 
            Lynx_Ascension[3], 
            Lynx_Ascension[7], 
              Lynx_Ascension[4], 
              Lynx_Ascension[5]
           ];
    
    for ( i = [0 : 6]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}



// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // // Lyra  // // // // // // // // // // // 
    
Lyra = [0.03,
        3.55,
        3.22,
        4.19,
        4.38,
        7.72
       ];

Lyra_Ascension = [18.6294,
                  18.8497,
                  18.9975,
                  18.9225,
                  18.7600,
                  18.7525
                 ];
                       
Lyra_Declination = [38.80,
                    33.39,
                    32.72,
                    36.93,
                    37.63,
                    39.69
                   ];
                         
Lyra_Asc = [ for (i=[0:len(Lyra_Ascension)-1]) (Lyra_Ascension[i]*360/24)]; 
Lyra_Dec = [ for (i=[0:len(Lyra_Declination)-1]) (r_Equator*tan(45-(Lyra_Declination[i])/2))];
   

module Lyra(){
    for (i = [0:len(Lyra)-1]){
        rotate([0,0,90+Lyra_Asc[i]])translate([0,Lyra_Dec[i]])Star_Climate(r_Stars/ln(Lyra[i]+lnStar));
    }
}

module Lyra_Constellation(){
    Star1 = [Lyra_Declination[0], 
             Lyra_Declination[4], 
             Lyra_Declination[3], 
             Lyra_Declination[2], 
             Lyra_Declination[1], 
             Lyra_Declination[0], 
             Lyra_Declination[4]
            ];    
    Rot1 = [Lyra_Ascension[0], 
            Lyra_Ascension[4], 
            Lyra_Ascension[3], 
            Lyra_Ascension[2], 
            Lyra_Ascension[1], 
            Lyra_Ascension[0], 
            Lyra_Ascension[4]
           ];
    Star2 = [Lyra_Declination[4], 
             Lyra_Declination[3], 
             Lyra_Declination[2], 
             Lyra_Declination[1],  
             Lyra_Declination[4], 
             Lyra_Declination[5], 
             Lyra_Declination[5]
            ];

    Rot2 = [Lyra_Ascension[4], 
            Lyra_Ascension[3], 
            Lyra_Ascension[2], 
            Lyra_Ascension[1], 
            Lyra_Ascension[4], 
            Lyra_Ascension[5], 
            Lyra_Ascension[5]
           ];
    
    for ( i = [0 : 4]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
    for ( i = [4 : 6]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation2);
    }

}




// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //  Monoceros  // // // // // // // // // // 
    
Monoceros = [3.94,
             3.99,
             4.15,
             4.36,
             4.39,
                 4.47,
                 4.48,
                 4.60,
                 4.66,
                 4.68
         ];

Monoceros_Ascension = [7.6872,
                       6.2475,
                       7.1975,
                       8.1431,
                       6.3961,
                           6.5483,
                           6.7975,
                           6.4803,
                           6.6828,
                           8.0203
                   ];
                       
Monoceros_Declination = [-9.55,
                         -6.27,
                         -0.49,
                         -2.98,
                         4.59,
                            7.33,
                            2.41,
                            -7.03,
                            9.89,
                            -1.39
                            
                     ];
                         
Monoceros_Asc = [ for (i=[0:len(Monoceros_Ascension)-1]) (Monoceros_Ascension[i]*360/24)]; 
Monoceros_Dec = [ for (i=[0:len(Monoceros_Declination)-1]) (r_Equator*tan(45-(Monoceros_Declination[i])/2))];
   

module Monoceros(){
    for (i = [0:len(Monoceros)-1]){
        rotate([0,0,90+Monoceros_Asc[i]])translate([0,Monoceros_Dec[i]])Star_Climate(r_Stars/ln(Monoceros[i]+lnStar));
    }
}

module Monoceros_Constellation(){
    Star1 = [Monoceros_Declination[0], 
             Monoceros_Declination[3], 
             Monoceros_Declination[2], 
             Monoceros_Declination[7],
    
             Monoceros_Declination[2], 
             Monoceros_Declination[6], 
             Monoceros_Declination[4], 
             Monoceros_Declination[5], 
    
             Monoceros_Declination[5]
            ];    
    Rot1 = [Monoceros_Ascension[0], 
            Monoceros_Ascension[3], 
            Monoceros_Ascension[2], 
            Monoceros_Ascension[7],
    
            Monoceros_Ascension[2], 
            Monoceros_Ascension[6], 
            Monoceros_Ascension[4], 
            Monoceros_Ascension[5],
            
            Monoceros_Ascension[5]
           ];
    Star2 = [Monoceros_Declination[3], 
             Monoceros_Declination[2], 
             Monoceros_Declination[7], 
             Monoceros_Declination[1],
             
             Monoceros_Declination[6], 
             Monoceros_Declination[4], 
             Monoceros_Declination[5], 
             Monoceros_Declination[6],
             
             Monoceros_Declination[8]
            ];

    Rot2 = [Monoceros_Ascension[3], 
            Monoceros_Ascension[2], 
            Monoceros_Ascension[7], 
            Monoceros_Ascension[1],
            
            Monoceros_Ascension[6], 
            Monoceros_Ascension[4], 
            Monoceros_Ascension[5], 
            Monoceros_Ascension[6],
            
            Monoceros_Ascension[8] 
           ];
    
    for ( i = [0 : 8]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}


// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //  Ophiochus  // // // // // // // // // // 
    
Ophiochus = [2.08,
             2.43,
             2.54,
             2.73,
             2.76,
               3.19,
               3.23,
               3.27,
               3.32,
               3.71,
                 3.75,
                 3.82,
                 3.93,
                 4.03,
                 4.16,
                   4.22,
                   4.28,
                   4.29,
                   4.33,
                   4.34,
                     4.39,
                     4.39,
                     4.42,
                     4.45,
                     4.48,
                       4.53,
                       4.57,
                       4.58,
                       4.62
            ];

Ophiochus_Ascension = [17.5822,
                       17.1728,
                       16.6192,
                       16.2389,
                       17.7244,
                         16.9611,
                         16.3053,
                         17.3667,
                         17.9836,
                         18.1225,
                           17.7981,
                           16.5150,
                           18.0106,
                           18.0908,
                           17.4394,
                             16.4503,
                             17.4558,
                             16.5189,
                             17.2558,
                             17.4417,
                               16.9000,
                               17.3500,
                               18.0292,
                               16.5356,
                               16.4017,
                                 17.4436,
                                 16.4264,
                                 17.6306,
                                 16.4633 
                       ];
                       
Ophiochus_Declination = [12.56,
                         -15.43,
                         -10.57,
                         -3.69,
                         4.57,
                             9.38,
                             -4.69,
                             -25.00,
                             -9.77,
                             9.56,
                                2.71,
                                1.98,
                                2.93,
                                2.50,
                                -24.18,
                                    -18.46,
                                    -29.87,
                                    -16.61,
                                    -26.6,
                                    4.14,
                                        10.17,
                                        -21.11,
                                        1.31,
                                        -21.47,
                                        -20.04,
                                            -5.09,
                                            -23.45,
                                            -8.12,
                                            -8.37
                         ];
                         
Ophiochus_Asc = [ for (i=[0:len(Ophiochus_Ascension)-1]) (Ophiochus_Ascension[i]*360/24)]; 
Ophiochus_Dec = [ for (i=[0:len(Ophiochus_Declination)-1]) (r_Equator*tan(45-(Ophiochus_Declination[i])/2))];
   

module Ophiochus(){
    for (i = [0:len(Ophiochus)-1]){
        rotate([0,0,90+Ophiochus_Asc[i]])translate([0,Ophiochus_Dec[i]])Star_Climate(r_Stars/ln(Ophiochus[i]+lnStar));
    }
}

module Ophiochus_Constellation(){
    Star1 = [Ophiochus_Declination[0], 
             Ophiochus_Declination[4], 
             Ophiochus_Declination[1], 
             Ophiochus_Declination[2],
             Ophiochus_Declination[5],
    
             Ophiochus_Declination[5],
             Ophiochus_Declination[3], 
             Ophiochus_Declination[6],
             Ophiochus_Declination[28],
    
             Ophiochus_Declination[4], 
             Ophiochus_Declination[10], 
             Ophiochus_Declination[8],
             Ophiochus_Declination[21], 
    
             Ophiochus_Declination[2],
             Ophiochus_Declination[17],
             Ophiochus_Declination[15], 
             Ophiochus_Declination[24],
    
             Ophiochus_Declination[1], 
             Ophiochus_Declination[7]
            ];    
            
    Rot1 = [Ophiochus_Ascension[0], 
            Ophiochus_Ascension[4], 
            Ophiochus_Ascension[1], 
            Ophiochus_Ascension[2],
            Ophiochus_Ascension[5],
            
            Ophiochus_Ascension[5],
            Ophiochus_Ascension[3], 
            Ophiochus_Ascension[6],
            Ophiochus_Ascension[28],  
            
            Ophiochus_Ascension[4],
            Ophiochus_Ascension[10], 
            Ophiochus_Ascension[8], 
            Ophiochus_Ascension[21], 
            
            Ophiochus_Ascension[2],
            Ophiochus_Ascension[17],
            Ophiochus_Ascension[15],
            Ophiochus_Ascension[24],
            
            Ophiochus_Ascension[1],
            Ophiochus_Ascension[7]
           ];
           
    Star2 = [Ophiochus_Declination[4], 
             Ophiochus_Declination[1], 
             Ophiochus_Declination[2], 
             Ophiochus_Declination[5],
             Ophiochus_Declination[0],
             
             Ophiochus_Declination[3],   
             Ophiochus_Declination[6],
             Ophiochus_Declination[28],
             Ophiochus_Declination[2],
             
             Ophiochus_Declination[10], 
             Ophiochus_Declination[8], 
             Ophiochus_Declination[21],
             Ophiochus_Declination[1],
             
             Ophiochus_Declination[17],    
             Ophiochus_Declination[15],
             Ophiochus_Declination[24],
             Ophiochus_Declination[26],
             
             Ophiochus_Declination[7],
             Ophiochus_Declination[16]
            ];

    Rot2 = [Ophiochus_Ascension[4], 
            Ophiochus_Ascension[1], 
            Ophiochus_Ascension[2], 
            Ophiochus_Ascension[5], 
            Ophiochus_Ascension[0],
            
            Ophiochus_Ascension[3],
            Ophiochus_Ascension[6],
            Ophiochus_Ascension[28], 
            Ophiochus_Ascension[2],
            
            Ophiochus_Ascension[10], 
            Ophiochus_Ascension[8],  
            Ophiochus_Ascension[21],
            Ophiochus_Ascension[1],
            
            Ophiochus_Ascension[17], 
            Ophiochus_Ascension[15],  
            Ophiochus_Ascension[24],
            Ophiochus_Ascension[26], 
            
            Ophiochus_Ascension[7],
            Ophiochus_Ascension[16]
           ];
    
    for ( i = [0 : 18]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}




// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // //   Orion  // // // // // // // // // // 
    
Orion = [0.18,
         0.42,
         1.64,
         1.69,
         1.88,
            2.07,
            2.20,
            2.75,
            3.19,
            3.35,
                3.47,
                3.59,
                3.68,
                3.70,
                3.71,
                    3.77,
                    4.06,
                    4.09,
                    4.12,
                    4.13,
                        4.20,
                        4.35,
                        4.39,
                        4.39,
                        4.42,
                            4.45,
                            4.46,
                            4.47,
                            4.50,
                            4.53,
                                4.58,
                                4.59,
                                4.62,
                                4.64,
                                4.64
            ];

Orion_Ascension = [5.2422,
                   5.9194,
                   5.4186,
                   5.6033,
                   5.6792,
                        5.7958,
                        5.5333,
                        5.5903,
                        4.8306,
                        5.4078,
                             5.5856,
                             5.2933,
                             4.8533,
                             5.6792,
                             4.9042,
                                5.6456,
                                4.9394,
                                5.6150,
                                6.0394,
                                5.3989,
                                    5.5131,
                                    4.8433,
                                    5.5803,
                                    5.9064,
                                    6.1261,
                                        6.1989,
                                        5.2214,
                                        4.9756,
                                        5.6531,
                                        6.0008,
                                            5.5897,
                                            5.4472,
                                            5.5319,
                                            4.9147,
                                            6.0653
                       ];
                       
Orion_Declination = [-8.20,
                     7.41,
                     6.35,
                     -1.20,
                     -1.94,
                        -9.67,
                        -0.30,
                        -5.91,
                        6.96,
                        -2.40,
                            9.93,
                            -6.84,
                            5.61,
                            -1.94,
                            2.44,
                                -2.6,
                                13.51,
                                9.29,
                                9.65,
                                -7.81,
                                    5.95,
                                    8.9,
                                    9.49,
                                    20.28,
                                    14.77,
                                        14.21,
                                        2.86,
                                        1.71,
                                        4.12,
                                        -3.07,
                                            -4.84,
                                            3.10,
                                            -7.30,
                                            10.15,
                                            20.14
                         ];
                         
Orion_Asc = [ for (i=[0:len(Orion_Ascension)-1]) (Orion_Ascension[i]*360/24)]; 
Orion_Dec = [ for (i=[0:len(Orion_Declination)-1]) (r_Equator*tan(45-(Orion_Declination[i])/2))];
   

module Orion(){
    for (i = [0:len(Orion)-1]){
        rotate([0,0,90+Orion_Asc[i]])translate([0,Orion_Dec[i]])Star_Climate(r_Stars/ln(Orion[i]+lnStar));
    }
}

module Orion_Constellation(){
    Star1 = [Orion_Declination[1], 
             Orion_Declination[10], 
             Orion_Declination[2],
    
             Orion_Declination[2],
             Orion_Declination[6],
             Orion_Declination[3],
             Orion_Declination[4],
    
             Orion_Declination[4],
    
             Orion_Declination[6],
             Orion_Declination[9],
    
             Orion_Declination[1], 
             Orion_Declination[18],
             Orion_Declination[18], 
             Orion_Declination[25],
             Orion_Declination[25],
             Orion_Declination[24],
    
             Orion_Declination[2],
             Orion_Declination[16],    
             Orion_Declination[33],
             Orion_Declination[21], 
             Orion_Declination[8],
             Orion_Declination[12],
             Orion_Declination[14]
            ];    
            
    Rot1 = [Orion_Ascension[1], 
            Orion_Ascension[10], 
            Orion_Ascension[2], 
            
            Orion_Ascension[2],
            Orion_Ascension[6],
            Orion_Ascension[3],
            Orion_Ascension[4], 
            
            Orion_Ascension[4],
            
            Orion_Ascension[6],  
            Orion_Ascension[9],
            
            Orion_Ascension[1],
            Orion_Ascension[18],
            Orion_Ascension[18],
            Orion_Ascension[25],
            Orion_Ascension[25],
            Orion_Ascension[24],
            
            Orion_Ascension[2],
            Orion_Ascension[16],
            Orion_Ascension[33], 
            Orion_Ascension[21], 
            Orion_Ascension[8],
            Orion_Ascension[12], 
            Orion_Ascension[14], 
           ];
           
    Star2 = [Orion_Declination[10], 
             Orion_Declination[2], 
             Orion_Declination[1],
             
             Orion_Declination[6],
             Orion_Declination[3],
             Orion_Declination[4],   
             Orion_Declination[1],
             
             Orion_Declination[5],
             
             Orion_Declination[9],
             Orion_Declination[0], 
             
             Orion_Declination[18], 
             Orion_Declination[24],
             Orion_Declination[25],
             Orion_Declination[24],    
             Orion_Declination[34],
             Orion_Declination[23],
             
             Orion_Declination[8],
             Orion_Declination[33],
             Orion_Declination[21],
             Orion_Declination[8],
             Orion_Declination[12],
             Orion_Declination[14],
             Orion_Declination[27]
            ];

    Rot2 = [Orion_Ascension[10], 
            Orion_Ascension[2], 
            Orion_Ascension[1], 
            
            Orion_Ascension[6], 
            Orion_Ascension[3],
            Orion_Ascension[4],
            Orion_Ascension[1],
            
            Orion_Ascension[5], 
            
            Orion_Ascension[9],
            Orion_Ascension[0], 
            
            Orion_Ascension[18],  
            Orion_Ascension[24],
            Orion_Ascension[25],
            Orion_Ascension[24], 
            Orion_Ascension[34],  
            Orion_Ascension[23],
            
            Orion_Ascension[8],
            Orion_Ascension[33],
            Orion_Ascension[21], 
            Orion_Ascension[8],
            Orion_Ascension[12], 
            Orion_Ascension[14],
            Orion_Ascension[27]
           ];
    
    for ( i = [0 : 22]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}






// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // //  Pegasus // // // // // // // // // // 
    
Pegasus = [2.38,
           2.44,
           2.49,
           2.83,
           2.93,
               3.41,
               3.51,
               3.52,
               3.77,
               3.97,
                   4.08,
                   4.14,
                   4.20,
                   4.28,
                   4.34,
                       2.03
            ];

Pegasus_Ascension = [21.7364,
                     23.0628,
                     23.0792,
                     0.2206,
                     22.7167,
                        22.6908,
                        22.8333,
                        22.1697,
                        22.1167,
                        22.7753,
                             21.3681,
                             21.7439,
                             22.7781,
                             22.1664,
                             21.7417,
                                 0.1611
                       ];
                       
Pegasus_Declination = [9.88,
                       28.08,
                       15.21,
                       15.18,
                       30.22,
                           10.81,
                           24.60,
                           6.20,
                           25.35,
                           23.57,
                               19.4,
                               25.65,
                               12.17,
                               33.18,
                               17.35,
                                   29.23
                         ];
                         
Pegasus_Asc = [ for (i=[0:len(Pegasus_Ascension)-1]) (Pegasus_Ascension[i]*360/24)]; 
Pegasus_Dec = [ for (i=[0:len(Pegasus_Declination)-1]) (r_Equator*tan(45-(Pegasus_Declination[i])/2))];
   

module Pegasus(){
    for (i = [0:len(Pegasus)-1]){
        rotate([0,0,90+Pegasus_Asc[i]])translate([0,Pegasus_Dec[i]])Star_Climate(r_Stars/ln(Pegasus[i]+lnStar));
    }
}

module Pegasus_Constellation(){
    Star1 = [Pegasus_Declination[2], 
             Pegasus_Declination[1], 
             Pegasus_Declination[15], 
             Pegasus_Declination[3],
    
             Pegasus_Declination[2], 
             Pegasus_Declination[5], 
             Pegasus_Declination[7],
    
             Pegasus_Declination[1], 
             Pegasus_Declination[6], 
             Pegasus_Declination[9], 
             Pegasus_Declination[8],

             Pegasus_Declination[1], 
             Pegasus_Declination[4]
            ];    
            
    Rot1 = [Pegasus_Ascension[2], 
            Pegasus_Ascension[1], 
            Pegasus_Ascension[15], 
            Pegasus_Ascension[3],  
            
            Pegasus_Ascension[2], 
            Pegasus_Ascension[5], 
            Pegasus_Ascension[7],
            
            Pegasus_Ascension[1], 
            Pegasus_Ascension[6], 
            Pegasus_Ascension[9], 
            Pegasus_Ascension[8],
            
            Pegasus_Ascension[1], 
            Pegasus_Ascension[4]
           ];
           
    Star2 = [Pegasus_Declination[1], 
             Pegasus_Declination[15], 
             Pegasus_Declination[3], 
             Pegasus_Declination[2],
             
             Pegasus_Declination[5], 
             Pegasus_Declination[7], 
             Pegasus_Declination[0],
             
             Pegasus_Declination[6], 
             Pegasus_Declination[9], 
             Pegasus_Declination[8], 
             Pegasus_Declination[11],
             
             Pegasus_Declination[4], 
             Pegasus_Declination[13]
            ];

    Rot2 = [Pegasus_Ascension[1], 
            Pegasus_Ascension[15], 
            Pegasus_Ascension[3], 
            Pegasus_Ascension[2],
            
            Pegasus_Ascension[5], 
            Pegasus_Ascension[7], 
            Pegasus_Ascension[0],
            
            Pegasus_Ascension[6], 
            Pegasus_Ascension[9], 
            Pegasus_Ascension[8], 
            Pegasus_Ascension[11],
            
            Pegasus_Ascension[4], 
            Pegasus_Ascension[13]
           ];
    
    for ( i = [0 : 12]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}




// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // //  Perseus // // // // // // // // // // 
    
Perseus = [1.79,
           2.09,
           2.84,
           2.90,
           2.91,
               3.00,
               3.01,
               3.32,
               3.77,
               3.77,
                   3.79,
                   3.84,
                   3.93,
                   3.96,
                   3.98,
                       4.00,
                       4.01,
                       4.05,
                       4.10,
                       4.12,
                           4.22,
                           4.25
            ];

Perseus_Ascension = [3.4053,
                     3.1361,
                     3.9019,
                     3.9642,
                     3.0797,
                        3.0789,
                        3.7153,
                        3.0861,
                        2.8447,
                        3.7531,
                             3.1581,
                             3.7386,
                             2.90420,
                             4.1442,
                             3.9825, 
                                 2.9056,
                                 1.7275,
                                 3.1506,
                                 2.7364,
                                 4.2481,
                                     2.8428,
                                     4.1097
                       ];
                       
Perseus_Declination = [49.86,
                       40.96,
                       31.88,
                       40.01,
                       53.51,
                           53.52,
                           47.79,
                           38.84,
                           55.90,
                           42.58,
                               44.86,
                               32.29,
                               52.76,
                               47.71,
                               35.79,
                                   52.76,
                                   50.69,
                                   49.61,
                                   49.23,
                                   48.41,
                                       38.32,
                                       50.35
                         ];
                         
Perseus_Asc = [ for (i=[0:len(Perseus_Ascension)-1]) (Perseus_Ascension[i]*360/24)]; 
Perseus_Dec = [ for (i=[0:len(Perseus_Declination)-1]) (r_Equator*tan(45-(Perseus_Declination[i])/2))];
   

module Perseus(){
    for (i = [0:len(Perseus)-1]){
        rotate([0,0,90+Perseus_Asc[i]])translate([0,Perseus_Dec[i]])Star_Climate(r_Stars/ln(Perseus[i]+lnStar));
    }
}

module Perseus_Constellation(){
    Star1 = [Perseus_Declination[8], 
             Perseus_Declination[4], 
             Perseus_Declination[12],
    
             Perseus_Declination[12],
             Perseus_Declination[17], 
             Perseus_Declination[0], 
    
             Perseus_Declination[17],
             Perseus_Declination[10], 
             Perseus_Declination[1], 
             Perseus_Declination[3], 
             Perseus_Declination[6],
    
             Perseus_Declination[1],
    
             Perseus_Declination[3], 
             Perseus_Declination[14],    
             Perseus_Declination[2],
    
             Perseus_Declination[17],
             Perseus_Declination[18], 
    
             Perseus_Declination[6],
             Perseus_Declination[19]
            ];    
            
    Rot1 = [Perseus_Ascension[8], 
            Perseus_Ascension[4], 
            Perseus_Ascension[12],
    
            Perseus_Ascension[12],  
            Perseus_Ascension[17], 
            Perseus_Ascension[0],
            
            Perseus_Ascension[17],
            Perseus_Ascension[10], 
            Perseus_Ascension[1], 
            Perseus_Ascension[3], 
            Perseus_Ascension[6],
            
            Perseus_Ascension[1],
            
            Perseus_Ascension[3], 
            Perseus_Ascension[14],
            Perseus_Ascension[2],
            
            Perseus_Ascension[17],
            Perseus_Ascension[18],
            
            Perseus_Ascension[6],
            Perseus_Ascension[19]
           ];
           
    Star2 = [Perseus_Declination[4], 
             Perseus_Declination[12], 
             Perseus_Declination[8],
             
             Perseus_Declination[17],
             Perseus_Declination[0], 
             Perseus_Declination[4],
             
             Perseus_Declination[10],
             Perseus_Declination[1], 
             Perseus_Declination[3], 
             Perseus_Declination[6], 
             Perseus_Declination[0],
             
             Perseus_Declination[7], 
             
             Perseus_Declination[14], 
             Perseus_Declination[2],
             Perseus_Declination[11],
             
             Perseus_Declination[18],
             Perseus_Declination[16],
             
             Perseus_Declination[19],
             Perseus_Declination[21]
            ];

    Rot2 = [Perseus_Ascension[4], 
            Perseus_Ascension[12], 
            Perseus_Ascension[8],
            
            Perseus_Ascension[17],
            Perseus_Ascension[0], 
            Perseus_Ascension[4],
            
            Perseus_Ascension[10],
            Perseus_Ascension[1], 
            Perseus_Ascension[3], 
            Perseus_Ascension[6], 
            Perseus_Ascension[0], 
            
            Perseus_Ascension[7], 
            
            Perseus_Ascension[14], 
            Perseus_Ascension[2],
            Perseus_Ascension[11],
            
            Perseus_Ascension[18],
            Perseus_Ascension[16],
            
            Perseus_Ascension[19],
            Perseus_Ascension[21]
           ];
    
    for ( i = [0 : 18]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}



// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // //  Pisces  // // // // // // // // // // 
    
Pisces = [3.62,
          3.70,
          4.03,
          4.13,
          4.26,
              4.27,
              4.27,
              4.33,
              4.37,
              4.44,
                  4.45,
                  4.48,
                  4.49,
                  4.51,
                  4.61,
                      4.61,
                      4.66,
                      4.67,
                      4.74,
                      4.84,
                          4.88,
                          4.95
            ];

Pisces_Ascension = [1.5244,
                    23.2858,
                    23.9883,
                    23.6656,
                    1.7564,
                        1.0489,
                        23.4661,
                        2.0339,
                        0.0325,
                        0.8111,
                             1.6903,
                             23.0644,
                             23.7006,
                             1.1942, 
                             0.0889,
                                 1.8925,
                                 1.1908,
                                 1.2289,
                                 1.3242, 
                                 1.5028,
                                     23.9778,
                                     23.4336
                       ];
                       
Pisces_Declination = [15.35,
                      3.28,
                      6.86,
                      5.63,
                      9.16,
                          7.89,
                          6.38,
                          2.76,
                          -6.01,
                          7.59,
                               5.49,
                               3.82,
                               1.78,
                               30.09,
                               -5.71,
                                   3.19,
                                   21.03,
                                   24.58,
                                   27.26,
                                   6.14,
                                       -3.56,
                                       1.26
                         ];
                         
Pisces_Asc = [ for (i=[0:len(Pisces_Ascension)-1]) (Pisces_Ascension[i]*360/24)]; 
Pisces_Dec = [ for (i=[0:len(Pisces_Declination)-1]) (r_Equator*tan(45-(Pisces_Declination[i])/2))];
   

module Pisces(){
    for (i = [0:len(Pisces)-1]){
        rotate([0,0,90+Pisces_Asc[i]])translate([0,Pisces_Dec[i]])Star_Climate(r_Stars/ln(Pisces[i]+lnStar));
    }
}

module Pisces_Constellation(){
    Star1 = [Pisces_Declination[3], 
             Pisces_Declination[6], 
             Pisces_Declination[1],
             Pisces_Declination[21],
             Pisces_Declination[12],
    
             Pisces_Declination[3], 
             Pisces_Declination[2],
             Pisces_Declination[9], 
             Pisces_Declination[5], 
             Pisces_Declination[19], 
             Pisces_Declination[10],
             Pisces_Declination[7],
             Pisces_Declination[4], 
             Pisces_Declination[0],    
             Pisces_Declination[17],
             Pisces_Declination[18],
             Pisces_Declination[13]
            ];    
            
    Rot1 = [Pisces_Ascension[3], 
            Pisces_Ascension[6], 
            Pisces_Ascension[1],
            Pisces_Ascension[21],  
            Pisces_Ascension[12],
            
            Pisces_Ascension[3],            
            Pisces_Ascension[2],
            Pisces_Ascension[9], 
            Pisces_Ascension[5], 
            Pisces_Ascension[19], 
            Pisces_Ascension[10],            
            Pisces_Ascension[7],            
            Pisces_Ascension[4], 
            Pisces_Ascension[0],
            Pisces_Ascension[17],            
            Pisces_Ascension[18],
            Pisces_Ascension[13]
           ];
           
    Star2 = [Pisces_Declination[6], 
             Pisces_Declination[1], 
             Pisces_Declination[21],
             Pisces_Declination[12],
             Pisces_Declination[3],
             
             Pisces_Declination[2],             
             Pisces_Declination[9],
             Pisces_Declination[5], 
             Pisces_Declination[19], 
             Pisces_Declination[10], 
             Pisces_Declination[7],             
             Pisces_Declination[4],              
             Pisces_Declination[0], 
             Pisces_Declination[17],
             Pisces_Declination[18],             
             Pisces_Declination[13],
             Pisces_Declination[17]
            ];

    Rot2 = [Pisces_Ascension[6], 
            Pisces_Ascension[1], 
            Pisces_Ascension[21],            
            Pisces_Ascension[12],
            Pisces_Ascension[3], 
            
            Pisces_Ascension[2],            
            Pisces_Ascension[9],
            Pisces_Ascension[5], 
            Pisces_Ascension[19], 
            Pisces_Ascension[10], 
            Pisces_Ascension[7],             
            Pisces_Ascension[4],             
            Pisces_Ascension[0], 
            Pisces_Ascension[17],
            Pisces_Ascension[18],            
            Pisces_Ascension[13],
            Pisces_Ascension[17]
           ];
    
    for ( i = [0 : 16]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}






// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // //     Sagitta    // // // // // // // // // // 
    
Sagitta = [3.51,
           3.82,
           4.38,
           4.38
                ];

Sagitta_Ascension = [19.9792,
                     19.7897,
                     19.6681,
                     19.6839
                          ];
                       
Sagitta_Declination = [19.49,
                       18.53,
                       18.01,
                       17.48
                            ];
                         
Sagitta_Asc = [ for (i=[0:len(Sagitta_Ascension)-1]) (Sagitta_Ascension[i]*360/24)]; 
Sagitta_Dec = [ for (i=[0:len(Sagitta_Declination)-1]) (r_Equator*tan(45-(Sagitta_Declination[i])/2))];
   

module Sagitta(){
    for (i = [0:len(Sagitta)-1]){
        rotate([0,0,90+Sagitta_Asc[i]])translate([0,Sagitta_Dec[i]])Star_Climate(r_Stars/ln(Sagitta[i]+lnStar));
    }
}

module Sagitta_Constellation(){
    Star1 = [Sagitta_Declination[0],
             Sagitta_Declination[1],
             Sagitta_Declination[1]
            ];    
    Rot1 = [Sagitta_Ascension[0],
            Sagitta_Ascension[1],
            Sagitta_Ascension[1]
           ];
    Star2 = [Sagitta_Declination[1],
             Sagitta_Declination[2],
             Sagitta_Declination[3]
            ];

    Rot2 = [Sagitta_Ascension[1],
            Sagitta_Ascension[2],
            Sagitta_Ascension[3]
           ];
    
    for ( i = [0 : 2]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}





// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //   Sagittarius  // // // // // // // // // 
    
Sagittarius = [1.79,
               2.05,
               2.60,
               2.72,
               2.82,
                   2.88,
                   2.98,
                   3.10,
                   3.17,
                   3.32,
                       3.52,
                       3.76,
                       3.84,
                       3.92,
                       3.96,
                           3.96,
                           4.12,
                           4.27,
                           4.37,
                           4.43,
                               4.52,
                               4.53,
                               4.54,
                               4.55,
                               4.59
            ];

Sagittarius_Ascension = [18.4028,
                         18.9208,
                         19.0433,
                         18.3497,
                         18.4661,
                             19.1625,
                             18.0967,
                             18.2936,
                             18.7608,
                             19.1156,
                                 18.9619,
                                 19.0778,
                                 18.2292,
                                 19.3611,
                                 19.3772,
                                     19.3981,
                                     19.9208,
                                     19.3869,
                                     19.9956,
                                     20.0442,
                                         19.3619,
                                         17.7925,
                                         19.9489,
                                         18.1344,
                                         19.6117 
                       ];
                       
Sagittarius_Declination = [-34.38,
                           -26.30,
                           -29.88,
                           -29.82,
                           -25.42,
                               -21.02,
                               -30.42,
                               -36.76,
                               -26.99,
                               -27.67,
                                   -21.11,
                                   -21.74,
                                   -21.06,
                                   -17.85,
                                   -44.46,
                                       -40.62,
                                       -41.87,
                                       -44.80,
                                       -35.28,
                                       -27.71,
                                           -15.96,
                                           -27.83,
                                           -27.17,
                                           -27.46,
                                           -24.88
                         ];
                         
Sagittarius_Asc = [ for (i=[0:len(Sagittarius_Ascension)-1]) (Sagittarius_Ascension[i]*360/24)]; 
Sagittarius_Dec = [ for (i=[0:len(Sagittarius_Declination)-1]) (r_Equator*tan(45-(Sagittarius_Declination[i])/2))];
   

module Sagittarius(){
    for (i = [0:len(Sagittarius)-1]){
        rotate([0,0,90+Sagittarius_Asc[i]])translate([0,Sagittarius_Dec[i]])Star_Climate(r_Stars/ln(Sagittarius[i]+lnStar));
    }
}

module Sagittarius_Constellation(){
    Star1 = [Sagittarius_Declination[9], 
             Sagittarius_Declination[1], 
             Sagittarius_Declination[8], 
             Sagittarius_Declination[2],
    
             Sagittarius_Declination[8], 
             Sagittarius_Declination[4], 
             Sagittarius_Declination[3],
    
             Sagittarius_Declination[3], 
             Sagittarius_Declination[6],
             Sagittarius_Declination[0],
    
             Sagittarius_Declination[0], 
    
             Sagittarius_Declination[0],
    
             Sagittarius_Declination[4],
    
             Sagittarius_Declination[1], 
             Sagittarius_Declination[10], 
             Sagittarius_Declination[11], 
             Sagittarius_Declination[5],
    
             Sagittarius_Declination[9], 
             Sagittarius_Declination[24], 
             Sagittarius_Declination[22], 
             Sagittarius_Declination[19], 
             Sagittarius_Declination[18], 
             Sagittarius_Declination[16], 
             Sagittarius_Declination[16]
            ];    
            
    Rot1 = [Sagittarius_Ascension[9], 
            Sagittarius_Ascension[1], 
            Sagittarius_Ascension[8], 
            Sagittarius_Ascension[2],  
            
            Sagittarius_Ascension[8], 
            Sagittarius_Ascension[4], 
            Sagittarius_Ascension[3],
            
            Sagittarius_Ascension[3], 
            Sagittarius_Ascension[6], 
            Sagittarius_Ascension[0],
            
            Sagittarius_Ascension[0], 
            
            Sagittarius_Ascension[0], 
            
            Sagittarius_Ascension[4], 
            
            Sagittarius_Ascension[1],
            Sagittarius_Ascension[10], 
            Sagittarius_Ascension[11], 
            Sagittarius_Ascension[5],
    
            Sagittarius_Ascension[9], 
            Sagittarius_Ascension[24], 
            Sagittarius_Ascension[22], 
            Sagittarius_Ascension[19], 
            Sagittarius_Ascension[18], 
            Sagittarius_Ascension[16], 
            Sagittarius_Ascension[16]
           ];
           
    Star2 = [Sagittarius_Declination[1], 
             Sagittarius_Declination[8], 
             Sagittarius_Declination[2], 
             Sagittarius_Declination[9],
             
             Sagittarius_Declination[4], 
             Sagittarius_Declination[3], 
             Sagittarius_Declination[8], 
             
             Sagittarius_Declination[6], 
             Sagittarius_Declination[0],
             Sagittarius_Declination[3],
             
             Sagittarius_Declination[7],
             
             Sagittarius_Declination[2], 
             
             Sagittarius_Declination[12], 
             
             Sagittarius_Declination[10],
             Sagittarius_Declination[11], 
             Sagittarius_Declination[5],
             Sagittarius_Declination[13],
    
             Sagittarius_Declination[24], 
             Sagittarius_Declination[22], 
             Sagittarius_Declination[19], 
             Sagittarius_Declination[18], 
             Sagittarius_Declination[16], 
             Sagittarius_Declination[14],
             Sagittarius_Declination[15]
            ];

    Rot2 = [Sagittarius_Ascension[1], 
            Sagittarius_Ascension[8], 
            Sagittarius_Ascension[2], 
            Sagittarius_Ascension[9],
            
            Sagittarius_Ascension[4], 
            Sagittarius_Ascension[3], 
            Sagittarius_Ascension[8],
            
            Sagittarius_Ascension[6], 
            Sagittarius_Ascension[0],
            Sagittarius_Ascension[3],
            
            Sagittarius_Ascension[7],
            
            Sagittarius_Ascension[2], 
            
            Sagittarius_Ascension[12],
            
            Sagittarius_Ascension[10],
            Sagittarius_Ascension[11], 
            Sagittarius_Ascension[5], 
            Sagittarius_Ascension[13],
    
            Sagittarius_Ascension[24], 
            Sagittarius_Ascension[22], 
            Sagittarius_Ascension[19], 
            Sagittarius_Ascension[18], 
            Sagittarius_Ascension[16], 
            Sagittarius_Ascension[14],
            Sagittarius_Ascension[15]
           ];
    
    for ( i = [0 : 23]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}






// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // //    Scorpius    // // // // // // // // // // 
    
Scorpius = [0.91,
            1.62,
            1.86,
            2.29,
            2.29,
                2.39,
                2.62,
                2.70,
                2.82,
                2.89,
                    2.90,
                    2.99,
                    3.00,
                    3.19,
                    3.32,
                        3.56,
                        3.62,
                        3.87,
                        3.93,
                        4.00
                ];

Scorpius_Ascension = [16.4900,
                      17.5600,
                      17.6219,
                      16.0056,
                      16.8361,
                          17.7081,
                          16.0906,
                          17.5125,
                          16.5978,
                          15.9808,
                              16.3531,
                              17.7931,
                              16.8644,
                              17.8308,
                              17.2025,
                                  16.8722,
                                  16.9097,
                                  15.9481,
                                  16.1133,
                                  16.1997
                          ];
                       
Scorpius_Declination = [-26.43,
                        -37.10,
                        -43.00,
                        -22.62,
                        -34.29,
                            -39.03,
                            -19.81,
                            -37.29,
                            -28.22,
                            -26.11,
                                -25.59,
                                -40.13,
                                -38.05,
                                -37.04,
                                -43.24,
                                    -38.02,
                                    -42.36,
                                    -29.21,
                                    -20.67,
                                    -19.46
                            ];
                         
Scorpius_Asc = [ for (i=[0:len(Scorpius_Ascension)-1]) (Scorpius_Ascension[i]*360/24)]; 
Scorpius_Dec = [ for (i=[0:len(Scorpius_Declination)-1]) (r_Equator*tan(45-(Scorpius_Declination[i])/2))];
   

module Scorpius(){
    for (i = [0:len(Scorpius)-1]){
        rotate([0,0,90+Scorpius_Asc[i]])translate([0,Scorpius_Dec[i]])Star_Climate(r_Stars/ln(Scorpius[i]+lnStar));
    }
}

module Scorpius_Constellation(){
    Star1 = [Scorpius_Declination[1],
             Scorpius_Declination[7],
             Scorpius_Declination[5],
             Scorpius_Declination[11],
             Scorpius_Declination[2],
             Scorpius_Declination[14],
             Scorpius_Declination[16],
             Scorpius_Declination[12],
             Scorpius_Declination[4],
             Scorpius_Declination[8],
             Scorpius_Declination[0],
             Scorpius_Declination[0],
             Scorpius_Declination[0]
            ];    
    Rot1 = [Scorpius_Ascension[1],
            Scorpius_Ascension[7],
            Scorpius_Ascension[5],
            Scorpius_Ascension[11],
            Scorpius_Ascension[2],
            Scorpius_Ascension[14],
            Scorpius_Ascension[16],
            Scorpius_Ascension[12],
            Scorpius_Ascension[4],
            Scorpius_Ascension[8],
            Scorpius_Ascension[0],
            Scorpius_Ascension[0],
            Scorpius_Ascension[0]
           ];
    Star2 = [Scorpius_Declination[7],
             Scorpius_Declination[5],
             Scorpius_Declination[11],
             Scorpius_Declination[2],
             Scorpius_Declination[14],
             Scorpius_Declination[16],
             Scorpius_Declination[12],
             Scorpius_Declination[4],
             Scorpius_Declination[8],
             Scorpius_Declination[0],
             Scorpius_Declination[9],
             Scorpius_Declination[3],
             Scorpius_Declination[6]
            ];

    Rot2 = [Scorpius_Ascension[7],
            Scorpius_Ascension[5],
            Scorpius_Ascension[11],
            Scorpius_Ascension[2],
            Scorpius_Ascension[14],
            Scorpius_Ascension[16],
            Scorpius_Ascension[12],
            Scorpius_Ascension[4],
            Scorpius_Ascension[8],
            Scorpius_Ascension[0],
            Scorpius_Ascension[9],
            Scorpius_Ascension[3],
            Scorpius_Ascension[6]
           ];
    
    for ( i = [0 : 12]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}





// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // Sculptor // // // // // // // // // // // 
    
Sculptor = [4.30,
            4.38,
            4.41,
            4.59,
            4.86
                ];

Sculptor_Ascension = [0.9767,
                      23.5494,
                      23.3136,
                      23.8153,
                      0.4653
                          ];
                       
Sculptor_Declination = [-29.36,
                        -37.82,
                        -32.53,
                        -28.13,
                        -33.01
                            ];
                         
Sculptor_Asc = [ for (i=[0:len(Sculptor_Ascension)-1]) (Sculptor_Ascension[i]*360/24)]; 
Sculptor_Dec = [ for (i=[0:len(Sculptor_Declination)-1]) (r_Equator*tan(45-(Sculptor_Declination[i])/2))];
   

module Sculptor(){
    for (i = [0:len(Sculptor)-1]){
        rotate([0,0,90+Sculptor_Asc[i]])translate([0,Sculptor_Dec[i]])Star_Climate(r_Stars/ln(Sculptor[i]+lnStar));
    }
}

module Sculptor_Constellation(){
    Star1 = [Sculptor_Declination[0],
             Sculptor_Declination[3],
             Sculptor_Declination[2]
            ];    
    Rot1 = [Sculptor_Ascension[0],
            Sculptor_Ascension[3],
            Sculptor_Ascension[2]
           ];
    Star2 = [Sculptor_Declination[3],
             Sculptor_Declination[2],
             Sculptor_Declination[1]
            ];

    Rot2 = [Sculptor_Ascension[3],
            Sculptor_Ascension[2],
            Sculptor_Ascension[1]
           ];
    
    for ( i = [0 : 2]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}




// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // Serpens  // // // // // // // // // // // 
    
Serpens = [2.63,
           3.23,
           3.54,
           3.54,
           3.65,
               3.71,
               5.20,
               4.09,
               3.80,
               4.24,
                    4.32,
                    4.42,
                    4.51,
                    4.62,
                    4.62,
                        3.00
                ];

Serpens_Ascension = [15.7378,
                     18.3550,
                     15.8269,
                     17.6264,
                     15.7697,
                         15.8467,
                         15.9406,
                         15.8122,
                         15.5800,
                         17.6900,
                             17.3469,
                             15.7739,
                             15.6925,
                             18.0078,
                             18.9369,
                                 16.2611
                          ];
                       
Serpens_Declination = [6.43,
                       -2.90,
                       -3.43,
                       -15.39,
                       15.42,
                           4.48,
                           15.66,
                           18.14,
                           10.54,
                           -12.88,
                               -12.85,
                               7.35,
                               19.67,
                               -3.69,
                               4.20,
                                   -3.76
                            ];
                         
Serpens_Asc = [ for (i=[0:len(Serpens_Ascension)-1]) (Serpens_Ascension[i]*360/24)]; 
Serpens_Dec = [ for (i=[0:len(Serpens_Declination)-1]) (r_Equator*tan(45-(Serpens_Declination[i])/2))];
   

module Serpens(){
    for (i = [0:len(Serpens)-1]){
        rotate([0,0,90+Serpens_Asc[i]])translate([0,Serpens_Dec[i]])Star_Climate(r_Stars/ln(Serpens[i]+lnStar));
    }
}

module Serpens_Constellation(){
    Star1 = [Serpens_Declination[4],
             Serpens_Declination[6],
             Serpens_Declination[7],
             Serpens_Declination[12],
             Serpens_Declination[4],
             Serpens_Declination[8],
             Serpens_Declination[0],
             Serpens_Declination[5],
             Serpens_Declination[2],
    
             Serpens_Declination[10],
             Serpens_Declination[3],
             Serpens_Declination[9],
             Serpens_Declination[1]
            ];    
    Rot1 = [Serpens_Ascension[4],
            Serpens_Ascension[6],
            Serpens_Ascension[7],
            Serpens_Ascension[12],
            Serpens_Ascension[4],
            Serpens_Ascension[8],
            Serpens_Ascension[0],
            Serpens_Ascension[5],
            Serpens_Ascension[2],
            
            Serpens_Ascension[10],
            Serpens_Ascension[3],
            Serpens_Ascension[9],
            Serpens_Ascension[1]
           ];
    Star2 = [Serpens_Declination[6],
             Serpens_Declination[7],
             Serpens_Declination[12],
             Serpens_Declination[4],
             Serpens_Declination[8],
             Serpens_Declination[0],
             Serpens_Declination[5],
             Serpens_Declination[2],
             Serpens_Declination[15],
             
             Serpens_Declination[3],
             Serpens_Declination[9],
             Serpens_Declination[1],
             Serpens_Declination[14]
            ];

    Rot2 = [Serpens_Ascension[6],
            Serpens_Ascension[7],
            Serpens_Ascension[12],
            Serpens_Ascension[4],
            Serpens_Ascension[8],
            Serpens_Ascension[0],
            Serpens_Ascension[5],
            Serpens_Ascension[2],
            Serpens_Ascension[15],
            
            Serpens_Ascension[3],
            Serpens_Ascension[9],
            Serpens_Ascension[1],
            Serpens_Ascension[14]
           ];
    
    for ( i = [0 : 12]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}





// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // // Sextans  // // // // // // // // // // // 
    
Sextans = [4.48,
           5.07,
           5.08,
           5.19
                ];

Sextans_Ascension = [10.1322,
                     9.8750,
                     10.5047,
                     10.4911
                          ];
                       
Sextans_Declination = [-0.37,
                       -8.10,
                       -0.64,
                       -2.74
                            ];
                         
Sextans_Asc = [ for (i=[0:len(Sextans_Ascension)-1]) (Sextans_Ascension[i]*360/24)]; 
Sextans_Dec = [ for (i=[0:len(Sextans_Declination)-1]) (r_Equator*tan(45-(Sextans_Declination[i])/2))];
   

module Sextans(){
    for (i = [0:len(Sextans)-1]){
        rotate([0,0,90+Sextans_Asc[i]])translate([0,Sextans_Dec[i]])Star_Climate(r_Stars/ln(Sextans[i]+lnStar));
    }
}

module Sextans_Constellation(){
    Star1 = [Sextans_Declination[3],
             Sextans_Declination[2],
             Sextans_Declination[0]
            ];    
    Rot1 = [Sextans_Ascension[3],
            Sextans_Ascension[2],
            Sextans_Ascension[0]
           ];
    Star2 = [Sextans_Declination[2],
             Sextans_Declination[0],
             Sextans_Declination[1]
            ];

    Rot2 = [Sextans_Ascension[2],
            Sextans_Ascension[0],
            Sextans_Ascension[1]
           ];
    
    for ( i = [0 : 2]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}






// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //  Scutum  // // // // // // // // // // // 
    
Scutum = [3.85,
          4.22,
          4.66,
          4.67,
          4.70
                ];

Scutum_Ascension = [18.5867,
                    18.7861,
                    18.3942,
                    18.4864,
                    18.7044
                          ];
                       
Scutum_Declination = [-8.24,
                      -4.75,
                      -8.93,
                      -14.60,
                      -9.05
                            ];
                         
Scutum_Asc = [ for (i=[0:len(Scutum_Ascension)-1]) (Scutum_Ascension[i]*360/24)]; 
Scutum_Dec = [ for (i=[0:len(Scutum_Declination)-1]) (r_Equator*tan(45-(Scutum_Declination[i])/2))];
   

module Scutum(){
    for (i = [0:len(Scutum)-1]){
        rotate([0,0,90+Scutum_Asc[i]])translate([0,Scutum_Dec[i]])Star_Climate(r_Stars/ln(Scutum[i]+lnStar));
    }
}

module Scutum_Constellation(){
    Star1 = [Scutum_Declination[0],
             Scutum_Declination[3],
             Scutum_Declination[4],
             Scutum_Declination[1]
            ];    
    Rot1 = [Scutum_Ascension[0],
            Scutum_Ascension[3],
            Scutum_Ascension[4],
            Scutum_Ascension[1]
           ];
    Star2 = [Scutum_Declination[3],
             Scutum_Declination[4],
             Scutum_Declination[1],
             Scutum_Declination[0]
            ];

    Rot2 = [Scutum_Ascension[3],
            Scutum_Ascension[4],
            Scutum_Ascension[1],
            Scutum_Ascension[0]
           ];
    
    for ( i = [0 : 3]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}


// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //  Taurus  // // // // // // // // // // // 
    
Taurus = [0.87,
          1.65,
          2.85,
          2.97,
          3.40,
              3.41,
              3.53,
              3.61,
              3.62,
              3.65,
                  3.72,
                  3.73,
                  3.77,
                  3.84,
                  3.87,
                      3.91,
                      4.14,
                      4.21,
                      4.25,
                      4.27,
                          4.27,
                          4.27,
                          4.28,
                          4.29,
                          4.30,
                              4.30,
                              4.32,
                              4.36,
                              4.48,
                              4.56
                ];

Taurus_Ascension = [4.5986,
                    5.4381,
                    3.7914,
                    5.6272,
                    4.4775,
                        4.0111,
                        4.4767,
                        3.4133,
                        3.8192,
                        4.3297,
                            3.7478,
                            3.4528,
                            4.3822,
                            4.4761,
                            3.7636,
                                4.0525,
                                3.5144,
                                3.7719,
                                4.4228,
                                4.5942,
                                    4.6358,
                                    4.7039,
                                    4.4383,
                                    3.6144,
                                    3.7533,
                                       4.4247,
                                       5.5367,
                                       4.0781,
                                       4.4389,
                                       5.8886
                          ];
                       
Taurus_Declination = [16.51,
                      28.61,
                      24.11,
                      21.14,
                      15.87,
                          12.49,
                          19.18,
                          9.03,
                          24.05,
                          15.63,
                              24.11,
                              9.73,
                              17.54,
                              15.96,
                              24.37,
                                  5.99,
                                  12.94,
                                  23.95,
                                  22.29,
                                  10.16,
                                      12.51,
                                      22.96,
                                      22.81,
                                      0.40,
                                      24.47,
                                          17.93,
                                          18.59,
                                          22.08,
                                          15.62,
                                          27.61
                            ];
                         
Taurus_Asc = [ for (i=[0:len(Taurus_Ascension)-1]) (Taurus_Ascension[i]*360/24)]; 
Taurus_Dec = [ for (i=[0:len(Taurus_Declination)-1]) (r_Equator*tan(45-(Taurus_Declination[i])/2))];
   

module Taurus(){
    for (i = [0:len(Taurus)-1]){
        rotate([0,0,90+Taurus_Asc[i]])translate([0,Taurus_Dec[i]])Star_Climate(r_Stars/ln(Taurus[i]+lnStar));
    }
}

module Taurus_Constellation(){
    Star1 = [Taurus_Declination[0],
             Taurus_Declination[4],
             Taurus_Declination[9],
             Taurus_Declination[12],
             Taurus_Declination[6],
    
             Taurus_Declination[0],
    
             Taurus_Declination[12],
    
             Taurus_Declination[6],
             Taurus_Declination[22],
    
             Taurus_Declination[9],
             Taurus_Declination[5]
            ];    
    Rot1 = [Taurus_Ascension[0],
            Taurus_Ascension[4],
            Taurus_Ascension[9],
            Taurus_Ascension[12],
            Taurus_Ascension[6],
            
            Taurus_Ascension[0],
            
            Taurus_Ascension[12],
            
            Taurus_Ascension[6],
            Taurus_Ascension[22],
            
            Taurus_Ascension[9],
            Taurus_Ascension[5]
           ];
    Star2 = [Taurus_Declination[4],
             Taurus_Declination[9],
             Taurus_Declination[12],
             Taurus_Declination[6],
             Taurus_Declination[0],
             
             Taurus_Declination[3],
             
             Taurus_Declination[8],
             
             Taurus_Declination[22],
             Taurus_Declination[1],
             
             Taurus_Declination[5],
             Taurus_Declination[7]
            ];

    Rot2 = [Taurus_Ascension[4],
            Taurus_Ascension[9],
            Taurus_Ascension[12],
            Taurus_Ascension[6],
            Taurus_Ascension[0],
            
            Taurus_Ascension[3],
            
            Taurus_Ascension[8],
            
            Taurus_Ascension[22],
            Taurus_Ascension[1],
            
            Taurus_Ascension[5],
            Taurus_Ascension[7]
           ];
    
    for ( i = [0 : 10]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}




// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // //   Triangulum   // // // // // // // // // // 
    
Triangulum = [3.00,
              3.42,
              4.03,
              4.84,
              4.94,
         ];

Triangulum_Ascension = [2.1589,
                        1.8844,
                        2.2883,
                        2.2839,
                        2.2061
                   ];
                       
Triangulum_Declination = [35.00,
                          29.58,
                          33.85,
                          34.22,
                          30.30
                     ];
                         
Triangulum_Asc = [ for (i=[0:len(Triangulum_Ascension)-1]) (Triangulum_Ascension[i]*360/24)]; 
Triangulum_Dec = [ for (i=[0:len(Triangulum_Declination)-1]) (r_Equator*tan(45-(Triangulum_Declination[i])/2))];
   

module Triangulum(){
    for (i = [0:len(Triangulum)-1]){
        rotate([0,0,90+Triangulum_Asc[i]])translate([0,Triangulum_Dec[i]])Star_Climate(r_Stars/ln(Triangulum[i]+lnStar));
    }
}

module Triangulum_Constellation(){
    Star1 = [Triangulum_Declination[1], 
             Triangulum_Declination[0], 
             Triangulum_Declination[2]
    

            ];    
    Rot1 = [Triangulum_Ascension[1], 
            Triangulum_Ascension[0], 
            Triangulum_Ascension[2]
    

           ];
    Star2 = [Triangulum_Declination[0], 
             Triangulum_Declination[2], 
             Triangulum_Declination[1]
             
            ];

    Rot2 = [Triangulum_Ascension[0], 
            Triangulum_Ascension[2], 
            Triangulum_Ascension[1]

           ];
    
    for ( i = [0 : 2]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}




// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //  Ursa Major // // // // // // // // // // 
    
UrsaMajor = [1.77,
             2.4,
             2.4,
             3.3,
             1.8,
             2.1,
             1.9,
             3.84,
             3.16,
             3.45,
             3.14,
             3.72,
             3.5,
             3.84,
             4.56,
             3.27,
             3.56,
             3.19
            ];

UrsaMajor_Ascension = [11.0628,
                       11.0306,
                       11.8969,
                       12.2569,
                       12.9003,
                       13.3986,
                       13.7922,
                       11.7900,
                       11.1850,
                       10.3106,
                       10.3975,
                       9.5589,
                       8.5397,
                       9.8800,
                       9.8975,
                       9.5761,
                       9.0894,
                       9.0158
                       ];
                       
UrsaMajor_Declination = [61.75,
                         56.38,
                         53.69,
                         57.03,
                         55.96,
                         54.92,
                         49.31,
                         47.64,
                         44.36,
                         42.79,
                         41.37,
                         62.95,
                         60.63,
                         58.92,
                         53.95,
                         51.56,
                         47.06,
                         47.94
                         ];
                         
UrsaMajor_Asc = [ for (i=[0:len(UrsaMajor_Ascension)-1]) (UrsaMajor_Ascension[i]*360/24)]; 
UrsaMajor_Dec = [ for (i=[0:len(UrsaMajor_Declination)-1]) (r_Equator*tan(45-(UrsaMajor_Declination[i])/2))];
   

module UrsaMajor(){
    for (i = [0:len(UrsaMajor)-1]){
        rotate([0,0,90+UrsaMajor_Asc[i]])translate([0,UrsaMajor_Dec[i]])Star_Climate(r_Stars/ln(UrsaMajor[i]+lnStar));
    }
}

module UrsaMajor_Constellation(){
    Star1 = [UrsaMajor_Declination[0], 
             UrsaMajor_Declination[1], 
             UrsaMajor_Declination[2], 
             UrsaMajor_Declination[3], 
             UrsaMajor_Declination[0],
             UrsaMajor_Declination[4], 
             UrsaMajor_Declination[5],
    
             UrsaMajor_Declination[0], 
             UrsaMajor_Declination[11], 
             UrsaMajor_Declination[12], 
             UrsaMajor_Declination[13], 
             UrsaMajor_Declination[13], 
    
             UrsaMajor_Declination[13], 
             UrsaMajor_Declination[14], 
             UrsaMajor_Declination[15], 
             UrsaMajor_Declination[15],
    
             UrsaMajor_Declination[2], 
             UrsaMajor_Declination[7], 
             UrsaMajor_Declination[8], 
             UrsaMajor_Declination[8]  
            ];    
    Rot1 = [UrsaMajor_Ascension[0], 
            UrsaMajor_Ascension[1], 
            UrsaMajor_Ascension[2], 
            UrsaMajor_Ascension[3], 
            UrsaMajor_Ascension[0],
            UrsaMajor_Ascension[4], 
            UrsaMajor_Ascension[5],
    
            UrsaMajor_Ascension[0], 
            UrsaMajor_Ascension[11],
            UrsaMajor_Ascension[12], 
            UrsaMajor_Ascension[13], 
            UrsaMajor_Ascension[13],
            
            UrsaMajor_Ascension[13],
            UrsaMajor_Ascension[14], 
            UrsaMajor_Ascension[15],  
            UrsaMajor_Ascension[15],
    
            UrsaMajor_Ascension[2], 
            UrsaMajor_Ascension[7], 
            UrsaMajor_Ascension[8], 
            UrsaMajor_Ascension[8]
           
           ];
    Star2 = [UrsaMajor_Declination[1], 
             UrsaMajor_Declination[2], 
             UrsaMajor_Declination[3], 
             UrsaMajor_Declination[4], 
             UrsaMajor_Declination[3], 
             UrsaMajor_Declination[5], 
             UrsaMajor_Declination[6],
    
             UrsaMajor_Declination[11], 
             UrsaMajor_Declination[12], 
             UrsaMajor_Declination[13], 
             UrsaMajor_Declination[11], 
             UrsaMajor_Declination[1],
    
             UrsaMajor_Declination[14], 
             UrsaMajor_Declination[15], 
             UrsaMajor_Declination[16], 
             UrsaMajor_Declination[17],
    
             UrsaMajor_Declination[7], 
             UrsaMajor_Declination[8], 
             UrsaMajor_Declination[9], 
             UrsaMajor_Declination[10]   
            ];

    Rot2 = [UrsaMajor_Ascension[1], 
            UrsaMajor_Ascension[2], 
            UrsaMajor_Ascension[3], 
            UrsaMajor_Ascension[4], 
            UrsaMajor_Ascension[3], 
            UrsaMajor_Ascension[5], 
            UrsaMajor_Ascension[6],
    
            UrsaMajor_Ascension[11], 
            UrsaMajor_Ascension[12],
            UrsaMajor_Ascension[13], 
            UrsaMajor_Ascension[11],  
            UrsaMajor_Ascension[1],
    
            UrsaMajor_Ascension[14],
            UrsaMajor_Ascension[15], 
            UrsaMajor_Ascension[16],  
            UrsaMajor_Ascension[17],
    
            UrsaMajor_Ascension[7], 
            UrsaMajor_Ascension[8], 
            UrsaMajor_Ascension[9], 
            UrsaMajor_Ascension[10]  
           ];
    
    for ( i = [0 : 6]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
    for ( i = [6 : 19]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation2);
    }  
}







// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //  Ursa Minor // // // // // // // // // // 
    
UrsaMinor = [1.97,
             4.34,
             4.34,
             4.2,
             5.09,
             3.03,
             2.2
            ];

UrsaMinor_Ascension = [3.0642,
                       17.4011,
                       16.7242,
                       15.7203,
                       16.2797,
                       15.3453,
                       14.8447
                       ];
                       
UrsaMinor_Declination = [89.38,
                         86.56,
                         81.98,
                         77.71,
                         75.69,
                         71.74,
                         74.05
                         ];
                         
UrsaMinor_Asc = [ for (i=[0:len(UrsaMinor_Ascension)-1]) (UrsaMinor_Ascension[i]*360/24)]; 
UrsaMinor_Dec = [ for (i=[0:len(UrsaMinor_Declination)-1]) (r_Equator*tan(45-(UrsaMinor_Declination[i])/2))];
   

module UrsaMinor(){
    for (i = [0:len(UrsaMinor)-1]){
        rotate([0,0,90+UrsaMinor_Asc[i]])translate([0,UrsaMinor_Dec[i]])Star_Climate(r_Stars/ln(UrsaMinor[i]+lnStar));
    }
}

module UrsaMinor_Constellation(){
    Star1 = [UrsaMinor_Declination[0], 
             UrsaMinor_Declination[1], 
             UrsaMinor_Declination[2], 
             UrsaMinor_Declination[3], 
             UrsaMinor_Declination[4], 
             UrsaMinor_Declination[5], 
             UrsaMinor_Declination[3]
            ];    
    Rot1 = [UrsaMinor_Ascension[0], 
            UrsaMinor_Ascension[1], 
            UrsaMinor_Ascension[2], 
            UrsaMinor_Ascension[3], 
            UrsaMinor_Ascension[4], 
            UrsaMinor_Ascension[5], 
            UrsaMinor_Ascension[3]
    
           ];
    Star2 = [UrsaMinor_Declination[1], 
             UrsaMinor_Declination[2], 
             UrsaMinor_Declination[3], 
             UrsaMinor_Declination[4],  
             UrsaMinor_Declination[5], 
             UrsaMinor_Declination[6], 
             UrsaMinor_Declination[6] 
            ];

    Rot2 = [UrsaMinor_Ascension[1], 
            UrsaMinor_Ascension[2], 
            UrsaMinor_Ascension[3], 
            UrsaMinor_Ascension[4], 
            UrsaMinor_Ascension[5], 
            UrsaMinor_Ascension[6], 
            UrsaMinor_Ascension[6]
           ];
    
    for ( i = [0:6]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}



// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //    Virgo    // // // // // // // // // // 
    
Virgo = [0.98,
         2.74,
         2.85,
         3.38,
         3.39,
             3.59,
             3.68,
             3.73,
             3.87,
             3.89,
                4.04,
                4.07,
                4.12,
                4.18,
                4.23,
                    4.38,
                    4.39,
                    4.52,
                    4.65,
                    4.66
             ];

Virgo_Ascension = [13.4197,
                   12.6944,
                   13.0361,
                   13.5781,
                   12.9267,
                       11.8447,
                       12.6942,
                       14.7706,
                       14.7175,
                       12.3317,
                           11.7642,
                           14.2667,
                           12.0867,
                           14.2147,
                           14.0272,
                               13.1658,
                               15.0483,
                               14.3183,
                               12.0144,
                               12.6539           
                       ];
                       
Virgo_Declination = [-11.16,
                     -1.45,
                     10.96,
                     -0.59,
                     3.40,
                         1.77,
                         -1.45,
                         1.89,
                         -5.66,
                         -0.67,
                             6.53,
                             -6.00,
                             8.73,
                             -10.27,
                             1.54,
                                 -5.54,
                                 2.09,
                                 -13.37,
                                 6.61,
                                 -7.95
                         ];
                         
Virgo_Asc = [ for (i=[0:len(Virgo_Ascension)-1]) (Virgo_Ascension[i]*360/24)]; 
Virgo_Dec = [ for (i=[0:len(Virgo_Declination)-1]) (r_Equator*tan(45-(Virgo_Declination[i])/2))];
   

module Virgo(){
    for (i = [0:len(Virgo)-1]){
        rotate([0,0,90+Virgo_Asc[i]])translate([0,Virgo_Dec[i]])Star_Climate(r_Stars/ln(Virgo[i]+lnStar));
    }
}

module Virgo_Constellation(){
    Star1 = [Virgo_Declination[9], 
             Virgo_Declination[12], 
             Virgo_Declination[10], 
             Virgo_Declination[5], 
    
             Virgo_Declination[9], 
             Virgo_Declination[1], 
    
             Virgo_Declination[1],
             Virgo_Declination[4], 
    
             Virgo_Declination[1],
             Virgo_Declination[15], 
    
             Virgo_Declination[3],
             Virgo_Declination[14],
    
             Virgo_Declination[3],
             Virgo_Declination[11] 
            ];  
    
    Rot1 = [Virgo_Ascension[9],
            Virgo_Ascension[12],
            Virgo_Ascension[10],
            Virgo_Ascension[5],
            
            Virgo_Ascension[9],
            Virgo_Ascension[1],
    
            Virgo_Ascension[1],    
            Virgo_Ascension[4],
                
            Virgo_Ascension[1], 
            Virgo_Ascension[15],
            
            Virgo_Ascension[3],
            Virgo_Ascension[14],
            
            Virgo_Ascension[3],
            Virgo_Ascension[11]
           ];
           
    Star2 = [Virgo_Declination[12], 
             Virgo_Declination[10], 
             Virgo_Declination[5], 
             Virgo_Declination[9],
             
             Virgo_Declination[1], 
             Virgo_Declination[3], 
             
             Virgo_Declination[4],             
             Virgo_Declination[2],
                 
             Virgo_Declination[15],
             Virgo_Declination[0], 
                     
             Virgo_Declination[14],
             Virgo_Declination[7], 
                     
             Virgo_Declination[11],
             Virgo_Declination[8]
            ];

    Rot2 = [Virgo_Ascension[12],
            Virgo_Ascension[10],
            Virgo_Ascension[5],
            Virgo_Ascension[9],
            
            Virgo_Ascension[1],
            Virgo_Ascension[3],
            
            Virgo_Ascension[4],            
            Virgo_Ascension[2],
            
            Virgo_Ascension[15],
            Virgo_Ascension[0],
            
            Virgo_Ascension[14],
            Virgo_Ascension[7],
            
            Virgo_Ascension[11],
            Virgo_Ascension[8]
           ];
    
    for ( i = [0:13]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}




// // // // // // // // // // // // // // // // // // // // // // // // // 
// // // // // // // // // // //  Vulpecula  // // // // // // // // // // 
    
Vulpecula = [4.40,
             4.52
        ];

Vulpecula_Ascension = [19.4783,
                       20.2628
                  ];
                       
Vulpecula_Declination = [24.66,
                         27.81
                    ];
                         
Vulpecula_Asc = [ for (i=[0:len(Vulpecula_Ascension)-1]) (Vulpecula_Ascension[i]*360/24)]; 
Vulpecula_Dec = [ for (i=[0:len(Vulpecula_Declination)-1]) (r_Equator*tan(45-(Vulpecula_Declination[i])/2))];
   

module Vulpecula(){
    for (i = [0:len(Vulpecula)-1]){
        rotate([0,0,90+Vulpecula_Asc[i]])translate([0,Vulpecula_Dec[i]])Star_Climate(r_Stars/ln(Vulpecula[i]+lnStar));
    }
}

module Vulpecula_Constellation(){
    Star1 = [Vulpecula_Declination[0]
            ];    
    Rot1 = [Vulpecula_Ascension[0]
           ];
    Star2 = [Vulpecula_Declination[1]
            ];

    Rot2 = [Vulpecula_Ascension[1]
           ];
    
    for ( i = [0 : 0]){ 
        constellation(Star1[i], Star2[i], Rot1[i], Rot2[i], wConstellation1);
    }
}














