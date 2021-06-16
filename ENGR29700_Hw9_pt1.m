%Luke Nasby
%This lab is meant to show basic image processing by isolating types of
%coins on a dark background.

img = imread("coins.jpg");
img = rgb2gray(img);
bin_img = imadjust(img);
bin_img = bin_img > 255/2.5;
image_coins = bin_img;

[centersDimes, radiiDimes, metric0] = imfindcircles(image_coins,[10 25]);
[centersPennies, radiiPennies, metric1] = imfindcircles(image_coins,[23 30]);  
%These are isolating different ranges of radii
[centersNickles, radiiNickles, metric2] = imfindcircles(image_coins,[26 30]);
[centersQuarters, radiiQuarters, metric3] = imfindcircles(image_coins,[30 50]);

if imfindcircles(image_coins, [10 50]) == 0
    print("no coins present");  %if no circles are found
end

imshow(img);
viscircles(centersDimes, radiiDimes,'EdgeColor','b');
viscircles(centersPennies, radiiPennies,'EdgeColor','r');
viscircles(centersNickles, radiiNickles,'EdgeColor','y');   %display with different colors
viscircles(centersQuarters, radiiQuarters,'EdgeColor','g');


