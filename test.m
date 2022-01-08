% x_0=[0,0];
% alpha=[0,0.5];
% h=[0,1];
% syms alph
% for i = 1:length(x_0)
%     L = 1;
%     for j = 1:length(x_0)
%         if i ~= j
%             L = L * (alph - alpha(j)) / (alpha(i) - alpha(j));

%         end
%     end
%     vpa(L,4);
%     H=h(i)*L;
%     vpa(H,4);
% end
% H

L = [1 0 0;
    1 2 0;
    - 1 0 2];

% L = [1 0 0;
%     -2 1 0;
%     - 1 -1 1];



% Y=(L^-1)*eye(3)
% U=[1 2 4; 0 1 1; 0 0 1];
% X=U^-1*Y
% A=L*U
% A^-1

F=[sqrt(2)  exp(-1); 3 exp(-3); 18 exp(-18)];
a=transpose(F)*F
Y= [12*sqrt(2) 0 1]';
c=transpose(F)*Y
a^-1*c