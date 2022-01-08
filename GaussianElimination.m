format rat

A = [1 2 -1 0;
    1 1 0 -4;
    -1 0 9 2];
x = linsolve(A(:, 1:end - 1), A(:, end));
for r = 1:size(A, 1) - 1
    for i = r + 1:size(A, 1)
        t = A(i, r);
        for j = r:size(A, 2)
            A(i, j) = A(i, j) - A(r, j) ./ A(r, r) .* t;

        end
    end
    fprintf('\n\n');
    disp(A)
end
disp(x)
