% Problem 5_1 Image comparison
clear, clc, close all;

% load images
maskImg1 = im2double(imread('mask1.png'));
maskImg2 = im2double(imread('mask2.png'));

% Perform image subtraction and comparison
diffImg = abs(maskImg2 - maskImg1);
imshow(diffImg, []), title('Difference Image');
imwrite(diffImg, []), title('Mask_Comparison');
