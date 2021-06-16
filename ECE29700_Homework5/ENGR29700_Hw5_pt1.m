%Homework 5 part 1 by Luke Nasby

A = rand(10);
B = zeros(10);
C = zeros(10);
%C is a binary array, and B is the array of values between .25 and .75
for i = 1:1:10
    for j = 1:1:10
        if (A(j,i) > .25) && (A(j,i) < .75)
            B(j,i) = A(j,i);
            C(j,i) = 1;
        end
    end
end

plot(B,C, "r--*", 'LineWidth',4);
grid on;
xlabel("value of X")
ylabel("value of Y")
title("Total number of elements in A between 0.25 and 0.75 are: X");