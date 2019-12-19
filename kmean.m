clc;
clear all;
close all;


%Parameters for the Segmentation
nBins=5;
winSize=7;
nClass=6;

%Read Input Image
inImg = imread('grayfliower.jpg');
imshow(inImg);title('Input Image');

%Segmentation
outImg = colImgSeg(inImg, nBins, winSize, nClass);

%Displaying Output
figure;imshow(outImg);title('Segmentation Maps');
colormap('default');