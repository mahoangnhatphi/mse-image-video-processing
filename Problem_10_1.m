% Problem 10_1 Manual gray level threshold
clear, clc, close all;

% load image
Img = imread('male.png');

% define our own threshold value
level = 123;
bwImg = Img < level;
blendedImg = Img .* uint8(bwImg)

