% Exercise 2: Coins detection with Defined SE
clear, clc, close all;

% load image
Img = imread('coins.png');

% a. binarize image
level = graythresh(Img);
%bwImg = imbinarize(Img, level);
bwImg = im2bw(Img, level);

figure, clf;
imshow(bwImg), title('Binarized image');

% b. choose any se (i.e., disk)
se = strel('sphere', 2);
Img_dilated = imdilate(Img, se);
Img_eroded = imerode(Img, se);

edge1 = Img_dilated - Img;
edge2 = Img - Img_eroded;
edge3 = edge1 + edge2;

figure, clf;
imshow(edge3), title('Detected Edges using Sphere');

% c. create your own se
se1 = [0 1 1 0; 1 0 0 1; 1 0 0 1; 0 1 1 0];
Img_dilated = imdilate(Img, se);
Img_eroded = imerode(Img, se);

edge1 = Img_dilated - Img;
edge2 = Img - Img_eroded;
edge3 = edge1 + edge2;

figure, clf;
imshow(edge3), title('Detected Edges using Own SE');

