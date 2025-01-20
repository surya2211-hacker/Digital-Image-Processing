%Digital Image Processing
%Created by Surya Manohar
clc;
clear all;
close all;
%importing image
I = imread('https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=');
%conversion of original image to grayscale image
R=I(:,:,1);
G=I(:,:,2);
B=I(:,:,3);
Ig=((R+G+B)/3);
%counting sum of all the pixels in grayscale image
count = sum(Ig(:));
%convertinng to black and white image
threshold=count/(144*349);
Ib = Ig > threshold;
%original image to blue image
Iblue=I;
Iblue(:,:,1)=0;
Iblue(:,:,2)=0;
%original image to green image
Igreen=I;
Igreen(:,:,1)=0;
Igreen(:,:,3)=0;
%original image to red image
Ired=I;
Ired(:,:,2)=0;
Ired(:,:,3)=0;
%Plotting all the results
subplot(2,3,1);
imshow(I);
title("Original Image");

subplot(2,3,2);
imshow(Ig);
title("Grayscale Image");

subplot(2,3,3);
imshow(Ib);
title("B&W Image");

subplot(2,3,4);
imshow(Ired);
title("Red Image");

subplot(2,3,5);
imshow(Igreen);
title("Green Image");

subplot(2,3,6);
imshow(Iblue);
title("Blue Image");