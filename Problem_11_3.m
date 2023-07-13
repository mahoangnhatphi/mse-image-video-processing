% Problem 11_2 full-colored image processing
clear, clc, close all;

% Load image
Img = imread('flowerfield.jpg');

subplot(2,4,1), imshow(Img), title('Original image');
subplot(2,4,2), imshow(Img(:, :, 1)), title('R component');
subplot(2,4,3), imshow(Img(:, :, 2)), title('G component');
subplot(2,4,4), imshow(Img(:, :, 3)), title('B component');

% Convert from RGB to HSB color model and display its components
Imghsv = rgb2hsv(Img);
subplot(2,4,6), imshow(Imghsv(:, :, 1)), title('Hue');
subplot(2,4,7), imshow(Imghsv(:, :, 1)), title('Saturation');
subplot(2,4,8), imshow(Imghsv(:, :, 1)), title('Value');