% Problem 3_1 Quantization
clear, clc, close all;

% load image 'nature.png'
Img = double(imread('lonely_tree.jpg'));
%Img = double(imread('nature.png'));

% Repeat with different number of bits
for noOfBit = 1 : 8
    %quantize to a given number of bits
    noOfLevel = 2 .^ noOfBit;
    levelGap = 256 / noOfLevel;
    fprintf('noOfBit: %i, noOfLevel: %i, levelGap: %i\n', noOfBit, noOfLevel, levelGap)
    quantizedImg = uint8(ceil(Img / levelGap) * levelGap - 1);

    %plot image
    subplot(2, 4, noOfBit);
    imshow(quantizedImg);

    % image caption and saving
    if noOfBit == 1
      name = [num2str(noOfBit) '-bit'];
    else
      name = [num2str(noOfBit) '-bits'];
    end

    title(name)
    imwrite(quantizedImg, ['Quantization_in_' name '.png'])
end % end of noOfBit
