% Problem 6_3
clear, clc, close all;

% load image
Img = im2double(imread('noisy_image.jfif'));

% LPF design
% step-1: construct a grid of (omega_x, omega_y)
[wx, wy] = meshgrid(-3:0.1:3, -3:0.1:3);

% step-2: compute frequency repsonse
type = '2d';
%type = '1d_horizontal';
%type = '1d_vertical';

if (strcmp(type, '2d') == 1)
  H = (1/25) * (1 + 2*cos(wx) + 2*cos(2*wx)) .* (1 + 2*cos(wy) +  2*cos(2*wy));
  h = 1/25 * ones(5,5);
elseif (strcmp(type, '1d_horizontal') == 1)
  H = (1/5) * (1 + 2*cos(wx) + 2*cos(2*wx));
  h = 1/25 * ones(5,5);
else
  H = (1 + 2*cos(wy) +  2*cos(2*wy));
  h = 1/25 * ones(5,5);
end

% step-3: plot magnitude of frequency response
figure, clf;
surf(wx/pi, wy/pi, abs(H));
axis([-1 1 -1 1 0 1]);
set(gca, 'XTick', -1 : 1/2 : 1);
set(gca, 'YTick', -1 : 1/2 : 1);
xlabel('\omega_x / \pi'); ylabel('\omega_y / \pi');
zlabel('| H (\omega_x, \omega_y |');

% apply the designed filter to noise image
Img_denoise = imfilter(Img, h, 'symmetric');
figure, clf;
subplot(1, 2, 1), imshow(Img), title('Noise Image');
subplot(1, 2, 2), imshow(Img_denoise), title('Denoise Image');

