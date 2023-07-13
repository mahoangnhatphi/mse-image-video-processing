% Problem 11_2 Pseudo-colored to grayscale
clear, clc, close all;

% Load image
Img = imread('brain.jpg');
subplot(1, 2, 1);
imshow(Img);
title('Original image');

% Convert pseudo-color image to grayscale
I2 = grayslice(Img, 16);
subplot(1, 2, 2);
imshow(I2, colormap(jet(16)));
title('pseudo-color with "jet" image');
