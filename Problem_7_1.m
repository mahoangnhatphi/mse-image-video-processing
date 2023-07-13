% Problem 7_1 Convolution between a kernel and an image
clear, clc, close all;

% load image
Img = im2double(imread('bike.png'));

% construct three differents kernel (impulse responses)
k1 = ones(1,5) / 5; % horizontal kernel
k2 = ones(5,1) / 5; % vertical kernel
k3 = ones(5) / 25; % box/window kernel

% perform convolution on the image
filteredImg1 = imfilter(Img, k1, 'symmetric');
filteredImg2 = imfilter(Img, k2, 'symmetric');
filteredImg3 = imfilter(Img, k3, 'symmetric');

% show images

figure(1); clf;
subplot(1, 2, 1), imshow(Img), title('Original Image');
subplot(1, 2, 2), imshow(filteredImg1);
title('Horizontal Kernel Kaggle');


figure(2); clf;
subplot(1, 2, 1), imshow(Img), title('Original Image');
subplot(1, 2, 2), imshow(filteredImg2);
title('Vertical Kernel Kaggle');


figure(3); clf;
subplot(1, 2, 1), imshow(Img), title('Original Image');
subplot(1, 2, 2), imshow(filteredImg3);
title('Box/Window Kernel Kaggle');

% save images
imwrite(filteredImg1, 'Horizontal_Convolution.png');
imwrite(filteredImg2, 'Vertical_Convolution.png');
imwrite(filteredImg3, 'Box_Convolution.png');
