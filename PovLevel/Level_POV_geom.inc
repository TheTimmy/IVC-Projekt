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
 
 
//Materials
#include "Level_POV_mat.inc"
 
//Geometry
#include "Level_Logo_.inc"
#include "Level_Question_.inc"
#include "Level_Block_.inc"
#include "Level_Building_.inc"
#include "Level_Metal_.inc"
#include "Level_Green_.inc"
#include "Level_Grass_.inc"
 
//Model assembly from the meshes
#declare Level_=
union {
object{Level_Logo_  material{Logo_} hollow }
object{Level_Question_  material{Question_} hollow }
object{Level_Block_  material{Block_} hollow }
object{Level_Building_  material{Building_} hollow }
object{Level_Metal_  material{Metal_} hollow }
object{Level_Green_  material{Green_} hollow }
object{Level_Grass_  material{Grass_} hollow }
}
 
//restore the version used outside this file
#version Temp_version;
