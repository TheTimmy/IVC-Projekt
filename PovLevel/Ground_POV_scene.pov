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
//Ground_POV_main.ini (initialization file - open this to render)
//Ground_POV_scene.pov (scene setup of cameras, lights and geometry)
//Ground_POV_geom.inc (geometry)
//Ground_Building.inc (individual mesh)
//Ground_Grass.inc (individual mesh)
//Ground_POV_mat.inc (materials)
//LevelTexture.png
// 
//==================================================
//Model Statistics:
//Number of triangular faces..... 112
//Number of vertices............. 64
//Number of normals.............. 6
//Number of UV coordinates....... 240
//Number of lines................ 0
//Number of materials............ 2
//Number of groups/meshes........ 1
//Number of subdivision faces.... 0
//UV boundaries........ from u,v=(0.001,0.001)
//                        to u,v=(0.999,0.999)
//Bounding Box....... from x,y,z=(-18.436636,-5.375146,-1.731887)
//                      to x,y,z=(11.991558,1.743437,1.731884)
//                 size dx,dy,dz=(30.428194,7.118583,3.463771)
//                  center x,y,z=(-3.222539,-1.8158545,-1.49999999998762E-6)
//                       diagonal 31.4411660656847
//Surface area................... 575.601904416875
//             Smallest face area 0.1107997317465
//              Largest face area 48.6872851204276
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
#include "Ground_POV_geom.inc" //Geometry
 
//CAMERA PoseRayCAMERA
camera {
        perspective
        up <0,1,0>
        right -x*image_width/image_height
        location <4.44089209850063E-16,0,62.8823321313695>
        look_at <4.44089209850063E-16,0,61.8823321313695>
        angle 32.9346087425027 // horizontal FOV angle
        rotate <0,0,7.57918120543957> //roll
        rotate <-8.29705592167219,0,0> //pitch
        rotate <0,19.231239935,0> //yaw
        translate <-3.222539,-1.8158545,-1.49999999998762E-6>
        }
 
//PoseRay default Light attached to the camera
light_source {
              <4.44089209850063E-16,0,62.8823321313695> //light position
              color rgb <1,1,1>*1.6
              parallel
              point_at <4.44089209850063E-16,0,0>
              rotate <0,0,7.57918120543957> //roll
              rotate <-8.29705592167219,0,0> //elevation
              rotate <0,19.231239935,0> //rotation
             }
 
//Background
background { color srgb <1,1,1>  }
 
//Assembled object that is contained in Ground_POV_geom.inc with no SSLT components
object{
      Ground_
      }
 
//restore the version used outside this file
#version Temp_version;
//==================================================
