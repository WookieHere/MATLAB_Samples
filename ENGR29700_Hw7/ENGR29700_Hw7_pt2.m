%Luke Nasby
%ENGR29700_hw7_part2
%This part uses the rand() command to
%simulate random numbers being multiplied by similar ones and observe the
%trends that are outputted.

clear all;

X_0 = rand(1000, 1);
X_1 = rand(1000, 1);
other_rand = rand(1000, 1);
X_2 = rand(1000, 1);
temp_rand = 0;

for i = 1:1:1000
    X_1(i) = (X_1(i) + other_rand(i))/2;
    for j = 1:1:10
        temp_rand = temp_rand + rand(1);
    end
    X_2(i) = temp_rand/10;
    temp_rand = 0;
end
%that could easily be done by just avg(X_1, other_rand) or something 
%but the instructions
%specify that I must use a loop for some reason.


subplot(3,1,1)
histogram(X_0);
grid on; 
xlabel("value of rand");
ylabel("frequency");
title("rand() function");
subplot(3,1,2);
histogram(X_1);
grid on;
title("mean of two random numbers");
xlabel("value of rand");
ylabel("frequency");
subplot(3,1,3);
histogram(X_2);
title("mean of 10 random numbers");
xlabel("value of rand");
ylabel("frequency");
grid on;
