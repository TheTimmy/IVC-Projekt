//wrap the file with the version
#local Temp_version = version;
#version 3.7;
//==================================================
//POV-Ray Main scene file
//==================================================
//This file has been created by PoseRay v3.13.29.645
//3D model to POV-Ray/Moray Converter.
//Author: FlyerX
//Email: flyerx_2000@yahoo.com
//Web: https://sites.google.com/site/poseray/
//==================================================
//Files needed to run the POV-Ray scene:
//Tube_POV_main.ini (initialization file - open this to render)
//Tube_POV_scene.pov (scene setup of cameras, lights and geometry)
//Tube_POV_geom.inc (geometry)
//Tube_Green.inc (individual mesh)
//Tube_POV_mat.inc (materials)
// 
//==================================================
//Model Statistics:
//Number of triangular faces..... 444
//Number of vertices............. 224
//Number of normals.............. 162
//Number of UV coordinates....... 0
//Number of lines................ 0
//Number of materials............ 1
//Number of groups/meshes........ 1
//Number of subdivision faces.... 0
//Bounding Box....... from x,y,z=(-0.631971,-0.870386,-0.631973)
//                      to x,y,z=(0.631976,0.480119,0.631973)
//                 size dx,dy,dz=(1.263947,1.350505,1.263946)
//                  center x,y,z=(2.50000000001638E-6,-0.1951335,0)
//                       diagonal 2.24030918954282
//Surface area................... 9.88416762046645
//             Smallest face area 0.000437654598601243
//              Largest face area 0.0518784222057877
//Memory allocated for geometry: 37 KBytes
// 
//==================================================
//IMPORTANT:
//This file was designed to run with the following command line options: 
// +W320 +H240 +FN +AM2 +A0.01 +r3 +Q9 +C -UA +MV3.7
//if you are not using an INI file copy and paste the text above to the command line box before rendering
 
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
#include "Tube_POV_geom.inc" //Geometry
 
//CAMERA PoseRayCAMERA
camera {
        perspective
        up <0,1,0>
        right -x*image_width/image_height
        location <2.11758236813575E-21,0,4.48061837908564>
        look_at <2.11758236813575E-21,0,3.48061837908564>
        angle 32.9346087425027 // horizontal FOV angle
        rotate <0,0,4.64887659430136> //roll
        rotate <-37.5145515156061,0,0> //pitch
        rotate <0,36.1069698107011,0> //yaw
        translate <2.50000000001638E-6,-0.1951335,0>
        }
 
//PoseRay default Light attached to the camera
light_source {
              <2.11758236813575E-21,0,4.48061837908564> //light position
              color rgb <1,1,1>*1.6
              parallel
              point_at <2.11758236813575E-21,0,0>
              rotate <0,0,4.64887659430136> //roll
              rotate <-37.5145515156061,0,0> //elevation
              rotate <0,36.1069698107011,0> //rotation
             }
 
//Background
background { color srgb <1,1,1>  }
 
//Assembled object that is contained in Tube_POV_geom.inc with no SSLT components
object{
      Tube_
      }
 
//restore the version used outside this file
#version Temp_version;
//==================================================
