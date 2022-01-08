A=[3 3 4;2 3 2; 1 2 3];
x=[1;1;1];
digit=3;
error=5*10^(-digit);
lambda=0;
i=1;
err=inf;
lambda1=0;
while err>error
    
    y=round(A*x,digit);
    lambda=round(max(y),digit);
    x=round(y/lambda,digit);
    err=abs(lambda-lambda1);
    lambda1=lambda;
    fprintf("\n%d-\nlambda:\t%0.3f\nx:\t",i,lambda);
    
    fprintf("%.3f\t\t",(x));
    fprintf("\ny:\t");
    fprintf("%.3f\t\t",(y));
    fprintf("\n-----------------------");
    i=i+1;
end
fprintf("\n");
A*x
lambda*x