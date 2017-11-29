#include "colors.inc"
#include "rad_def.inc"
 
global_settings {
  //This setting is for alpha transparency to work properly.
  //Increase by a small amount if transparent areas appear dark.
   max_trace_level 15
   //adc_bailout 0,01
   assumed_gamma 1
 
   #local p_start=64/max(image_width,image_height);
   #local p_end_final=1/max(image_width,image_height);
radiosity {
     pretrace_start p_start
     pretrace_end   p_end_final
     count 800
     nearest_count 5
     error_bound 0.5
     recursion_limit 1
     low_error_factor .5
     gray_threshold 0.0
     minimum_reuse 0.015
     brightness 1
     adc_bailout 0.01/2
}
}

#include "PovLevel/Block_POV_geom.inc"
#include "PovLevel/QMBlock_POV_geom.inc"
#include "PovLevel/Flagpole_POV_geom.inc"
#include "PovLevel/Ground_POV_geom.inc"
#include "PovLevel/Tube_POV_geom.inc"
#include "PovLevel/Burg_POV_geom.inc"
#include "PovLevel/Flagpole_POV_geom.inc"

// Floor of the level
object{
    Ground_
	translate <15, 0, 0>
}	

// Tube

object{
	Tube_
	translate <12, 1, 0>
}

// Castle
object{
    Burg_ 
    rotate y*180
    translate <24.5, 2.2, 4>
}

// Flagpole
object{
	Flagpole_
	translate <20, 0, 0>
}

// Basic blocks
object{
    Block_
	translate <0, 2, 0>
}			

object{
    Block_
    translate <1.2, 2, 0>
}      

// Blocks with question mark	  
object{
    QMBlock_
    translate <0.6, 2, 0>
}	

object{
    QMBlock_
    translate <0.6, 4, 0>
}

// Basic blocks
object{
    Block_
	translate <15, 2, 0>
}			

object{
    Block_
    translate <16.2, 2, 0>
}      

// Blocks with question mark	  
object{
    QMBlock_
    translate <15.6, 2, 0>
}	

object{
    QMBlock_
    translate <15.6, 4, 0>
}			


  
       
       
background { color rgb <0.5, 0.5, 0.5>}			
			

camera {
  location <10, 30, -10>
  look_at <10, 0, 0>																																																												
}
