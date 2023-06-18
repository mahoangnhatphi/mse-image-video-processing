% Problem 5_5 Histogram Equalization
clear, clc, close all;

% load image
Img = rgb2gray(imread('rice.jfif'));

% perform histogram equalization
eqImg = histeq(Img);

% show images
figure(1), clf;
subplot(1, 2, 1), imshow(Img), title('Original Image');
subplot(1, 2, 2), imshow(eqImg), title('Image After Equalization');

% show histograms of two images
figure(2), clf;
[counts, index] = imhist(Img)
subplot(1, 2, 1), bar(index, counts); grid on;
set(gca, 'FontSize', 20);
xlim([0 255]); ylim('auto'), ylabel(' # of pixels');
title('Histogram of Original Image');
% show and save images
[counts, index] = imhist(eqImg)
subplot(1, 2, 2), bar(index * 255, counts); grid on;
set(gca, 'FontSize', 20);
xlim([0 255]); ylim('auto'), ylabel(' # of pixels');
title('Histogram of Equalization Image');
