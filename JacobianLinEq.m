format long
clear
syms x y z
eq = [
    3 * x + 3 * y + 4 * z == -2;
    2 * x + 3 * y + 2 * z == 0;
    1 * x + 2 * y + 3 * z == 1
    ];

init = [-2 1 0];
it = 4;

for i = 1:it
    x1 = solve(subs(subs(eq(1), y, init(2)), z, init(3)));
    y1 = solve(subs(subs(eq(2), x, init(1)), z, init(3)));
    z1 = solve(subs(subs(eq(3), x, init(1)), y, init(2)));
    init = [x1, y1, z1];
    disp(init)
end
