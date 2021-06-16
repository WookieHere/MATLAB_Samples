clear all;

X = -4:0.1:4;

P = X.^3 - 2*X.^2 - 4.25*X + 7.5;

subplot(2,1,1); 
plot(X,P);
grid;
xlabel('Values of X');
ylabel('Values of P');
title('Poly key')

C = [1 -2 -4.25 7.5];

P = polyval(C,X);

%This is same as above but with polyval?

subplot(2,1,2); plot(X,P);
grid;
xlabel('Values of X');
ylabel('Values of P');
title('Poly key with polyval')

R = roots(C);

subplot(2,1,2);  hold;

plot(R(1),0,'X');
plot(R(2),0,'X');
plot(R(3),0,'X');

%The above only wirks with 'X', not sure how to make an 'R' appear there
%but whatever

text(-1,-40,'X marks root locations');



subplot(2,1,2);  
hold = 'off';

