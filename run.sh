#!/bin/sh

echo "Remove old files"
rm -rf /export/scratch/3rolff/Project/

echo "Copy Files"
cp -r PovLevel/ /export/scratch/3rolff/Project/PovLevel/
cp -r Images/ /export/scratch/3rolff/Project/Images/
cp *.ini /export/scratch/3rolff/Project/
cp *.pov /export/scratch/3rolff/Project/

echo "Change Root dir"
cd /export/scratch/3rolff/Project

echo "Start Render Process"
povray Mario-Scene_2.ini -D -GDfile

echo "Copy generated Images"
cp *.png /informatik2/students/home/3rolff/My\ Documents/POV-Ray/Projekt/