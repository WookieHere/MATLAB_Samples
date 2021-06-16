size = 5;
init = zeros(size);

for c = 1:size
    for r = 1:size
        init(r,c) = (1/(r+c-1)*1/(r+c-1))       %squared
    end
end