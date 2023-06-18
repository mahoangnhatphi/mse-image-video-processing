%Problem 4_1 Contrast Enhancement
clear, clc, close all;

% load image
Img = imread('./swamp.jpg');

% a. contrast with identity transformation
%x = uint8(0:255);
%plot(x); xlim([0 255]); ylim([0 255]);
%Img_idt = x(Img + 1);
%figure
%subplot(1, 2, 1), imgshow(Img), title('Original Image');
%subplot(1, 2, 2), imgshow(Img_idt), title('Adjusted Image');

% b. constract with negative transformation
%Img_cpm = imcomplement(Img);
%figure
%subplot(1, 2, 1), imshow(Img), title('Original Image');
%subplot(1, 2, 2), imshow(Img_cpm), title('Adjusted Image');

% c. constract wwith logarihthm transpose transformation

%x = 0:255;c = 255/log(256);
%y = c * log(x + 1);
%plot(y)
%figure
%Img_log = uint8(y(Img+1))
%subplot(1, 2, 1), imshow(Img), , title('Original Image');
%subplot(1, 2, 2), imshow(Img_log), title('Adjusted Image');

%d. constract with inverse lograrithm transformation
x = 0:255; c = 255/log(256);
y = exp(x/c) - 1

%figure
%Img_invlog = uint8(y(Img + 1));
%subplot(1, 2, 1), imshow(Img), , title('Original Image');
%subplot(1, 2, 2), imshow(Img_invlog), title('Adjusted Image');

% e. Contrast with piecewise linear transformation
y(1:175) = 0:174
y(176:200) = 255;
y(201:256) = 200:255;

Img_pcslin = uint8(y(Img+1));

subplot(1, 3, 1), imshow(Img), , title('Original Image');
subplot(1, 3, 2), plot(y), axis tight, axis square;
subplot(1, 3, 3), imshow(Img_pcslin), title('Adjusted Image');

