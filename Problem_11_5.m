% Problem 11_5 smooth each component of color image by a filter
clear, clc, close all;

%load image
Img = imread('flowerfield.jpg');

% define a filter
fn = fspecial('average');
Img2r = imfilter(Img(:, :, 1), fn);
Img2g = imfilter(Img(:, :, 2), fn);
Img2b = imfilter(Img(:, :, 3), fn);

Img2(:, :, 1) = Img2r;
Img2(:, :, 2) = Img2g;
Img2(:, :, 3) = Img2b;

% plot and display
subplot(1, 2, 1), imshow(Img), title('Original image');
subplot(1, 2, 2), imshow(Img2), title('Averaged image');