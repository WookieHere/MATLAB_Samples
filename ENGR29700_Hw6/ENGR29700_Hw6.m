%Luke Nasby
%ENGR29700_Hw6_pt1
%THe purpose of this part is to be an introduction to manipulating
%expressions with calculas and formatting an output with them.

clear all;

syms X
Equation_1 = (-2*X)/(1+(X^2)^2);
indef_integral = int(Equation_1);
integral_1 = int(Equation_1,0,1);
Derivitive = diff(Equation_1);

subplot(3,1,1);
fplot(Equation_1);
title("The function to be generated is (-2*X)/(1+(X^2)^2)");

subplot(3,1,2)
fplot(indef_integral);
title("Integral of function");
txt_0 = ("The area of integration between X=0 and X=1 is -pi/4");
text(0, 0,txt_0);

subplot(3,1,3);
hold on;
fplot(Equation_1);
fplot(Derivitive);
fplot(indef_integral);
hold off;
title("Equation vs Integral vs Derivitive");
legend('Equation', 'Derivitive', 'Indef_integral');
txt = '\downarrow Equation vs Integral vs Derivitive';
text(0,0,txt);