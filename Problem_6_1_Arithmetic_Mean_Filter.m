% Problem 6_1 Arithmetic Mean Filter
clear, clc, close all;

% load image
Img = im2double(imread('cameraman.tif'));
% generate a Gausin noise image
Img_noise = imnoise(Img, 'gaussian', 0, 0.001);

% plot images
figure;
subplot(2, 2, 1), imshow(Img), title('Original Image');
subplot(2, 2, 2), imshow(Img_noise), title('Noise Image');

% apply an avarage filter using two different kernels
% a. a 3x3 kernel
f1 = fspecial('average');
Img_denoise1 = imfilter(Img_noise, f1);
subplot(2, 2, 3), imshow(Img_denoise1);
title('Averaging with 3x3 kernel size');

% b. a 5x5 kernel
f2 = fspecial('average', [5 5]);
Img_denoise2 = imfilter(Img_noise, f2);
subplot(2, 2, 4), imshow(Img_denoise2);
title('Averaging with 5x5 kernel size');
