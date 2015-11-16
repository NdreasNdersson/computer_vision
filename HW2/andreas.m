clc
clearvars

a = [ 1 1 1 0;...
    2 0 0 1;...
    0 1 1 0;...
    0 0 0 1]*1/9;

b = a';

contrast_a = 0;
for i = 0:3
    for j = 0:3
        contrast_a = contrast_a + (i-j)^2 * a(i+1,j+1);
    end
end

contrast_b = 0;
for i = 0:3
    for j = 0:3
        contrast_b = contrast_b + (i-j)^2 * b(i+1,j+1);
    end
end

contrast_a
contrast_b