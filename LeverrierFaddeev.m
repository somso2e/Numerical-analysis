A = [1 3 2; -2 1 1; 1 -2 -1];
it = 3;

for i = 1:it
    p = 1 / i .* trace(A);
    B = A-p * (eye(size(A)));
    disp(A)
    disp(p)
    A = A * B;
end
