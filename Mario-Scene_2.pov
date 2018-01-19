#declare Photons=off;
#declare Radiosity=off;

#include "colors.inc"
#include "Level.pov"

#declare mario_position = 0.0;
#declare mario_height = 0.0;
    
#macro SaveState()
       #fopen wfile "state.txt" write
       #write ( wfile, mario_position, ",", mario_height, ",")
       #fclose file
#end

#macro LoadState()
       #fopen rfile "state.txt" read
       #read ( rfile, mario_position ,mario_height)
       #fclose file
#end

#if (clock < 1)
    #declare walk = 0;
    #declare jump = 0;
    #declare smalljump = 0;
    #declare onblockjump = 1;
    #declare onblockjump_2 = 0;
    #declare jump_down = 0;
#end
#if (clock >= 1 & clock < 1.3)
    #declare walk = 1;
    #declare jump = 0;
    #declare smalljump = 0;
    #declare onblockjump = 0;
    #declare onblockjump_2 = 0;
    #declare jump_down = 0;
#end
#if (clock >= 1.3 & clock < 2.2)
    #declare walk = 0;
    #declare jump = 0;
    #declare smalljump = 0;
    #declare onblockjump = 0;
    #declare onblockjump_2 = 1;
    #declare jump_down = 0;
#end
#if (clock >= 2.2 & clock < 2.75)
    #declare walk = 1;
    #declare jump = 0;
    #declare smalljump = 0;
    #declare onblockjump = 0;
    #declare onblockjump_2 = 0;
    #declare jump_down = 0;
#end
#if (clock >= 2.75 & clock < 3.6)
    #declare walk = 0;
    #declare jump = 0;
    #declare smalljump = 0;
    #declare onblockjump = 0;
    #declare onblockjump_2 = 0;
    #declare jump_down = 1;
#end
#if (clock >= 3.6 & clock < 6)
    #declare walk = 1;
    #declare jump = 0;
    #declare smalljump = 0;
    #declare onblockjump = 0;
    #declare onblockjump_2 = 0;
    #declare jump_down = 0;
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
                texture{
                    pigment{
                        image_map{ png "./Images/greenEye.png"
                            map_type 0 // 0=planar, 1=spherical, 2=cylindrical, 5=torus
                            interpolate 2
                            // 0=none, 1=linear, 2=bilinear, 4=normalized distance
                            once // falls Bild nicht wiederholt werden soll.
                        }
                    } // end of image_map, end of pigment
                  finish { diffuse 0.9 phong 1}// end of finish
                  scale 0.4 translate<0.2,0.7,0> 
                }
                scale y * 1.4
            }
            sphere {
                <-0.4, 0.9, -0.8> 0.2
                pigment {
                    White
                }
                texture{
                    pigment{
                        image_map{ png "./Images/greenEye.png"
                            map_type 0 // 0=planar, 1=spherical, 2=cylindrical, 5=torus
                            interpolate 2
                            // 0=none, 1=linear, 2=bilinear, 4=normalized distance
                            once // falls Bild nicht wiederholt werden soll.
                        }
                    } // end of image_map, end of pigment
                  finish { diffuse 0.9 phong 1}// end of finish
                  scale 0.4 translate<-0.6,0.7,0>
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
				#if (jump | smalljump | onblockjump)
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
				#if (jump | smalljump | onblockjump)
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
				#if (jump | smalljump | onblockjump)
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
				#if (jump | smalljump | onblockjump)
				    rotate x * 30 * abs(sin(3.141529 * clock))
				#end
				translate <-0.45, -2.0, 0>
			}
		}
	}
	scale <0.17,0.17,0.17>
	translate<0,0.70,-9.8>	
};

// Macro for the adjustment of images
// for image_map with assumed_gamma = 1.0 ;
#macro Correct_Pigment_Gamma(Orig_Pig, New_G)
  #local Correct_Pig_fn =
      function{ pigment {Orig_Pig} }
  pigment{ average pigment_map{
   [function{ pow(Correct_Pig_fn(x,y,z).x, New_G)}
               color_map{[0 rgb 0][1 rgb<3,0,0>]}]
   [function{ pow(Correct_Pig_fn(x,y,z).y, New_G)}
               color_map{[0 rgb 0][1 rgb<0,3,0>]}]
   [function{ pow(Correct_Pig_fn(x,y,z).z, New_G)}
               color_map{[0 rgb 0][1 rgb<0,0,3>]}]
   }}
#end //
// "image_map" gamma corrected:
//    Correct_Pigment_Gamma(
//    pigment{ image_map{ jpeg "colors.jpg"}}
//    , Correct_Gamma)
//------------------------------------------------

#if (clock > 0)
    LoadState()
#end

object {
	MARIO
	#if (walk)
	    #declare mario_position = mario_position + -2.8 * clock_delta;
	    translate <0, mario_height,mario_position>
	#end
	#if (jump)
	    translate <0, mario_height + 3 * abs(sin(3.141529 * clock)),mario_position>
	#end
	#if (smalljump)
	    translate<0,mario_height + 0.5*abs(sin(3.141529 * clock)), mario_position>
	#end
	#if (onblockjump)
	    #declare mario_height = mario_height + 1.5*clock_delta;
	    #declare mario_position = mario_position + -1.5 * clock_delta;
	    translate <0, mario_height, mario_position> 
	#end
	#if (onblockjump_2)
	    #declare mario_height = mario_height + 1.0*clock_delta;
	    #declare mario_position = mario_position + -3.0 * clock_delta;
	    translate <0, mario_height, mario_position>
	#end
	#if (jump_down)
	    #declare mario_height = mario_height - 2.5*clock_delta;
	    #declare mario_position = mario_position + -1.5 * clock_delta;
	    translate <0, mario_height, mario_position>
	#end
}

SaveState()

object {
	LEVEL
	rotate<0,90,0>
}			

background { color rgb <0.3515, 0.6406, 1>}			
			
camera {            
  location <-5, 1, -15>
  look_at <0, 1, mario_position - 10>																																																												
}  
          

box{
 <-1, -1, -1>,
 < 1, 1, 1>
 texture{ uv_mapping
   pigment{
     image_map{ png "Skybox.png"
                map_type 0    // planar
                interpolate 2 // bilinear
                once //
              } //  end of image_map
    } // end of pigment
    //, 2.2) //, New_Gamma
    finish { ambient 1 diffuse 0 }
 } // end of texture
 translate <0, -0.2, 0>
 scale 10000 * 2048 / 1536
 rotate y*90
} // end of skybox --------------------

          
          
/*camera {
  location <10, 3, 5>
  look_at <0, 3, 0,>																																																												
}*/ 

/*camera {
  location <0, 1, -10>
  look_at <0, 0, 0,>																																																												
}*/
