%% ECE 4950 Fall 2026 Milestone 2
% Group 18
close all;
clear;
clc;

%% Testing for right now
camList = webcamlist;
camName = camList{1};
cam = webcam(camName);

gameState.wellLoc = [0,0,1,1,2,2,3,3]; % X and Y locations??
gameState.originalBackground = snapshot(cam);

figure();
imshow(gameState.originalBackground)
title('Test Image Save')

%% Testing continuous video feed
imaqreset;
webcam = 2;
vid = videoinput("winvideo", webcam, "MJPG_640x480"); % Choose the camera in 2 arg
set(vid, 'TriggerRepeat', Inf);
vid.FramesPerTrigger = 1;
vid.FrameGrabInterval = 1;

window = figure('Name', 'Live Feed'); % Create camera viewer window
start(vid)
while true
    flushdata(vid);
    if ~ishandle(window), break; end % If window is closed while loop stops
    data = getdata(vid, 1);
    gameState.currImg = data(:,:,:,1); % Sets the currImg frame (row,col,color,frame index)
    imshow(gameState.currImg)
    title('Test Image')
    drawnow()
end

stop(vid)
delete(vid)

figure()
imshow(gameState.currImg) % Show last frame before camera turned off
title('Last Live Camera Frame')

%% MAIN CODE STARTS HERE!!! Define and display needed starting images
imaqreset;
webcam = 2;
vid = videoinput("winvideo", webcam, "MJPG_640x480"); % Choose the camera in 2 arg
set(vid, 'TriggerRepeat', Inf);
vid.FramesPerTrigger = 1;
vid.FrameGrabInterval = 1;

% start(vid)
fprintf("Video started, Press key to take background image\n")
pause;

flushdata(vid);
data = getdata(vid, 1);
gameState.bgImg = data(:,:,:,1);
imwrite(gameState.bgImg, "background.png")
gameState.bgSize = size(gameState.bgImg);

% gameState.bgImg = imread('test_boards\game_board_test_set_Page_01.png');
% gameState.bgSize = size(gameState.bgImg);

fprintf("Background picture taken, Press Key to continue\n")
pause;

flushdata(vid);
data = getdata(vid, 1);
gameState.currImg = data(:,:,:,1);
gameState.diffImg = gameState.bgImg - gameState.currImg;
stop(vid)
closepreview(vid)
delete(vid)
% gameState.bgImg = imread('test_boards\game_board_test_set_Page_01.png');
% gameState.bgSize = size(gameState.bgImg);
% gameState.currImg = imread("test_boards\game_board_test_set_Page_02.png");
gameState.diffImg = gameState.bgImg - gameState.currImg;

figure();
imshow(gameState.bgImg); 
title('Background Image');

figure();
imshow(gameState.currImg);
title('Current Image');

figure();
imshow(gameState.diffImg);
title('Background Subtraction Image');

%% Grayscale diffImg to get locations
gameState.diffImgBw = gameState.diffImg;

% Properly gray scales the difference between background and current image 
for row = 1:gameState.bgSize(1)
    for col = 1:gameState.bgSize(2)
        og_r = gameState.diffImg(row,col,1);
        og_g = gameState.diffImg(row,col,2);
        og_b = gameState.diffImg(row,col,3);
        
        % This is just a test on the stickers.png
        % If any RGB value is above 2 pixel is set to 255
        if og_r > 2 || og_g > 2 || og_b > 2
            gameState.diffImgBw(row,col,:) = 255;
        else
            gameState.diffImgBw(row,col,:) = 0;
        end
    end
end

% Set Morphological Operation
SE = strel('disk',10);

gameState.diffImgBw = any(gameState.diffImgBw, 3); % Turns into binary

gameState.diffImgBw = imerode(gameState.diffImgBw, SE);
figure();
imshow(gameState.diffImgBw);
title('Binary Image Erosion');

% Set Morphological Operation
SE = strel('disk',15);

gameState.diffImgBw = imdilate(gameState.diffImgBw, SE);
figure();
imshow(gameState.diffImgBw);
title('Binary Image Dilate');



figure();
imshow(gameState.diffImgBw)
title('Gray Scale of difference BW')

%% Identify number of items and other info
gameState.diffProp = regionprops('table',gameState.diffImgBw,'all');
gameState.stickerNum = height(gameState.diffProp.Centroid); % Num of items is grabbed from amount of centroids
gameState.stickerPos = gameState.diffProp.Centroid; % Center dot coordinates
gameState.stickerBox = gameState.diffProp.BoundingBox; % Bounding boxes for shapes

%% Identify colors
gameState.colorKey = dictionary(["Red", "Orange", "Yellow", "Green", "Cyan", "Blue", "Magenta"], [0.0, 0.08, 0.16, 0.33, 0.5, 0.66, 0.83]);
gameState.stickerColor = strings(gameState.stickerNum, 1);
rgbvalues = zeros(gameState.stickerNum, 3);

% Grabs the rgb value from currImg using the shape centroid location 
for k = 1:gameState.stickerNum
    centerX = round(gameState.stickerPos(k,1));
    centerY = round(gameState.stickerPos(k,2));
    rgbvalues(k,:) = double(reshape(gameState.currImg(centerY,centerX,:), 1, 3));
end

% Turns rgb into a hue value to determine color easier
centerHSV = rgb2hsv(rgbvalues / 255);
hue = centerHSV(:, 1);
colorNames = keys(gameState.colorKey);
refHue = values(gameState.colorKey);

% Determine color name by hue value
for k = 1:gameState.stickerNum
    d = abs(hue(k) - refHue);
    d = min(d, 1 - d);
    [~, colorIndex] = min(d);
    gameState.stickerColor(k) = colorNames(colorIndex);
end

%% Identify Shapes
gameState.stickerShape = strings(gameState.stickerNum, 1);
circularity = gameState.diffProp.Circularity;
extent = gameState.diffProp.Extent;

for k = 1:gameState.stickerNum
    if (circularity(k) > 0.85) && ((0.6 < extent(k)) && (extent(k) < 0.9))
        gameState.stickerShape(k) = "Circle";
    elseif (circularity(k) < 0.9) && (extent(k) > 0.9)
        gameState.stickerShape(k) = "Square";
    elseif (circularity(k) < 0.7) && (extent(k) < 0.55)
        gameState.stickerShape(k) = "Triangle";       
    else
        gameState.stickerShape(k) = "Unknown";
    end
end

%% Identify Position
figure();
imshow(gameState.currImg)
hold on

plot(gameState.stickerPos(:,1), gameState.stickerPos(:,2), 'k.', 'MarkerSize', 20) % Draw centroid

for k = 1:height(gameState.stickerBox)
    rectangle('Position', gameState.stickerBox(k,:), 'EdgeColor', 'k', 'LineWidth',2) % take Bounding box and draw it onto 
end

% Number shape
labelX1 = gameState.stickerPos(:,1) - 40;
labelY1 = gameState.stickerBox(:,2) - 15;
for k = 1:gameState.stickerNum
    text(labelX1(k), labelY1(k), string(k), ...
        'Color', 'k', ...
        'FontWeight', 'bold', ...
        'FontSize', 10)
end

% Shape color written above object
labelX2 = gameState.stickerPos(:,1); % Centered horizontally on the sticker
labelY2 = gameState.stickerBox(:,2) - 15;
text(labelX2, labelY2, gameState.stickerColor, ...
    'Color', 'k', ...
    'FontWeight', 'bold', ...
    'FontSize', 10)

% Shape type written above object
labelX3 = gameState.stickerPos(:,1) - 25;
labelY3 = gameState.stickerBox(:,2) - 30;
text(labelX3, labelY3, gameState.stickerShape, ...
    'Color', 'k', ...
    'FontWeight', 'bold', ...
    'FontSize', 10)

hold off
title('Centroids, Boxes, Colors, and Shapes')
drawnow

%% Brainstorming how the frame grabbing should happen
% 1. On start up, camera initial background picture is captured.
% 2. after that happens, patterns and washers are loaded to the game board
% 3. pictures and computations done until desired position is achieved
% 4. 
