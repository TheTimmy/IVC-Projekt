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
 
#declare Flagpole_Logo_=mesh2{
vertex_vectors{
8,
<-0.006439,6.768869,-0.022479>,
<1.993561,6.76887,-0.022478>,
<1.993562,4.76887,-0.022477>,
<-0.006438,4.768869,-0.022478>,
<1.993561,6.76887,0.022478>,
<-0.006439,6.768869,0.022477>,
<-0.006438,4.768869,0.022478>,
<1.993562,4.76887,0.022479>
}
normal_vectors{
2,
<0,0,-1>,
<0,0,1>
}
uv_vectors{
8,
<0,0>,
<1,0>,
<1,1>,
<0,1>,
<0,0>,
<1,0>,
<1,1>,
<0,1>
}
face_indices{
4,
<0,1,2>,
<0,2,3>,
<4,5,6>,
<4,6,7>
}
uv_indices{
4,
<0,1,2>,
<0,2,3>,
<4,5,6>,
<4,6,7>
}
normal_indices{
4,
<0,0,0>,
<0,0,0>,
<1,1,1>,
<1,1,1>
}
inside_vector <0,0,1> }
