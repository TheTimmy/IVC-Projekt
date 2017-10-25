include "colors.inc"

light_source { <500, 500, -1000> White }     

#declare HAIR = difference {
    cylinder {
        <0, 1, 0>, <0, 1, 0.2> 1
        pigment {
            Blue
	    }
    }
	cylinder {
		<0, 1.5, -2>, <0, 1.5, 2> 1
		pigment {      
			Blue
		}
	}
}

#declare MARIO = union {
    difference { // KOPF
    	sphere {			   
    		<0, 1, 0>, 1
    		pigment {
    			Green
    		}
    	}
        union { // Augen
            sphere {
                <0.4, 0.9, -0.8> 0.2
                pigment {
                    Yellow
                }
                scale y * 1.4
            }
            sphere {
                <-0.4, 0.9, -0.8> 0.2
                pigment {
                    Yellow
                }
                scale y * 1.4
            }       
        }
    }
	sphere { // NASE
		<0, 1, -1.1>, 0.3
		pigment {
			Red
		}
		scale 1.1*x + 0.9*y 
	}
	object { // Bard
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
}

object {
	MARIO
}
			
			
camera {
  location <4, 1, -5>
  look_at <0, 1, 0,>																																																												
} 

camera {
  location <0, 1, -5>
  look_at <0, 1, 0,>																																																												
}
