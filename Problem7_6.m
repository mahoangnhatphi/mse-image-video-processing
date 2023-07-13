% Problem 7_6 Binary Dilation
clear, clc, close all;

% load image
Img = imread('traces.png');

% perform dilation with different structuring elements (se)
% a. small disk with radius = 10
%se1 = strel('disk', 10, 0);
% a. small disk with square = 10
se1 = strel('square', 10);
BW1 = imdilate(Img, se1);

% b. large disk with radius = 30
se2 = strel('diamond', 15);
BW2 = imdilate(Img, se2);

% show and save images
subplot(1, 3, 1), imshow(Img), title('Original Image');
subplot(1, 3, 2), imshow(BW1), title('Dilation by Small Disk');
subplot(1, 3, 3), imshow(BW2), title('Dilation by Small Disk');
