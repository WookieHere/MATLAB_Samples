X = 1:100;

Y = X.^2;
Z = Y.^3;

%These are just the mesh setups

figure(1);

subplot(2,2,1); 
mesh(X,Y,Z'*X);
xlabel('Values of X');
ylabel('Values of Y = X^2');
title('3D of X, Y, Z*X, view(-37.5,30)')

%Some of the labeling was taken from the solutions, since this is hard to
%keep straight right away...

subplot(2,2,2); 
mesh(X,Y,Z'*X);
view(-57.5, 30); 
xlabel('Values of X');
ylabel('Values of Y = X^2');
title('3D of X, Y, Z*X, view(-57.5,30)')

subplot(2,2,3); mesh(X,Y,Z'*X);
view(-57.5, 45); 
xlabel('Values of X');
ylabel('Values of Y = X^2');
title('3D of X, Y, Z*X, view(-57.5,45)')

subplot(2,2,4); 
mesh(X,Y,Z'*X);
view(-75., 75); 
xlabel('Values of X');
ylabel('Values of Y = X^2');
title('3D of X, Y, Z*X, view(-75,75)')

%Second section

R = 1:10:1000;
C = [1e-9:10e-9:1e-6];
Z = R'*C;

%These are just the mesh setups

figure(2);

subplot(2,2,1); 
mesh(R,C,R'*C);
xlabel('Values of R');
ylabel('Values of C');
title('3D of R, C, R*C, view(-37.5,30)')

subplot(2,2,2); 
mesh(R,C,R'*C);
view(-57.5, 30); 
xlabel('Values of R');
ylabel('Values of C');
title('3D of R, C, R*C, view(-57.5,30)')

subplot(2,2,3); 
mesh(R,C,R'*C);
view(-57.5, 45); 
xlabel('Values of R');
ylabel('Values of C');
title('3D of R, C, R*C, view(-57.5,45)')

subplot(2,2,4); 
mesh(R,C,R'*C);
view(-75., 75); 
xlabel('Values of R');
ylabel('Values of C');
title('3D of R, C, R*C, view(-75,75)')
