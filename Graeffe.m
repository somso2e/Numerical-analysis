
syms x
it=4;
%%%%%%%%
q(1)= x^3-2*x^2-5*x+6;
%%%%%%%%
r=4;%round

for i=1:it
    q(i+1)=subs(expand(subs(q(i),-x)*q(i)),x^2,(x));
    b(i+1)=vpa(expand(q(i+1)));
    co=round(coeffs(b(i+1)),r);
    for j=1:length(co)-1
        k(j)=round((abs(co(j)/co(j+1)))^(1/(2^i)),r);
    end
    disp(b(i+1))
    fprintf("k:");
    fprintf("%f\t",k);
    fprintf("\n----------------\n");
end
