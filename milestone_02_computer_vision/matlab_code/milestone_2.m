%% ECE 4950 Fall 2026 Milestone 2
% Group 18, Elijah Jarrett
close all;
clear;
clc;

%% Initilize webcam
% imaqreset;
% webcam = 1;
% vid = videoinput('winvideo', webcam, 'MJPG_640x480'); % Choose the camera in 2 arg
% set(vid, 'TriggerRepeat', Inf);
% vid.ReturnedColorSpace = 'rgb';
% vid.FramesPerTrigger = 1;
% vid.FrameGrabInterval = 1;
% preview(vid);

%% Gather background image and current image
fprintf("Video started\n")
fprintf("Press key to take background image\n\n")
% pause;
gameState.bgImg = imread('NoiseBackground.png');
% gameState.bgImg = getsnapshot(vid);
gameState.bgSize = size(gameState.bgImg);

fprintf("Background successfully taken\n")
fprintf("Press key to take current image\n")
% pause;
gameState.currImg = imread("StickersWithNoise.PNG");
% gameState.currImg = getsnapshot(vid);

%% Initial image processing & bw transformation
colorThreshold = 30;
gameState.diffImg = gameState.bgImg - gameState.currImg;
gameState.diffImgBw = gameState.diffImg;

% Find updated pixels
for row = 1:gameState.bgSize(1)
    for col = 1:gameState.bgSize(2)
        gameState.diffImgBw(row, col) = any(gameState.diffImgBw(row, col, :) > colorThreshold);
    end
end
gameState.diffImgBw = any(gameState.diffImgBw, 3); % Turns to Bw

% Erode and Dilate to get rid of noise
% SE = strel('disk', 20);
% SD = strel('disk', 10);
% gameState.diffImgBw = imerode(gameState.diffImgBw, SE);
% gameState.diffImgBw = imdilate(gameState.diffImgBw, SD);

figure();
imshow(gameState.diffImgBw);
title('Detected Motion');

%% Get position and basic info from processed difference
gameState.diffProp = regionprops('table', gameState.diffImgBw, 'all'); % Gets all properties
gameState.stickerPos = gameState.diffProp.Centroid;
gameState.stickerNum = height(gameState.stickerPos);
gameState.stickerBox = gameState.diffProp.BoundingBox;

%% Get color from curr image
gameState.colorKey = dictionary(["Red", "Orange", "Yellow", "Green", "Cyan", "Blue", "Magenta"], [0.0, 0.08, 0.16, 0.33, 0.5, 0.66, 0.83]);
gameState.stickerColor = strings(gameState.stickerNum, 1);
rgbVal = zeros(gameState.stickerNum, 3);

% get rgb value from centroid location
for row = 1:gameState.stickerNum
    X = round(gameState.stickerPos(row, 1));
    Y = round(gameState.stickerPos(row, 2));
    rgbVal(row, :) = double(reshape(gameState.currImg(Y, X, :), 1, 3));
end

% switch rgb to hsv for better color recognition
hsv = rgb2hsv(rgbVal / 255);
hue = hsv(:, 1);
colorNames = keys(gameState.colorKey);
colorHues = values(gameState.colorKey);

% finds nearest color
for row = 1:gameState.stickerNum
    d = abs(hue(row) - colorHues);
    d = min(d, 1 - d);
    [~, nearestColor] = min(d);
    gameState.stickerColor(row) = colorNames(nearestColor);
end

%% Get shape from curr image
gameState.stickerShape = strings(gameState.stickerNum, 1);
circularity = gameState.diffProp.Circularity;
extent = gameState.diffProp.Extent;

for obj = 1:gameState.stickerNum
    if (circularity(obj) > 0.85) && ((0.6 < extent(obj)) && (extent(obj) < 0.9))
        gameState.stickerShape(obj) = "Circle";
    elseif (circularity(obj) < 0.9) && (extent(obj) > 0.9)
        gameState.stickerShape(obj) = "Square";
    elseif (circularity(obj) < 0.7) && (extent(obj) < 0.55)
        gameState.stickerShape(obj) = "Triangle";       
    else
        gameState.stickerShape(obj) = "Unknown";
    end
end

%% Print processed information to figure
figure();
imshow(gameState.currImg)
hold on

plot(gameState.stickerPos(:,1), gameState.stickerPos(:,2), 'k.', 'MarkerSize', 20) % Draw position centriod dots

for k = 1:height(gameState.stickerBox)
    rectangle('Position', gameState.stickerBox(k,:), 'EdgeColor', 'k', 'LineWidth',2) % Draw Bounding box
end

% Number objects
labelX1 = gameState.stickerPos(:,1) - 40;
labelY1 = gameState.stickerBox(:,2) - 15;

for k = 1:gameState.stickerNum
    text(labelX1(k), labelY1(k), string(k), ...
        'Color', 'k', ...
        'FontWeight', 'bold', ...
        'FontSize', 10)
end

% Draw object color
labelX2 = gameState.stickerPos(:,1); % Centered horizontally on the sticker
labelY2 = gameState.stickerBox(:,2) - 15;
text(labelX2, labelY2, gameState.stickerColor, ...
    'Color', 'k', ...
    'FontWeight', 'bold', ...
    'FontSize', 10)

% Draw object shape
labelX3 = gameState.stickerPos(:,1) - 25;
labelY3 = gameState.stickerBox(:,2) - 35;
text(labelX3, labelY3, gameState.stickerShape, ...
    'Color', 'k', ...
    'FontWeight', 'bold', ...
    'FontSize', 10)

hold off
title('Centroids, Boxes, Colors, and Shapes')
drawnow