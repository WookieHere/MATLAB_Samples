%Luke Nasby
%This lab is meant to show basic video processing in matlab. This is done
%by tracking the movement of a ball across a dark background.


video = VideoReader("soccer.mov");
frame_rate = video.FrameRate;
f0 = rgb2gray(video.read(20)) > 230;
f1 = rgb2gray(video.read(22)) > 230;;
f2 = rgb2gray(video.read(24)) > 230;;  %isolating white areas of frames
f3 = rgb2gray(video.read(26)) > 230;;
f4 = rgb2gray(video.read(28)) > 230;;

%[centers0, radii0, metric0] = imfindcircles(f0,[100 2500]);
%[centers1, radii1, metric1] = imfindcircles(f1,[10 25]);
%[centers2, radii2, metric2] = imfindcircles(f2,[10 25]);
%[centers3, radii3, metric3] = imfindcircles(f3,[10 25]);
%[centers4, radii4, metric4] = imfindcircles(f4,[10 25]);

bounds0 = bwboundaries(f0);
bounds1 = bwboundaries(f1);
bounds2 = bwboundaries(f2);
bounds3 = bwboundaries(f3);
bounds4 = bwboundaries(f4); %records boundaries (white areas) of frames

%imshow(f0);
hold on;
visboundaries(bounds0); %displaying boundaries
visboundaries(bounds1);
visboundaries(bounds2);
visboundaries(bounds3);
visboundaries(bounds4);
hold off;

seconds_passed = frame_rate * 8;
