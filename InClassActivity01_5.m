% Read the original image
image = imread('nature.jpg');

% Convert the image to grayscale if it is in color
if size(image, 3) > 1
    grayImage = rgb2gray(image);
else
    grayImage = image;
end

% Display the original grayscale image
figure;
imshow(grayImage);
title('Original Grayscale Image');

% Logarithm transformation
c = 128 / log(1024);
logTransformed = c * log(double(grayImage) + 1);

% Display the logarithm-transformed image
figure;
imshow(uint8(logTransformed));
title('Logarithm Transformed Image');

% Piecewise linear transformation
% Define the mapping function parameters
a = 0.5;  % Slope of the linear part
b = 60;  % Intercept of the linear part
cutoff = 100;  % Cutoff point for the non-linear part

% Apply the piecewise linear transformation
piecewiseTransformed = grayImage;
piecewiseTransformed(grayImage <= cutoff) = a * grayImage(grayImage <= cutoff) + b;
piecewiseTransformed(grayImage > cutoff) = (grayImage(grayImage > cutoff) - cutoff) / (255 - cutoff);

% Display the piecewise linear-transformed image
figure;
imshow(piecewiseTransformed);
title('Piecewise Linear Transformed Image');
