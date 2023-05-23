function AAMask(workpath, oi, xprof, yprof, rprof)
%% Image Read
% Demo to create a circle mask over an image
% a gray scale image, have it extract only that part to a new image,
workspace;  % Make sure the workspace panel is showing.
fontSize = 16;
oiread = strcat(workpath, '\', oi);
CorrectedImage = imread(oiread); %m.file must be in the same folder with the image
subplot(2, 2, 1);
imshow(CorrectedImage, []);
title('Corrected Image', 'FontSize', fontSize);
set(gcf, 'Position', [50,50,800,800]); % Maximize figure.get(0, 'Screensize')[50,50,800,800]

%% Masking

[rNum,cNum,~] = size(CorrectedImage);


%// Define coordinates and radius
x1 = xprof;
y1 = yprof;
radius = rprof;

%// Generate grid with binary mask representing the circle. Credit to Jonas for original code.
[xx,yy] = ndgrid((1:rNum)-y1,(1:cNum)-x1)
binaryImage = (xx.^2 + yy.^2)<radius^2;


%% Analysis

% Display the mask.
subplot(2, 2, 2);
imshow(binaryImage);
title('Binary mask of the region', 'FontSize', fontSize);


% Calculate the area, in pixels, that they drew.
numberOfPixels1 = sum(binaryImage(:));
% Another way to calculate it that takes fractional pixels into account.
numberOfPixels2 = bwarea(binaryImage);
% Get coordinates of the boundary of the freehand drawn region.
structBoundaries = bwboundaries(binaryImage);
xy=structBoundaries{1}; % Get n by 2 array of x,y coordinates.
x = xy(:, 2); % Columns.
y = xy(:, 1); % Rows.
subplot(2, 2, 1); % Plot over original image.
hold on; % Don't blow away the image.
plot(x, y, 'LineWidth', 2);
drawnow; % Force it to draw immediately.
% Burn line into image by setting it to 255 wherever the mask is true.
burnedImage = CorrectedImage;
burnedImage(binaryImage) = 255;
% Display the image with the mask "burned in."
subplot(2, 2, 3);
imshow(burnedImage);
caption = sprintf('New image with\nmask burned into image');
title(caption, 'FontSize', fontSize);

% Mask the image and display it.
% Will keep only the part of the image that's inside the mask, zero outside mask.
blackMaskedImage = CorrectedImage;
blackMaskedImage(~binaryImage) = 0;
subplot(2, 2, 4);
imshow(blackMaskedImage);
title('Masked Outside Region', 'FontSize', fontSize);
imwrite(blackMaskedImage, strcat('M-', oi));


end






