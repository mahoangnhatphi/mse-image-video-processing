% Problem 5_4 Histogram Generation
clear, clc, close all;

% load image
Img = rgb2gray(imread('rice.jfif'));
[counts, index] = imhist(Img);

% plot histogram
subplot(1, 2, 1), bar(index, counts);
set(gca, 'FontSize', 20);
xlim([0 255]); ylim('auto'), ylabel(' # of pixels');

% show and save images
subplot(1, 2, 2), imshow(Img);
title('Original Image');
saveas(gca, 'Histogram.png');
