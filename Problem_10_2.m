% Problem 10_1 Manual gray level threshold
clear, clc, close all;

% load image
Img = imread('male.png');

% global threasholding by Otsu method
level = graythresh(Img) % choose by Otsu method
bwImg = im2bw(Img, level);
blendedImg = (1 - bwImg) .* im2double(Img);

% show images
subplot(1, 3, 1), imshow(Img), title('Original Image');
subplot(1, 3, 2), imshow(bwImg), title('Globally Threshold');
subplot(1, 3, 32), imshow(blendedImg), title('Overlay Image'); axes('Parent', figure, 'FontSize', 12);

% show histogram of image and threshold value
[counts, x] = imhist(Img);
bar(x, counts), hold on;
OtsuThresh = round(level * 255);
h = plot(OtsuThresh * ones(1, 100), linspace(0, max(counts)), 'g-');
axis([0 255 0 max(counts)]);
set(gca, 'FontSize', 12); set(gcf, 'Color', 'white');


% save image
imwrite(bwImg, 'Global_Threshold_Image.png')
saveas(gcf, 'Global_Threshold_Histogram.png');

