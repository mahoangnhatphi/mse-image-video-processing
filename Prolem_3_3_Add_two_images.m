% Prolem 3_3 Add two images
clear, clc, close all;

% load images
I1 = imread('messi.jpg');
I1 = imresize(I1, [183 275]);
I2 = imread('ronaldo.jpg');
I_and = bitand(I1, I2);

%plot image
subplot(1, 2, 1), imshow(I1), title('Messi');
subplot(1, 2, 2), imshow(I2), title('Ronaldo');
figure
imshow(I_and, []), title('AND image');
imwrite(I_and, 'AND image.jpg');
