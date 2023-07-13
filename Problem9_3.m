% Problem 9_3 Zero-crossing by Laplacian of Gaussian (LoG)

clear, clc, close all;

pkg load image  % Load the image package

Img = imread('portrait_male.png');

% Loop over different standard deviations of Gaussian
% Use no threshold on edge response
thresh = 0;
sigmaArray = [sqrt(2) sqrt(8) sqrt(32) sqrt(128)];

for i = 1:length(sigmaArray)
    % Create Gaussian filter kernel
    kernelSize = ceil(sigmaArray(i) * 3) * 2 + 1;
    gaussianKernel = fspecial('gaussian', kernelSize, sigmaArray(i));

    % Apply Gaussian filter to the image
    blurredImg = imfilter(Img, gaussianKernel, 'symmetric');

    % Detect edges using the Canny method
    edgeImg = edge(blurredImg, 'canny', thresh);

    % Display the original image and the detected edges
    subplot(2, length(sigmaArray), i);
    imshow(Img);
    title('Original Image');

    subplot(2, length(sigmaArray), i + length(sigmaArray));
    imshow(edgeImg);
    title(['Sigma = ', num2str(sigmaArray(i))]);
end
