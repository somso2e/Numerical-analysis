% format short
close all;
clear;
syms y x
% f = log(y) / log(2) - 3;
% g = (6 * y - 3^(x + 2)) / 5;

f = log(y) / log(3) - 2;
g = 2^(x + 3) / 20 + 0.95 * y;

it = 10;

x1 = zeros(1, it);
y1 = zeros(1, it);

x1(1) = 0; y1(1) = 5;

for i = 1:it
    x1(i + 1) = subs(f, y, y1(i));
    y1(i + 1) = subs(subs(g, x, x1(i)), y, y1(i));
    a = abs(x1(i + 1) - x1(i));
    b = abs((y1(i + 1) - y1(i)));
    fprintf('%d:\tx:%.3f\ty:%.3f\n', i, x1(i + 1), y1(i + 1));
    if (a < 0.005 && b < 0.005)
        disp(i)
        break
    end
end
