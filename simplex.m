format short

addpath('D:\Projects\Numerical analysis');
% c = [-4 -12 -3 0 0];
% b = [10; 9];
% a = [4 2 1 1 0;
%     1 5 1 0 1];
a = [1 2 -2 1 0 0; 2 0 0 0 1 0; 0 1 -1 0 0 1];
b = [60; 60; 0];
c = [-10 -8 8 0 0 0];
nma_simplex(a, b, c, true);
