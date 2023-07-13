% Problem 9_2 Zero-crossing by Laplacian

clear, clc, close all;

% load image
Img = imread('portrait_male.png');

% find zero-crossing of Laplacian
h = fspecial('laplacian', 0);
bw = edge(Img, 'zerocross', 0, h);

% show and save images
subplot(1, 2, 1), imshow(Img), title('Original Image');
subplot(1, 2, 2), imshow(bw), title('Zero crocssing of Laplacian');

imwrite(bw, 'zero_crossings_laplacian.jpg');