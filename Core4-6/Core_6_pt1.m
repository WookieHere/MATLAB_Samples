X = [-2*pi:0.1:2*pi]; 

figure(1);
subplot(2,2,1); 
plot(X,sin(X),'--');
hold on;
grid;
xlabel('Values of X');
ylabel('Values of sin(X)');
title('sin(X) and 2nd order poly');


C = polyfit(X,sin(X),2);

Y = polyval(C,X);

subplot(2,2,1); 
plot(X,Y);
hold off;

% Now calculate the squared error between each value for these two plots

ERROR = sin(X) - Y;
SQR_ERROR = ERROR.^2;
TOTAL_SQR_ERROR = sum(SQR_ERROR)
text(-9.5,0.5,'TOTAL SQUARED ERROR = 53.3593'); 

%Is there a way to get the error without just running it ahead of time? 
%I tried text(-9.5,0.5,'TOTAL SQUARED ERROR = ' + TOTAL_SQR_ERROR);  but
%that does nothing

C = polyfit(X,sin(X),3);
Y = polyval(C,X);

subplot(2,2,2); 
plot(X,sin(X),'--');
hold on;
subplot(2,2,2); plot(X,Y);
grid;
xlabel('Values of X');
ylabel('Values of polynomial');
title('sin(X) and 3rd order poly');
hold off;

ERROR = sin(X) - Y;
SQR_ERROR = ERROR.^2;
TOTAL_SQR_ERROR = sum(SQR_ERROR)
text(-9.5,0.5,'TOTAL SQUARED ERROR = 45.1566');


C = polyfit(X,sin(X),4);
Y = polyval(C,X);

subplot(2,2,3); 
plot(X,sin(X),'--');
hold on;
subplot(2,2,3); plot(X,Y);
grid;
xlabel('Values of X');
ylabel('Values of polynomial');
title('sin(X) and 4th order poly');
hold off;

ERROR = sin(X) - Y;
SQR_ERROR = ERROR.^2;
TOTAL_SQR_ERROR = sum(SQR_ERROR)
text(-9.5,0.5,'TOTAL SQUARED ERROR = 45.1137');


C = polyfit(X,sin(X),5);
Y = polyval(C,X);

subplot(2,2,4); 
plot(X,sin(X),'--');
hold on;
subplot(2,2,4); plot(X,Y);
grid;
xlabel('Values of X');
ylabel('Values of polynomial');
title('sin(X) and 5th order poly');
hold off;

ERROR = sin(X) - Y;
SQR_ERROR = ERROR.^2;
TOTAL_SQR_ERROR = sum(SQR_ERROR)
text(-9.5,0.5,'TOTAL SQUARED ERROR = 6.0073');

figure(2);


C = polyfit(X,sin(X),6);
Y = polyval(C,X);

subplot(2,2,1); 
plot(X,sin(X),'--');
hold on;
subplot(2,2,1); 
plot(X,Y);
grid;
xlabel('Values of X');
ylabel('Values of polynomial');
title('sin(X) and 6th order poly');
hold off;

ERROR = sin(X) - Y;
SQR_ERROR = ERROR.^2;
TOTAL_SQR_ERROR = sum(SQR_ERROR)
text(-9.5,0.5,'TOTAL SQUARED ERROR = 5.9861');

C = polyfit(X,sin(X),7);
Y = polyval(C,X);

subplot(2,2,2); 
plot(X,sin(X),'--');
hold on;
subplot(2,2,2); plot(X,Y);
grid;
xlabel('Values of X');
ylabel('Values of polynomial');
title('sin(X) and 7th order poly');
hold off;

ERROR = sin(X) - Y;
SQR_ERROR = ERROR.^2;
TOTAL_SQR_ERROR = sum(SQR_ERROR)
text(-9.5,0.5,'TOTAL SQUARED ERROR = 0.1899');


C = polyfit(X,sin(X),8);
Y = polyval(C,X);

subplot(2,2,3); 
plot(X,sin(X),'--');
hold on;
subplot(2,2,3); plot(X,Y);
grid;
xlabel('Values of X');
ylabel('Values of polynomial');
title('sin(X) and 8th order poly');
hold off;

ERROR = sin(X) - Y;
SQR_ERROR = ERROR.^2;
TOTAL_SQR_ERROR = sum(SQR_ERROR)
text(-9.5,0.5,'TOTAL SQUARED ERROR = 0.1885');

C = polyfit(X,sin(X),9);
Y = polyval(C,X);

subplot(2,2,4); 
plot(X,sin(X),'--');
hold on;
subplot(2,2,4); plot(X,Y);
grid;
xlabel('Values of X');
ylabel('Values of polynomial');
title('sin(X) and 9th order poly');
hold off;

ERROR = sin(X) - Y;
SQR_ERROR = ERROR.^2;
TOTAL_SQR_ERROR = sum(SQR_ERROR)
text(-9.5,0.5,'TOTAL SQUARED ERROR = 0.0021');

%Much of this was jsut cpy/paste from the last part and manually checking
%error then adding it in text (about halfway through I just did it from
%solutions to be honest.
 
