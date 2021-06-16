I = -2*pi;
X = [];

%This is the same as Core5 but with loops instead



while I <= 2*pi,

	X = [X I];
	I = I + 0.1;
end;


figure(1);
plot(X,sin(X),'*');
hold on;

I = 1;
TOTAL_SQR_ERROR = 100.0;

while TOTAL_SQR_ERROR > 0.01,

	I = I+1;

	C = polyfit(X,sin(X),I);

	Y = polyval(C,X);
	
	plot(X,Y);

	ERROR = sin(X) - Y;
	SQR_ERROR = ERROR.^2;
	TOTAL_SQR_ERROR = sum(SQR_ERROR);


end;

grid;
xlabel('Values of X');
ylabel('Values of sin(X)');
title('TOTAL LEAST SQUARES ERROR less than 0.01');

hold off;

%Had to look at the solutions for how you guys wanted this to be done. My
%original method was to cut it in half every iteration etc. to test for
%error but it wouldn't work for some reason
