clear
syms x
f(1) = x;
f(2) = exp(-x);
xin = [1 3 18];
yin = [12 0 1];
F=subs(f, x, xin')
FTF=transpose(F)*F
FTy=transpose(F)*yin
disp((FTF)^-1.*FTy)