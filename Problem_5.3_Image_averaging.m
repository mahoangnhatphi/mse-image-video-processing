% Problem 5.3 Image averaging
clear, clc, close all;

% load image
Img = im2double(rgb2gray(imread('quadnight.jfif')));

% repeat over different number of samples
nArray = [1 2 8 16 32 64];

for i = 1 : numel(nArray)
  N = nArray(i);
  avgImg = zeros(size(Img)); % initialize an empty image

  % add Gausion noise to each image, accumulate this image
  for j = 1 : N
    noisyImg = imnoise(Img, 'gaussian', 0, 0.01);
    avgImg = avgImg + noisyImg;
  end % end of j

  %show image case i
  avgImg = avgImg / N;
  subplot(2, numel(nArray)/2, i);
  imshow(avgImg), title([num2str(N), ' image(s)'])
end
