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
 
 
//Materials
#include "Ground_POV_mat.inc"
 
//Geometry
#include "Ground_Building_.inc"
#include "Ground_Grass_.inc"
 
//Model assembly from the meshes
#declare Ground_=
union {
object{Ground_Building_  material{Building_} hollow }
object{Ground_Grass_  material{Grass_} hollow }
}
 
//restore the version used outside this file
#version Temp_version;
