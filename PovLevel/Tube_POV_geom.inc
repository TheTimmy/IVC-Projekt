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
 
 
//Materials
#include "PovLevel/Tube_POV_mat.inc"
 
//Geometry
#include "PovLevel/Tube_Green_.inc"
 
//Model assembly from the meshes
#declare Tube_=
object{Tube_Green_  material{Green_} hollow }
 
//restore the version used outside this file
#version Temp_version;
