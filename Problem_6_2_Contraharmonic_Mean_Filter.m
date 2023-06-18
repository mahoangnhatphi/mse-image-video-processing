% Problem 6_2 Contraharmonic Mean Filter
clear, clc, close all;

% load image
Img1 = im2double(imread('salt_noise.jpg'));
Img2 = im2double(imread('peppep_noise.jpg'));

figure;
subplot(2, 2, 1), imshow(Img1), title('Salt Noise Image');
subplot(2, 2, 2), imshow(Img2), title('Pepper Noise Image');

%a. Filter the salt noise image by using a negative r value
Img1_denoise = nlfilter(Img1, [3 3], @c_harmonic, -1);
subplot(2, 2, 3), imshow(Img1_denoise);
title('Denoise Salt Image with r = -1');

%b. Filter the pepper noise image by using a positive r value
Img2_denoise = nlfilter(Img2, [3 3], @c_harmonic, 1);
subplot(2, 2, 4), imshow(Img2_denoise);
title('Denoise Pepper Image with r = 1');
