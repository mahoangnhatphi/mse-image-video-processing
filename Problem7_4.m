% Problem 7)4 Wiener Filtering with Bluerred and Additive Noise

clear, clc, close all;

% load image
Img = im2double(imread('flower.jfif'));
figure(1), clf;

subplot(1, 3, 1), imshow(Img), title('Original Image');

% simulate a blur motion
LEN = 15; THETA = 10;
PSF = fspecial('motion', LEN, THETA)
blurredImg = imfilter(Img, PSF, 'conv', 'replicate')
subplot(1, 3, 2), imshow(blurredImg), title('Burry Image')

% simulate additive noise
noise_mean =0; noise_var = 0.0005;
blurred_noiseImg = imnoise(blurredImg, 'gaussian', noise_mean, noise_var);
subplot(1, 2, 3), imshow(blurred_noiseImg), title('Blur Noisy Image');

% remove noise and deblur
dif = 255 * (blurred_noiseImg - Img);
rms_err_before_wnr = rms(dif(:))

estimated_nr = noise_var / var(Img(:));
wnr = deconvmnr(blurred_noiseImg, PSF, estimated_nr);
figure(2), clf;
imshow(wnr), title('Restoration of Bluerred and Noisy Image')
imwrite(wnr, 'Winer_Filter.png')
