% 1
Img = imread('sea);

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
