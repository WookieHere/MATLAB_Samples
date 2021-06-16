clear vars;

%Luke Nasby 9/14/2020
%This code creates an array of arbitrary values and stores them into
%different file types.

size = 5;
init = zeros(size);

for c = 1:size
    for r = 1:size
        init(r,c) = (1/(r+c-1)*1/(r+c-1));       %squared
    end
end

clear init;
load ENGR297_Hw3_pt1.txt;
A = init;
clear init;
load ENGR297_Hw3_pt1_squared.m;
B = init;
clear init;
load ENGR297_Hw3_pt1_squared.xlsx;
C = init;
clear init;