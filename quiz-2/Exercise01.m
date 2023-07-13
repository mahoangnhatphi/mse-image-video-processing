% Exercise 1: Change objects' color
clear, clc, close all;

% load image
Img = imread('shapes.png');

% convert to grayscale image
GrayImg = rgb2gray(Img);
GrayImg(1:20,:) = 255; % make black bar on top becomes white
% binarize image
level = graythresh(GrayImg);
%bwImg = 1 - imbinarize(GrayImg, level);

% my code
% Convert the image to grayscale
bwImg = 1 - im2bw(GrayImg, level);



% convert colors
[L, obj] = bwlabel(bwImg, 8);
disp(obj)
% cicle = magenta, square = red, rectangle = green,
% asterisk = cyan, pentagon = blue
cmap = [255 0 255; 255 0 0; 0 255 0; 0 255 255; 0 0 255] ./ 255;

rgblabel = label2rgb(L, cmap, 'white');

% minium area to consider as an object
minobjsize = 2000;
bg = L > 0;
regs = regionprops(bg, 'Area', 'Centroid', 'PixelList');

% eliminate small objects less than 2,000 pixels
regs(vertcat(regs.Area) < minobjsize) = [];

figure, clf;
subplot(1, 3, 1), imshow(Img), title('Orignal Image');
subplot(1, 3, 2), imshow(bwImg), title('Binarized Image');
subplot(1, 3, 3), imshow(rgblabel), title('Converted Image');
