% Problem 7_2 Sharpening filter an image
clear, clc, close all;

% load image
Img = im2double(imread('street.jfif'));

% apply a sharpening filter to the image
h1 = [0 -1 0;
     -1 15 -1;
      0 -1 0] / 3; % 3-by-3 box filter
h1 = [0 0 -1 0 0;
      0 -1 -1 -1 0
      -1 -1 20 -1 -1
      0 -1 -1 -1 0
      0 -1 -1 -1 0] / 4; % 5-by-5 box filter

filteredImg1 = imfilter(Img, h1, 'replicate');
filteredImg1 = imfilter(Img, h2, 'replicate');

% show image
figure(1), clf;
subplot(1, 2, 1), imshow(Img), title('Original Image');
subplot(1, 2, 2), imshow(filteredImg1);
title('Sharpening Filtered Image 1');


% show image
figure(1), clf;
subplot(1, 2, 1), imshow(Img), title('Original Image');
subplot(1, 2, 2), imshow(filteredImg1);
title('Sharpening Filtered Image 1');


% save image
imwrite(filteredImg1, 'Sharpening_Filtered.PNG');
imwrite(filteredImg2, 'Sharpening_Filtered.PNG');


figure(1), clf;
subplot(1, 2, 1), imshow(Img), title('Original Image');
subplot(1, 2, 2), imshow(filteredImg1);
title('Sharpening Filtered Image 1');

figure(1), clf;
subplot(1, 2, 1), imshow(Img), title('Original Image');
subplot(1, 2, 2), imshow(filteredImg1);
title('Sharpening Filtered Image 1');

% save image
imwrite(filteredImg1, 'Sharpening_Filtered.PNG');

