format short
A = [3, 3, 4; 2, 3, 2; 1, 2, 3];
lambda = 0;
lambda1 = 0;
error = 0.005;
err = inf;
m = 1;
while err > error
    lambda = round(trace(A^m)^(1 / m), 3);
    disp(A^m)
    err = abs(lambda - lambda1);
    lambda1 = lambda;
    fprintf("%d: lambda:%f\n", m, lambda);
    m = m + 1;

end
