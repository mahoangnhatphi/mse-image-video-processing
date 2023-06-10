imfinfo('./nature.png')

#im1 = im2uint8(imread('nature.png'))

I = imread('./nature.png');

imshow(rgb2gray(I));

I1 = rgb2gray(I);


figure, imshow(I1, [])

figure, imshow(I1, [100 160])


figure, imshow(I1, [127 128])

imshow(I1);
imshow(imadjust(I1));

im
