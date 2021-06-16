clear vars;

A = rand(10,10,1);
B = [A(:,5), A(:,4), A(:,3), A(:,2), A(:,1), A(:,10), A(:,9), A(:,8), A(:,7), A(:,6)];
C = A*B;
D = A/C;

subplot(2,1,1);
plot(A,B);
str1 = "A vs. B";
title(str1);
subplot(2,1,2);
plot(D, B);

str2 = "D vs. B";

title(str2);