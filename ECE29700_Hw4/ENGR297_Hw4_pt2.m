clear vars;

[NUM, TXT, RAW] = xlsread("HW4_willy.xlsx");

willy = TXT';
willy1 = strtrim(lower(willy));
willy2 = double(char(willy1));
X = willy2;
Y = willy2+10;
subplot(2,1,1);
hold on;
plot(X);
plot(Y);
xlim([0 size(X,1)])
ylim([0 size(X,2)])
title("The number of row and columns are: 55 and 14, respectively");
hold off;

subplot(2,1,2);
temp = char(willy1);
temp2 = upper(temp(:,1));
temp = temp(:,2:size(temp,2));

G = cat(2, temp2, temp);
G = double(G);
hold on;
plot(X);
plot(G);
xlim([0 size(X,1)])
ylim([0 size(X,2)])
title("X vs G");
hold off;