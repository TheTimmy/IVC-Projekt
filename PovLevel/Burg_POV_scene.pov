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
//Burg_POV_main.ini (initialization file - open this to render)
//Burg_POV_scene.pov (scene setup of cameras, lights and geometry)
//Burg_POV_geom.inc (geometry)
//Burg_Building.inc (individual mesh)
//Burg_POV_mat.inc (materials)
//BurgTexture.png
// 
//==================================================
//Model Statistics:
//Number of triangular faces..... 1698
//Number of vertices............. 882
//Number of normals.............. 75
//Number of UV coordinates....... 1832
//Number of lines................ 0
//Number of materials............ 1
//Number of groups/meshes........ 1
//Number of subdivision faces.... 0
//UV boundaries........ from u,v=(0.0041,0.0041)
//                        to u,v=(0.9957,0.9959)
//Bounding Box....... from x,y,z=(-2.458975,-2.458975,-2.458975)
//                      to x,y,z=(2.458975,5.307764,2.468379)
//                 size dx,dy,dz=(4.91795,7.766739,4.927354)
//                  center x,y,z=(0,1.4243945,0.00470199999999998)
//                       diagonal 10.4301143012882
//Surface area................... 248.682253244567
//             Smallest face area 0.000914581751999965
//              Largest face area 4.708523625109
//Memory allocated for geometry: 166 KBytes
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
#include "Burg_POV_geom.inc" //Geometry
 
//CAMERA PoseRayCAMERA
camera {
        perspective
        up <0,1,0>
        right -x*image_width/image_height
        location <0,2.22044604925031E-16,20.8602286025764>
        look_at <0,2.22044604925031E-16,19.8602286025764>
        angle 32.9346087425027 // horizontal FOV angle
        rotate <0,0,2.30638757959244> //roll
        rotate <-12.0571469568158,0,0> //pitch
        rotate <0,37.7969056005728,0> //yaw
        translate <0,1.4243945,0.00470199999999998>
        }
 
//PoseRay default Light attached to the camera
light_source {
              <0,2.22044604925031E-16,20.8602286025764> //light position
              color rgb <1,1,1>*1.6
              parallel
              point_at <0,2.22044604925031E-16,0>
              rotate <0,0,2.30638757959244> //roll
              rotate <-12.0571469568158,0,0> //elevation
              rotate <0,37.7969056005728,0> //rotation
             }
 
//Background
background { color srgb <1,1,1>  }
 
//Assembled object that is contained in Burg_POV_geom.inc with no SSLT components
object{
      Burg_
      }
 
//restore the version used outside this file
#version Temp_version;
//==================================================
