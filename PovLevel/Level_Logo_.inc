//==================================================
//POV-Ray Separate mesh
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
 
#declare Level_Logo_=mesh2{
vertex_vectors{
8,
<11.19908,5.109463,0.820706>,
<11.19908,5.109463,0.865663>,
<11.199078,7.109463,0.865662>,
<11.199078,7.109463,0.820706>,
<13.199078,7.109464,0.865662>,
<13.199078,7.109464,0.820706>,
<13.19908,5.109464,0.865663>,
<13.19908,5.109464,0.820707>
}
normal_vectors{
6,
<-1,0,0>,
<0,1,0>,
<1,0,0>,
<0,-1,0>,
<0,0,-1>,
<0,0,1>
}
face_indices{
12,
<0,1,2>,
<0,2,3>,
<3,2,4>,
<3,4,5>,
<5,4,6>,
<5,6,7>,
<7,6,1>,
<7,1,0>,
<3,5,7>,
<3,7,0>,
<4,2,1>,
<4,1,6>
}
normal_indices{
12,
<0,0,0>,
<0,0,0>,
<1,1,1>,
<1,1,1>,
<2,2,2>,
<2,2,2>,
<3,3,3>,
<3,3,3>,
<4,4,4>,
<4,4,4>,
<5,5,5>,
<5,5,5>
}
inside_vector <0,0,1> }
