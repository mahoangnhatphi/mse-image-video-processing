% Problem 11_1 Pseudocolor Image Processing
clear, clc, close all;

% Create and display a gradient image
I = repmat(uint8([0:255]), 256, 1);
figure;
subplot(1, 2, 1);
imagesc(I);
title('Original Image');

% Slice image and display the results
I2 = grayslice(I, 16);
subplot(1, 2, 2);
imagesc(I2);
colormap(winter(16));
title('Pseudo-color with "winter" colormap');

% slice the image into unequal partitions and display the result
levels = [0.25*255 0.75*255 0.9*255]
I3 = grayslice(I, levels);
subplot(1, 2, 3);
imshow(I3, spring())
title('Pseudo-color with "winter" colormap')
