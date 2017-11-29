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
//Level_POV_main.ini (initialization file - open this to render)
//Level_POV_scene.pov (scene setup of cameras, lights and geometry)
//Level_POV_geom.inc (geometry)
//Level_Logo.inc (individual mesh)
//Level_Question.inc (individual mesh)
//Level_Block.inc (individual mesh)
//Level_Building.inc (individual mesh)
//Level_Metal.inc (individual mesh)
//Level_Green.inc (individual mesh)
//Level_Grass.inc (individual mesh)
//Level_POV_mat.inc (materials)
//Unihamburg-logo.png
//Question_Block.png
//Brick_Block.png
//Metal.jpg
//Grass.png
// 
//==================================================
//Model Statistics:
//Number of triangular faces..... 331606
//Number of vertices............. 165864
//Number of normals.............. 328169
//Number of UV coordinates....... 1080
//Number of lines................ 0
//Number of materials............ 7
//Number of groups/meshes........ 1
//Number of subdivision faces.... 0
//UV boundaries........ from u,v=(-0.0042,-0.001)
//                        to u,v=(1.0018,1.0024)
//Bounding Box....... from x,y,z=(-17.377327,-5.333755,-5.408854)
//                      to x,y,z=(13.19908,7.75795,2.849265)
//                 size dx,dy,dz=(30.576407,13.091705,8.258119)
//                  center x,y,z=(-2.0891235,1.2120975,-1.2797945)
//                       diagonal 34.2710655547042
//Surface area................... 865.096845570619
//             Smallest face area 1.98305655968248E-7
//              Largest face area 48.6872851204276
//Memory allocated for geometry: 30 MBytes
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
#include "Level_POV_geom.inc" //Geometry
 
//CAMERA PoseRayCAMERA
camera {
        perspective
        up <0,1,0>
        right -x*image_width/image_height
        location <4.44089209850063E-16,0,68.5421311094085>
        look_at <4.44089209850063E-16,0,67.5421311094085>
        angle 23.3150251190792 // horizontal FOV angle
        rotate <0,0,1.50090618893662> //roll
        rotate <-11.0289986320567,0,0> //pitch
        rotate <0,49.7083001817282,0> //yaw
        translate <-2.0891235,1.2120975,-1.2797945>
        }
 
//PoseRay default Light attached to the camera
light_source {
              <4.44089209850063E-16,0,68.5421311094085> //light position
              color rgb <1,1,1>*1.6
              parallel
              point_at <4.44089209850063E-16,0,0>
              rotate <0,0,1.50090618893662> //roll
              rotate <-11.0289986320567,0,0> //elevation
              rotate <0,49.7083001817282,0> //rotation
             }
 
//Background
background { color srgb <1,1,1>  }
 
//Assembled object that is contained in Level_POV_geom.inc with no SSLT components
object{
      Level_
      }
 
//restore the version used outside this file
#version Temp_version;
//==================================================
