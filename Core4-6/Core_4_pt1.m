X = randn(1,2000);

M1 = mean(X);
M2 = median(X);
M3 = std(X);


bin_array = [min(X):0.1:max(X)];

[Y_val, X_val] = hist(X, bin_array);

Y_norm = Y_val/length(X);

%This is just organizing the plots

figure(1);
subplot(2,1,1); bar(X_val,Y_norm);
xlabel('X_Vals');
ylabel('no. of X');
title('Histogram (normal)')



subplot(2,1,2); plot(X_val,cumsum(Y_norm));
xlabel('X_Vals');
ylabel('no. of X');
title('Histogram (normal)')


%This is a copy/paste of the above stuff but with Rand instead of Randn()

X = rand(1,2000);

M1 = mean(X);
M2 = median(X);
M3 = std(X);
    
bin_array = [min(X):0.01:max(X)];

[Y_val, X_val] = hist(X, bin_array);

Y_norm = Y_val/length(X);

figure(2);
subplot(2,1,1); 
bar(X_val,Y_norm);
xlabel('X vals');
ylabel('no. of X');
title('Histogram (sum)')

subplot(2,1,2); plot(X_val,cumsum(Y_norm));
xlabel('X vals');
ylabel('no. of X');
title('Histogram (sum)')


