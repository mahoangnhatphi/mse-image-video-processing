% Problem 11_6 determinat of Hessian (DoH) Detector
clear, clc, close all;

% load image
Img = im2double(imread('circuit.jpg'));

Imggrag = rgb2gray(Img);

figure(1), clf;
imshow(Img), title('Original Image');

% create filters
sigma = 2
g = fspecial('gaussian', [10*sigma]);
s = fspecial('prewitt');

filterXG = imfilter(imfilter(g,s.','replicate'),s.','replicate');
filterYG = imfilter(imfilter(g,s,'replicate'),s,'replicate');
filterXYG = imfilter(imfilter(g,s.','replicate'),s,'replicate');

figure(2), clf;
subplot(1, 3, 1), imshow(filterXG, [-0.2 0.2]),
title('Filter along x');
subplot(1, 3, 2), imshow(filterYG, [-0.2 0.2]),
title('Filter along y');
subplot(1, 3, 3), imshow(filterXYG, [-0.2 0.2]),
title('Filter along x and y');

% calculate determinat of Hessian (DoH)

ImgDxx = imfilter(Imggrag, filterXG, 'replicate');
ImgDyy = imfilter(Imggrag, filterYG, 'replicate');
ImgDxy = imfilter(Imggrag, filterXYG, 'replicate');
ImgFilt = ImgDxx.*ImgDyy + ImgDxy.^2; %determinant

figure(3), clf;
imshow(ImgFilt, [-1 1]), title('determinant of Hessian');

% find extrama (local maxima)
% ImgFilt(find(ImgFilt < 0.5*max(F)))
% ImgFilt = bwareaopen(ImgFilt, 1000);