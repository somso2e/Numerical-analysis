format rat
A = [1 2 0;
    0 -1 1;
    1 6 -1];
L = eye(size(A));
for r = 1:size(A, 1) - 1
    for i = r + 1:size(A, 1)
        t = A(i, r);
        for j = r:size(A, 2)
            if (j == r)
                L(i, j) = A(i, j) ./ A(r, r);

            end
            A(i, j) = A(i, j) - A(r, j) ./ A(r, r) .* t;

        end
    end
    fprintf('U:\n');
    disp(A)
    fprintf('L:\n');
    disp(L)
end
