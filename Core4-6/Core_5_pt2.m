X = [-2*pi:0.1:2*pi]; 

figure(1);
subplot(2,2,1); 
plot(X,sin(X),'--');
hold on;
grid;   %This turns it off? was in solution
xlabel('Values of X');
ylabel('Values of sin(X)');
title('sin(X) and 2nd order poly');

C = polyfit(X,sin(X),2);

%polyfit is like a linear regression model but for C order poly

Y = polyval(C,X);

subplot(2,2,1); 
plot(X,Y);
hold off;

%I'm like 99percent sure the next 7 steps can be done with a quick for
%loop, but here's it with a copy/paste type solution
C = polyfit(X,sin(X),3);
Y = polyval(C,X);

subplot(2,2,2); plot(X,sin(X),'--');
hold on;
subplot(2,2,2); plot(X,Y);
grid;
xlabel('Values of X');
ylabel('Values of polynomial');
title('sin(X) and 3rd order poly');
hold off;

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

C = polyfit(X,sin(X),5);
Y = polyval(C,X);

subplot(2,2,4); plot(X,sin(X),'--');
hold on;
subplot(2,2,4); plot(X,Y);
grid;
xlabel('Values of X');
ylabel('Values of polynomial');
title('sin(X) and 5th order poly');
hold off;

figure(2);

C = polyfit(X,sin(X),6);
Y = polyval(C,X);

subplot(2,2,1); 
plot(X,sin(X),'--');
hold on;
subplot(2,2,1); plot(X,Y);
grid;
xlabel('Values of X');
ylabel('Values of polynomial');
title('sin(X) and 6th order poly');
hold off;

C = polyfit(X,sin(X),7);
Y = polyval(C,X);

subplot(2,2,2); plot(X,sin(X),'--');
hold on;
subplot(2,2,2); plot(X,Y);
grid;
xlabel('Values of X');
ylabel('Values of polynomial');
title('sin(X) and 7th order poly');
hold off;

C = polyfit(X,sin(X),8);
Y = polyval(C,X);

subplot(2,2,3); plot(X,sin(X),'--');
hold on;
subplot(2,2,3); plot(X,Y);
grid;
xlabel('Values of X');
ylabel('Values of polynomial');
title('sin(X) and 8th order poly');
hold off;

C = polyfit(X,sin(X),9);
Y = polyval(C,X);

subplot(2,2,4); plot(X,sin(X),'--');
hold on;
subplot(2,2,4); plot(X,Y);
grid;
xlabel('Values of X');
ylabel('Values of polynomial');
title('sin(X) and 9th order poly');
hold off;

%Not sure why solution went to 9th order, but I went with it here. Also
%this sounds really useful for taylor series stuff just saying...
 
