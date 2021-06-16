X = [-2*pi:0.1:2*pi]; 

% Plot X as a function of sin(X) on a single graph page

figure(1);
plot(X,sin(X),'*'); %Had no clue this was a thing
hold on;

% start the FOR LOOP to evaluate the 2nd-9th order polynomials

for I = 2:9,

	C = polyfit(X,sin(X),I);

	Y = polyval(C,X);
	
	plot(X,Y);
end;

grid;
xlabel('Values of X');
ylabel('Values of sin(X)');
title('sin(X) and 2nd through 9th order polynomial for sin(X)');

hold off;
%I wanted to do this in Core4 and now I'm a little annoyed but oh well.