//wrap the file with the version
#local Temp_version = version;
#version 3.7;
//==================================================
//POV-Ray Geometry file
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
 
 
//Materials
#include "PovLevel/Block_POV_mat.inc"
 
//Geometry
#include "PovLevel/Block_Block_.inc"
 
//Model assembly from the meshes
#declare Block_=
object{Block_Block_  material{Block_} hollow }
 
//restore the version used outside this file
#version Temp_version;
