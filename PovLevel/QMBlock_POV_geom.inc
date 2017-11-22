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
//QMBlock_POV_main.ini (initialization file - open this to render)
//QMBlock_POV_scene.pov (scene setup of cameras, lights and geometry)
//QMBlock_POV_geom.inc (geometry)
//QMBlock_Question.inc (individual mesh)
//QMBlock_POV_mat.inc (materials)
//Question_Block.png
// 
//==================================================
//Model Statistics:
//Number of triangular faces..... 192
//Number of vertices............. 98
//Number of normals.............. 22
//Number of UV coordinates....... 195
//Number of lines................ 0
//Number of materials............ 1
//Number of groups/meshes........ 1
//Number of subdivision faces.... 0
//UV boundaries........ from u,v=(0.0013,0.0037)
//                        to u,v=(1.0018,1.0024)
//Bounding Box....... from x,y,z=(-0.312999,-0.312998,-0.312997)
//                      to x,y,z=(0.312996,0.312997,0.312997)
//                 size dx,dy,dz=(0.625995,0.625995,0.625994)
//                  center x,y,z=(-1.50000000001538E-6,-4.99999999986622E-7,0)
//                       diagonal 1.08425456793412
//Surface area................... 2.26060794034192
//             Smallest face area 0.000317597894799425
//              Largest face area 0.020242676153
//Memory allocated for geometry: 22 KBytes
// 
//==================================================
 
 
//Materials
#include "PovLevel/QMBlock_POV_mat.inc"
 
//Geometry
#include "PovLevel/QMBlock_Question_.inc"
 
//Model assembly from the meshes
#declare QMBlock_=
object{QMBlock_Question_  material{Question_} hollow }
 
//restore the version used outside this file
#version Temp_version;
