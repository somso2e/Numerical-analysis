syms x
it=5;
A=zeros(1,it);
%%%%%%%%%%%%%%%%%%%%%%
f= @(x) cos(x)/2;
%%%%%%%%%%%%%%%%%%
A(1)=0;

r=3;

ham=subs(diff(f,x),A(1))*subs(diff(diff(f,x)),A(1))

for i=1:it-1
    d=subs(diff(f,x),A(i));
    %lambda
%     A(i+1)=round(1/(1-d)*(subs(f,A(i))-d*A(i)),r);
    %simple
    A(i+1)=round(subs(f,A(i)),r);
end
A