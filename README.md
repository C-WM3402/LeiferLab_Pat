# LeiferLab_Pat
Code for Pat, image analysis, and worm tracking

Image analysis code:
    getAverage.m -- imAvg = getAverage(filePath,sig); calculates the average image for a stack of images in a folder (found by filePath variable); image names must follow the format denoted by sig because the code uses this substring as a signifier that the file is a part of the image stack. Ex: imAvg = getAverage(filePath,'Frame_'); --> all images should start with 'Frame_' 
