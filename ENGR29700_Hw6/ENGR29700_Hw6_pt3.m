%Luke Nasby
%ENGR29700_Hw6 pt3. This part is supposed to generate a function using
%input variables and graph them using fmesh.

clear all;

syms X Y
syms A B
%subs(A,2);
%subs(B,2);
A = 2;
B = 2;
Expr = (-X^2/A^2) + (Y^2/B^2);

fsurf(Expr);
title("Hyperbolic Paraboloid with A=2,B=2, (-X^2/A^2) + (Y^2/B^2)");
view(-60,10);

scale = A*X*exp(-X^2 - -Y^2);
Expr_scaled_1 = scale*Expr;
A = 1;
Expr_scaled_2 = scale*Expr + .5;

%Not sure how the taotals were supposed to be calculated. THis was my best
%guess
%Expr_fun = @(x,y) 1.*x.*exp(-x.^2 - -y.^2)*((-x.^2./1^2) + (y.^2./2^2));
%integral2(Expr_fun,-100,100,-100,100);

hold on;
fmesh(Expr_scaled_1);

fmesh(Expr_scaled_2);
hold off;
view(-7,7);
title({"Total volume using scale factor A: total_A", "Total volume using scale factor B: total_B", "Total volume difference using the two scale factors is: vol_diff"});
