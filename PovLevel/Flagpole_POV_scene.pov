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
//Flagpole_POV_main.ini (initialization file - open this to render)
//Flagpole_POV_scene.pov (scene setup of cameras, lights and geometry)
//Flagpole_POV_geom.inc (geometry)
//Flagpole_Logo.inc (individual mesh)
//Flagpole_Logo_NONE.inc (individual mesh)
//Flagpole_Building.inc (individual mesh)
//Flagpole_Metal.inc (individual mesh)
//Flagpole_POV_mat.inc (materials)
//Unihamburg-logo.png
//Brick_Block.png
//Metal.jpg
// 
//==================================================
//Model Statistics:
//Number of triangular faces..... 328008
//Number of vertices............. 164012
//Number of normals.............. 327761
//Number of UV coordinates....... 166161
//Number of lines................ 0
//Number of materials............ 4
//Number of groups/meshes........ 1
//Number of subdivision faces.... 0
//UV boundaries........ from u,v=(0,0)
//                        to u,v=(1,1)
//Bounding Box....... from x,y,z=(-0.312997,-0.312997,-0.312997)
//                      to x,y,z=(1.993562,6.938292,0.312997)
//                 size dx,dy,dz=(2.306559,7.251289,0.625994)
//                  center x,y,z=(0.8402825,3.3126475,0)
//                       diagonal 7.63500327898017
//Surface area................... 15.1043602894435
//             Smallest face area 1.97949041061574E-7
//              Largest face area 2.000000000001
//Memory allocated for geometry: 35 MBytes
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
#include "Flagpole_POV_geom.inc" //Geometry
 
//CAMERA PoseRayCAMERA
camera {
        perspective
        up <0,1,0>
        right -x*image_width/image_height
        location <0,4.44089209850063E-16,15.2700065579603>
        look_at <0,4.44089209850063E-16,14.2700065579603>
        angle 32.9346087425027 // horizontal FOV angle
        rotate <0,0,-19.1390033408558> //roll
        rotate <-31.2824379951164,0,0> //pitch
        rotate <0,69.2505269508887,0> //yaw
        translate <0.8402825,3.3126475,0>
        }
 
//PoseRay default Light attached to the camera
light_source {
              <0,4.44089209850063E-16,15.2700065579603> //light position
              color rgb <1,1,1>*1.6
              parallel
              point_at <0,4.44089209850063E-16,0>
              rotate <0,0,-19.1390033408558> //roll
              rotate <-31.2824379951164,0,0> //elevation
              rotate <0,69.2505269508887,0> //rotation
             }
 
//Background
background { color srgb <1,1,1>  }
 
//Assembled object that is contained in Flagpole_POV_geom.inc with no SSLT components
object{
      Flagpole_
      }
 
//restore the version used outside this file
#version Temp_version;
//==================================================
