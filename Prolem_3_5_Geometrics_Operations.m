% Prolem 3_5 Geometrics Operations
clear, clc, close all;

% load image
Img  = imread('cameraman.tif');

% Rotation an angle = 45 degree
Ta = maketform('affine', ...
    [cosd(45) -sind(45) 0; sind(45) cosd(45) 0; 0 0 1]);

Imga = imtransform(Img, Ta);
figure
subplot(2, 2, 1), imshow(Imga)
title('Image rotated 45 degree');

%Scaling with a factor = 2.0
Tb = maketform('affine', ...
    [2.0 0 0; 0 2.0 0; 0 0 1]);

Imgb = imtransform(Img, Tb);
subplot(2, 2, 2), imshow(Imgb)
title('Image scaled with factor 2.0');

% Translation 30 pixels on x and 20 pixels on y
xform = [1 0 0; 0 1 0; 30 20 1];
Tc = maketform('affine', xform);
Imgc = imtransform(Img, Tc, ...
    'XData', [1 size(Img, 2) + xform(3,1)], ...
    'YData', [1 size(Img, 1) + xform(3,2)], ...
    'FillValues', 128);
subplot(2, 2, 3), imshow(Imgc)
title('Image Translation 30 pixels on x and 20 pixels on y');

% Shearing
Td = maketform('affine', [1 3 0; 2 1 0; 0 0 1]');

Imgd = imtransform(Img, Td);
subplot(2, 2, 4), imshow(Imgd)
title('Image Shearing with factor [2, 3]');
