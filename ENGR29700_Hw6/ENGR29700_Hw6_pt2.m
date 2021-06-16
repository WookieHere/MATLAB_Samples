%Luke Nasby
%ENGR29700_Hw6 pt2 The purpose of this part is to manipulate an expression
%to obtain it's integral and derivitive and graph them.

clear all;

syms X Y
Expression = X*exp(-X^2 - Y^2);
fun_expr = @(x,y) x.*exp(-x.^2 - y.^2);
f_top = integral2(fun_expr, 0,2.5,-2.5,2.5);
f_bottom = integral2(fun_expr, -2.5,0,-2.5,2.5);
f_all = integral2(fun_expr, -2.5,2.5,-2.5,2.5);

fsurf(Expression,[-2.5 2.5 -2.5 2.5]);
grid on;
view(-16, 16);

text_0 = "The volume of the bottom peak is: -.8842";
text_1 = "The volume of the top peak is: .8842";
text_2 = "The volume of both peaks is: 0";
title({text_0, text_1, text_2})