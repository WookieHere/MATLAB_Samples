%Part 3 of homework 5

clear all;
clc;

[NUM,TXT,RAW] = xlsread('HW4_willy.xlsx');


willy = string(TXT);


%Part 2 of homework 5. By Luke Nasby

willy1 = lower(willy);
willy1 = erase(willy1,'     ');

willy2 = double(char(willy1));


[willy4,willy6] = willy_stuff(willy2);

function [willy4, willy6] = willy_stuff(willy2)




willy3 = willy2;
willy5 = willy2;
%instanciate the arrays for changing later

[rows,cols] = size(willy2);
willy4 = zeros(rows,cols);
willy6 = zeros(rows,cols);
%these will be binary arrays that are for graphing? 

for i = 1:1:cols
    for j = 1:1:rows
        if (willy2(j,i) == double('o')) || (willy2(j,i) == double('t'))
            willy3(j,i) = upper(willy3(j,i));
            %willy4(j,i) = willy3(j,i);
            willy4(j,i) = 1;
        else
            willy5(j,i) = upper(willy5(j,i));
            %willy6(j,i) = willy5(j,i);
            willy6(j,i) = 1;
        end
    end
end

plot(willy4,willy6,"ks",'LineWidth',4);
%title("“Total number of letters “o” and “t” are: X and Y, respectively”, where “X” and “Y” are the number of lower case letters “o” and “t” in willy2.")
xlabel("number of 'o'");
ylabel("number of 't'");
grid on;
end

