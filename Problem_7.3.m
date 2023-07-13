% Problem 7_3 Wiener Filtering with Additive Noise
clear, clc, close all;

% load image
Img = im2double(imread('eagle.jfif'));
figure(1), clf;
imshow(Img), title('Original Img');

% simulate additive Gaussian noise
noise_mean =0; noise_var = 0.0005;

noiseImg = imnoise(Img, 'gaussian', noise_mean, noise_var);
subplot(1, 2, 2), imshow(noiseImg), title('Noisy Image');
imwrite(noiseImg, 'Additive_Gaussian_Noise.png');

% perform Wiener Filtering on noisy image
dif = 25 * (noiseImg - Img);
rms_err_before_wnr = rms(dif(:));

noisy_dft = fft2(noiseImg); %DFT of noisy
Img_psd = abs(fft2(Img) .^ 2); % original image probability

% Density function (PSD)
noise_psd = prod(size(Img_psd))* noise_var; % white noise PSD
wnr_H = Img_psd ./ (Img_psd + noise_psd); % Wiener transfer for

figure(2), clf;
subplot(1, 2, 1), imshow(fftshift(log(1 + wnr_H)), []);
colorbar;
wnr_dft = noisy_dft .* wnr_H; % DFT of filtered image
wnr = real(ifft2(wnr_dft)); % convert back to spatial domain
subplot(1, 2, 2), imshow(wnr);
title('Restoration of Noisy Image Using WNR');
imwrite(wnr, 'Winer_Filtered_Additive_Noise.png');


dif = 255 * (wnr - Img);

