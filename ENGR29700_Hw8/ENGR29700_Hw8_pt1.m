%Luke Nasby. 
%This lab is meant to demonstrate an understanding of ECE302 princliples
%and using the best fit graphs.

%txt = input("Enter_filename")
%excel = xlsread(txt);
excel = xlsread("HW8_p1_data.xlsx");


Mean = 112.75;
Standard_Deviation = 55.77;

text_mean = "Mean = 112.75";
text_Stand_Dev = "Standard_Deviation = 55.77";

x = 1:1:100;
x = x';
y = zeros(100,1);

for i = 1:1:100
    y(i) = excel(i,2);
end

scatter(x,y, 'g*');

fit_test = fit(X,Y,'line');

hold on;
plot(X, fit_test);
hold off;
