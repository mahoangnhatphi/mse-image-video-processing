% Problem 5_6 Local Histogram Equalization
clear, clc, close all;

% load image
Img = rgb2gray(imread('rice.jfif'));

% apply global and local adaptive histogram equalization
% a. global
eqImg = histeq(Img);
% b. and c. constract limited adaptive histogram equalization
% (clahe) in two cases: sliding window 8x8 and 16x16
claheImg1 = adapthisteq(Img, 'NumTiles', [8 8]);
claheImg2 = adapthisteq(Img, 'NumTiles', [16 16]);

subplot(2, 2, 1), imshow(Img), title('Original Image');
subplot(2, 2, 2), imshow(eqImg), title('Global Histogram');
subplot(2, 2, 3), imshow(claheImg1), title('Local Histogram with Tiling 8*8 window');
subplot(2, 2, 4), imshow(claheImg2), title('Local Histogram with Tiling 16*16 window');

% save images
imwrite(eqImg, 'CLAHE_Global.png');
imwrite(claheImg1, 'CLAHE_Local_8by8.png');
imwrite(claheImg2, 'CLAHE_Local_16by16.png');
