function F = gradientsym(x)
F(1)=log(x(1))/log(2)-3;
F(2)=(6*x(2)-3^(x(1)+2))/5;
xd=@gradientsym;
fsolve(xd,[0,0])
