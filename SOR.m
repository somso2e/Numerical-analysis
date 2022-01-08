clc
clear;
format short
syms x y z
eq = [
    4 * x + 3 * y == -24;
    3 * x + 4 * y - 1 * z == 30;
    -1 * x + 0 * y + 4 * z == 24
    ];

init = [1 1 1];
it = 7;

omega = 1.25;

eq = [
    omega * solve(eq(1), x) + (1 - omega) * x;
    omega * solve(eq(2), y) + (1 - omega) * y;
    omega * solve(eq(3), z) + (1 - omega) * z
    ];
disp(eq)

for i = 1:it
    init(1) = round(subs(eq(1), [x y z], init), 3);
    init(2) = round(subs(eq(2), [x y z], init), 3);
    init(3) = round(subs(eq(3), [x y z], init), 3);
    disp(init)
end
