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



object{
      Block_
      }			
       
object{
      QMBlock_
      rotate y*180
      translate <0.6, 0, 0>
      }			

object{
      Block_
      translate <1.2, 0, 0>
      }			
       
       
background { color rgb <0.5, 0.5, 0.5>}			
			

camera {
  location <5, 5, -10>
  look_at <0, 0, 0,>																																																												
}
