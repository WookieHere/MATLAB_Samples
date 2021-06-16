%Luke Nasby
%ENGR29700_Hw7_pt1
%This lab simulates coin flips using the randn() and rand() commands with
%varying mean values.

clear all;

X_randi = randi(2,1000,1);
X_randn = randn(1000);
X_H_0 = X_randn + 1.5
X_H_1 = X_randn + 1;
X_H_2 = X_randn + 2;
H = 0;
T = 0;
H_1 = 0;
T_1 = 0;
H_2 = 0;
T_2 = 0;
for i = 1:1:1000
    if(X_H_0(i) >= 1.5)
        H = H + 1;
    else
        T = T + 1;
    end
    if(X_H_1(i) >= 1)
        H_1 = H_1 + 1;
    else
        T_1 = T_1 + 1;
    end
    if(X_H_2(i) >= 2)
        H_2 = H_2 + 1;
    else
        T_2 = T_2 + 1;
    end
end

subplot(2,2,1);
histogram(X_randi);
title("randi() command");
subplot(2,2,2);
histogram(X_H_0);
title("randn() command shifted 1.5");
subplot(2,2,3);
histogram(X_H_1);
title("randn() command shifted 1");
subplot(2,2,4);
histogram(X_H_2);
title("randn() command shifted 2");