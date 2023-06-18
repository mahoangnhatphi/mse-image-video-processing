% 1
clear, clc, close all;
Img = imread('sea.jpg');

redComponent = Img(:, :, 1);
greenComponent = Img(:, :, 2);
blueComponent = Img(:, :, 3);

figure;
subplot(2, 2, 1);
imshow(Img);
title('Original Image');

subplot(2, 2, 2);
imshow(redComponent);
title('Red Component');

subplot(2, 2, 3);
imshow(greenComponent);
title('Green Component');

subplot(2, 2, 4);
imshow(blueComponent);
title('Blue Component');

% 2
newImage = cat(3, Img(:, :, 3), Img(:, :, 1), Img(:, :, 2));
outputFilename = 'new_sea.PNG';
imwrite(newImage, outputFilename);

figure;
imshow(newImage);
title('Swapped Image');

% 3

Img3 = imread('sea.jpg');
brightnessValue = 55;

brighterImage = Img3 + brightnessValue;
darkerImage = Img3 - brightnessValue;

gammaValue = 1.7;

gammaCorrectedImage = Img3 .^ gammaValue;

figure;
subplot(2, 2, 1);
imshow(Img);
title('Original Image');

subplot(2, 2, 2);
imshow(brighterImage);
title('Brighter Image');

subplot(2, 2, 3);
imshow(darkerImage);
title('Darker Image');

subplot(2, 2, 4);
imshow(gammaCorrectedImage);
title('Gamma Corrected Image');

%4
grayImage = rgb2gray(Img);

numBits = [2, 4, 6, 8];

figure;
subplot(2, 3, 1);
imshow(grayImage);
title('Original Image');

for i = 1:numel(numBits)

    numLevels = 2 ^ numBits(i);

    quantizedImage = uint8(ceil(double(grayImage) / 256 * numLevels) * (256 / numLevels));

    subplot(2, 3, i+1);
    imshow(quantizedImage);
    title(sprintf('%d-bit Quantization', numBits(i)));
end

% 5

figure;
subplot(1, 3, 1);
imshow(grayImage);
title('Original Image');

c = 128 / log(1024);
logTransformed = c * log(1 + double(grayImage));

subplot(1, 3, 2);
imshow(uint8(logTransformed));
title('Logarithm Transformation');

lut = zeros(256, 1, 'uint8');
lut(1:93) = 2 * (0:92) + 10;
lut(94:168) = 1.5 * (93:167);
lut(169:214) = 168:213;
lut(215:256) = 255;

piecewiseLinear = lut(double(grayImage) + 1);

subplot(1, 3, 3);
imshow(piecewiseLinear);
title('Piecewise Linear Transformation');

% 6
image = imread('sea.jpg');

if size(image, 3) > 1
    image = rgb2gray(image);
end

figure;
subplot(2, 2, 1);
imshow(Img);
title('Original Grayscale Image');

flippedImage = fliplr(image);
subplot(2, 2, 2);
imshow(flippedImage);
title('Flipped Image (Left to Right)');

rotatedImage = imrotate(image, 180);

subplot(2, 2, 3);
imshow(rotatedImage);
title('Rotated Image (Clockwise 180 Degrees)');

[rows, columns] = size(image);
cropRect = [columns/4, rows/4, columns/2, rows/2];
croppedImage = imcrop(image, cropRect);

subplot(2, 2, 4);
imshow(croppedImage);
title('Cropped Image (Central Half)');




