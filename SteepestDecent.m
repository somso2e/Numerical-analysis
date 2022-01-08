clear;

x_0 = [1, 1];
error = 2;

x = sym('x', size(x_0));

f(x) = [
    x(1)^2 + x(1) * x(2) - 10;
    x(2) + 3 * x(1) * x(2)^2 - 51
    ];

alpha = [0, 0.5, 1];
jacob = jacobian(f, x);

fprintf("jacobian:\n")
disp(jacob);
disp(subs(jacob, x, x_0))

g = sum(f.^2);
g0 = round(vpa(subs(g, x, x_0)), error);
gGradient = gradient(g, x);
normval = round(vpa(subs(norm(gGradient, 2), x, x_0)), error);
z = round(vpa(subs(gGradient / normval, x, x_0)), error);

h = zeros(size(x_0));
i = 1;
for a = alpha
    x_1 = x_0 - a * z';
    h(i) = round(vpa(subs(g, x, x_1)),error);
    i = i + 1;
end

syms alph
H = 0;
for i = 1:length(alpha)
    L = 1;
    for j = 1:length(alpha)
        if i ~= j
            L = L * (alph - alpha(j)) / (alpha(i) - alpha(j));

        end
    end
    disp(L)
    H = H + h(i) * L;
end
alphaC = solve(diff(H, alph) == 0);
fprintf('\n');
fprintf('g0:%f\tnorm:%f\n', g0, normval);
fprintf('z:%f\t', formula(z'));
fprintf('\n');
fprintf('h:%f\t', h);
fprintf('\n\nH(a): ');
disp(vpa(expand(H), error + 4))
fprintf('alphaC: %f\n', vpa(alphaC, 4))
x_1 = x_0 - alphaC * z';
g1 = vpa(subs(g, x, x_1));
fprintf('g1: %f\nx_1: ', g1);
fprintf('%f\t', formula(x_1));
fprintf('\n');
