% Problem 5_1 Image Subtraction
clear, clc, close all;

% load images
liveImg = im2double(imread('live.jpg'));
maskImg = im2double(imread('mask.jpg'));

%calculate the difference between two images
diffImg = abs(maskImg - liveImg);
gamma = 0.4;
diffImg_constracted = diffImg .^ gamma;

% show images
subplot(2, 2,1), imshow(liveImg), title('Original Image');
subplot(2, 2,2), imshow(maskImg), title('Mask Image');
subplot(2, 2,3), imshow(diffImg), title('Difference Image');
subplot(2, 2,4), imshow(diffImg_constracted), title('Difference Image increased contrast');

% save images
imwrite(diffImg, 'Image_Subtraction.jpg');
imwrite(diffImg_constracted, 'Image_Subtraction_w_con.jpg');
