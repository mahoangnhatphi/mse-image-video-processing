% Prolem 3_4 Constract enhancement
clear, clc, close all;

% load images
Img  = im2double(imread('nature.png'));

% constract enhancement by changing 'gamma' characteristics
gamma = 1.0; %unchanged
gamma = 0.3; %decrease constract
gammaIncrease = 1.8; %increase constract
gammaImg = Img .^ gamma;
gammaImgIncreaseConstract = Img .^ gammaIncrease;

% plot images
subplot(1, 2, 1), imshow(Img), title('Original Image');
subplot(1, 2, 2), imshow(gammaImg);
title('Constract enhancement by gamma = 0.3');
imwrite(gammaImg, 'Constract_0.3.png');
figure
subplot(1, 2, 1), imshow(Img), title('Original Image');
subplot(1, 2, 2), imshow(gammaImgIncreaseConstract);
title('Constract enhancement by gamma = 1.8');
imwrite(gammaImg, 'Constract_1.8.png');
