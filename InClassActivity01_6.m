% Read the grayscale image
image = imread('nature.jpg');

% Display the original grayscale image
figure;
imshow(image);
title('Original Grayscale Image');

% Flip the image left to right using fliplr
flippedImage = fliplr(image);

% Display the flipped image
figure;
imshow(flippedImage);
title('Flipped Image (Left to Right)');

% Rotate the image clockwise by 180 degrees using imrotate
rotatedImage = imrotate(image, 180);

% Display the rotated image
figure;
imshow(rotatedImage);
title('Rotated Image (Clockwise 180 Degrees)');

% Crop the central half of the image using imcrop
[rows, columns] = size(image);
cropRect = [columns/4, rows/4, columns/2, rows/2];
croppedImage = imcrop(image, cropRect);

% Display the cropped image
figure;
imshow(croppedImage);
title('Cropped Image (Central Half)');

