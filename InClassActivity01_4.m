% Read the grayscale image
image = imread('nature.jpg');

% Convert the image to double precision for quantization
image = im2double(image);

% Define the bit depths for quantization
bitDepths = [2, 4, 6, 8];

% Display the original grayscale image
figure;
imshow(image);
title('Original Grayscale Image');

% Iterate over the specified bit depths
for i = 1:length(bitDepths)
    % Calculate the quantization level based on the bit depth
    levels = 2^bitDepths(i);
    
    % Perform quantization
    quantizedImage = imquantize(image, linspace(0, 1, levels));
    
    % Convert the quantized image back to uint8 for visualization
    quantizedImage = uint8(quantizedImage * (255 / levels));
    
    % Display the quantized image
    figure;
    imshow(quantizedImage);
    title(sprintf('Quantized Image (%d bits)', bitDepths(i)));
end
