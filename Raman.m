%%%%%%%%%%%%%5
a=[13/12 -3/8 1/24];
%%%%%%%%%%%%%%
it=10;

a=[a,zeros(1,it-length(a))];
b=zeros(1,it);
f=zeros(1,it);
b(1)=1;
for k=2:it
    for j=1:k-1
       b(k)=b(k)+a(k-j)*b(j);
    end
    f(k)=b(k-1)/b(k);
end
fprintf("F:")
fprintf('%.4f\t',f)
fprintf('\nB:');
fprintf('%.4f\t',b)
fprintf('\n')