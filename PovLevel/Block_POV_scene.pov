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
//Block_POV_main.ini (initialization file - open this to render)
//Block_POV_scene.pov (scene setup of cameras, lights and geometry)
//Block_POV_geom.inc (geometry)
//Block_Block.inc (individual mesh)
//Block_POV_mat.inc (materials)
//Brick_Block.png
// 
//==================================================
//Model Statistics:
//Number of triangular faces..... 192
//Number of vertices............. 98
//Number of normals.............. 22
//Number of UV coordinates....... 150
//Number of lines................ 0
//Number of materials............ 1
//Number of groups/meshes........ 1
//Number of subdivision faces.... 0
//UV boundaries........ from u,v=(-0.0042,-0.001)
//                        to u,v=(1.0008,1.0009)
//Bounding Box....... from x,y,z=(-0.312997,-0.312997,-0.312997)
//                      to x,y,z=(0.312997,0.312997,0.312998)
//                 size dx,dy,dz=(0.625994,0.625994,0.625995)
//                  center x,y,z=(0,0,4.99999999986622E-7)
//                       diagonal 1.08425399058385
//Surface area................... 2.2606058544872
//             Smallest face area 0.000317579329369232
//              Largest face area 0.020242676153
//Memory allocated for geometry: 21 KBytes
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
#include "Block_POV_geom.inc" //Geometry
 
//CAMERA PoseRayCAMERA
camera {
        perspective
        up <0,1,0>
        right -x*image_width/image_height
        location <0,0,2.1685079811677>
        look_at <0,0,1.1685079811677>
        angle 32.9346087425027 // horizontal FOV angle
        rotate <0,0,28.4504243230212> //roll
        rotate <-27.3082374099415,0,0> //pitch
        rotate <0,-14.7984078005857,0> //yaw
        translate <0,0,4.99999999986622E-7>
        }
 
//PoseRay default Light attached to the camera
light_source {
              <0,0,2.1685079811677> //light position
              color rgb <1,1,1>*1.6
              parallel
              point_at <0,0,0>
              rotate <0,0,28.4504243230212> //roll
              rotate <-27.3082374099415,0,0> //elevation
              rotate <0,-14.7984078005857,0> //rotation
             }
 
//Background
background { color srgb <1,1,1>  }
 
//Assembled object that is contained in Block_POV_geom.inc with no SSLT components
object{
      Block_
      }
 
//restore the version used outside this file
#version Temp_version;
//==================================================
