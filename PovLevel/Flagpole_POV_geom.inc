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
 
 
//Materials
#include "PovLevel/Flagpole_POV_mat.inc"
 
//Geometry
#include "PovLevel/Flagpole_Logo_.inc"
#include "PovLevel/Flagpole_Logo_NONE_.inc"
#include "PovLevel/Flagpole_Building_.inc"
#include "PovLevel/Flagpole_Metal_.inc"
 
//Model assembly from the meshes
#declare Flagpole_=
union {
object{Flagpole_Logo_  material{Logo_} hollow }
object{Flagpole_Logo_NONE_  material{Logo_NONE_} hollow }
object{Flagpole_Building_  material{Building_} hollow }
object{Flagpole_Metal_  material{Metal_} hollow }
}
 
//restore the version used outside this file
#version Temp_version;
