% Problem 11_4 compare grayscale image and value image in hsv
clear, clc, close all;

% Load image
Img = imread('flowerfield.jpg');

Imggray = rgb2gray(Img); %grayscale image
Imghsv = rgb2hsv(Img); %hsv image

subplot(1, 2, 1), imshow(Imggray), title('grayscale image');
subplot(1, 2, 2), imshow(Imghsv), title('hsv image');
