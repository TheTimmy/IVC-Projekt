include "colors.inc"

#if (clock < 1)
    #declare walk = 1;
    #declare jump = 0;
#end
#if (clock >= 1 & clock < 2)
    #declare walk = 0;
    #declare jump = 1;
#end
#if (clock >= 2 & clock < 3)
    #declare walk = 1;
    #declare jump = 0;
#end

light_source { <500, 500, -1000> White }     

#declare SKINCOLOR = rgb <0.933, 0.811, 0.705>;

#declare HAIR = difference {
    cylinder {
        <0, 1, 0>, <0, 1, 0.2> 1
        pigment {
            Black
	    }
    }
	cylinder {
		<0, 1.5, -2>, <0, 1.5, 2> 1
		pigment {      
			Black
		}
	}
}

#declare MARIO = union {
    union { // KOPF
    	sphere {			   
    		<0, 1, 0>, 1
    		pigment {
    			SKINCOLOR
    		}
    	}
        union { // Augen
            sphere {
                <0.4, 0.9, -0.8> 0.2
                pigment {
                    White
                }
                scale y * 1.4
            }
            sphere {
                <-0.4, 0.9, -0.8> 0.2
                pigment {
                    White
                }
                scale y * 1.4
            }       
        }
    }
	sphere { // NASE
		<0, 1, -1.1>, 0.3
		pigment {
			SKINCOLOR
		}
		scale 1.1*x + 0.9*y 
	}
	object { // Bart
		HAIR
		scale y * 0.5
		translate y * 0.5 - z * 1.0
	}
	object { // Augenbrauen
	    HAIR
	    rotate z * 180 - y * 10
	    scale x * 0.3 + y * 0.5 * 0.3
	    translate x * -0.4 + y * 1.8 - z * 0.8
	}
	object { // Augenbrauen
	    HAIR
	    rotate z * 180 + y * 10
	    scale x * 0.3 + y * 0.5 * 0.3
	    translate x * 0.4 + y * 1.8 - z * 0.8
	}
	
	union{ // Zylinder
		cylinder { <0, 1.8, 0>, <0, 2.9, 0>, 0.8	
			pigment {
				Black
			}
		}
		difference{
			cylinder { <0, 1.8, 0>, <0, 2, 0>, 1.2	
				pigment {
					Black
				}
			}
			cylinder { <0, 11.85, -2>, <0, 11.85, 2>, 10				
				pigment {
					Black
				}
			}
		}
	}
	union { // koerper
		sphere {
			<0, -1.15, 0>, 1.25
			scale x * 0.95 + z * 0.95
			pigment {
				Red
			}
		}
		union { // Arme
			union { // Linker Arm
				cylinder { // Arm        
					<0.45, -0.45, 0> <2.25, -0.45, 0> 0.25       
					pigment {
						Red
					}
				}
				sphere { // Hand
					<0, 0, 0> 0.5
					scale y * 0.5 + z * 0.5
					translate <2.45, -0.45, 0>	
					pigment {
						White
					}
				}
				translate <-0.45, 0.45, 0>  
				rotate z * -20
				#if (walk)
				    rotate y * 20 * sin(2 * 3.141529 * clock)
				#end
				#if (jump)
				    rotate y * -30 * abs(sin(3.141529 * clock))
				    rotate z * -20 * abs(sin(3.141529 * clock))
				#end
				translate <0.45, -0.45, 0>
			}
			union { // Rechter Arm
				cylinder { // Arm
					<-0.45, -0.45, 0> <-2.25, -0.45, 0> 0.25
					pigment {
						Red
					}
				}
				sphere { // Hand
					<0, 0, 0> 0.5
					scale y * 0.5 + z * 0.5
					translate <-2.45, -0.45, 0>	
					pigment {
						White
					}
				}
                translate <0.45, 0.45, 0>
                rotate z * 20                        
                #if (walk)
				    rotate y * 20 * sin(2 * 3.141529 * clock)
				#end       
				#if (jump)
				    rotate y * -30 * abs(sin(3.141529 * clock))
				    rotate z * -80 * abs(sin(3.141529 * clock))
				#end
				translate <-0.45, -0.45, 0>
			}
		}
		union { // Beine
			union { // Rechtes Bein
				cylinder {
					<-0.45, -2.0, 0>, <-0.5, -3.8, 0> 0.4
					pigment {
						Blue
					}
				}
				cylinder { // Schuh
					<0.0, -3.8, 0> <0.0, -4.0, 0> 0.85
					scale x * 0.5      
					translate -x * 0.5 - z * 0.35
					pigment {
						Brown
					}
				}        
				translate <0.45, 2.0, 0>
				#if (walk)
				    rotate x * 20 * sin(2 * 3.141529 * clock)
				#end
				#if (jump)
				    rotate x * -30 * abs(sin(3.141529 * clock))
				#end
				translate <-0.45, -2.0, 0>
			}
			union { // Linkes Bein
				cylinder {
					<0.45, -2.0, 0>, <0.5, -3.8, 0> 0.4
					pigment {
						Blue
					}
				}
				cylinder { // Schuh
					<0.0, -3.8, 0> <0.0, -4.0, 0> 0.85
					scale x * 0.5      
					translate x * 0.5 - z * 0.35
					pigment {
						Brown
					}
				}
				translate <0.45, 2.0, 0>
				#if (walk)
				    rotate x * -20 * sin(2 * 3.141529 * clock)
				#end
				#if (jump)
				    rotate x * 30 * abs(sin(3.141529 * clock))
				#end
				translate <-0.45, -2.0, 0>
			}
		}
	}	
};

object {
	MARIO
	#if (walk)
	    translate <0, 0, -4 * clock>
	#end
	#if (jump)
	    translate <0, 3 * abs(sin(3.141529 * clock)),-4 * clock>
	#end
}
			

background { color rgb <0.5, 0.5, 0.5>}			
			
camera {
  location <20, 3, -15>
  look_at <0, 1, 0,>																																																												
} 

//camera {
//  location <0, 1, -10>
//  look_at <0, 0, 0,>																																																												
//}
