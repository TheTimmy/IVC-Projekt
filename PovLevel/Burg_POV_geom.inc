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
 
 
//Materials
#include "Burg_POV_mat.inc"
 
//Geometry
#include "Burg_Building_.inc"
 
//Model assembly from the meshes
#declare Burg_=
object{Burg_Building_  material{Building_} hollow }
 
//restore the version used outside this file
#version Temp_version;
