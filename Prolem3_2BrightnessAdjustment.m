% Prolem 3_2 Brightness Adjustment
clear, clc, close all;

% load image
Img = im2double(imread('cameraman.tif'));

% brightness adjustment by intensity scaling
%scale = 1; % 1 -> unchanged
%scale = 0.5; % Less than 1 -> darker
scale = 2.5; % More than 1 -> lighter
scaledImg = scale .* Img;

subplot(1, 2, 1), imshow(Img, [0 1]);
title('Original Image');
subplot(1, 2, 2), imshow(scaledImg, [0 1]);
title('Scaled Image with slace factor = 2.5');
imwrite(scaledImg, 'Brightness_Lighter.jpg');
