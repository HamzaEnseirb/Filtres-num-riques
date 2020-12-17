function [AR,C] = autoregressif(x0,p,N)
    
%     b = 1;
%     while b > 0
%         b = 0;
%         A = abs(randn(1,p));
%         B = abs(randn(1,p));
%         for i=1:p
%             a=abs(A(i)+B(i)*j);
%             if a > 1 
%                 b=1;
%             end
%         end
%     end
%     t = randi([1 10],1,1);
%     a1 = 0.98*exp(j*(pi/t));
%     a2 = 0.98*exp(j*(pi/t));
    
%     A = [a1,conj(a1),a2,conj(a2)];
%     C = poly(A);
%     C = A+B.*j;
    %A = 0.5*rand(1,p).*exp(-j*pi*rand(1,p))
    %A = [0.2*exp(-j*(pi/3)) 0.5*exp(-j*(pi/3)) 0.1*exp(j*(pi/3)) 0.8*exp(j*(pi/3))];
    
    p1 = 0.98*exp(j*2*pi*(pi/3));
    p2 = 0.98*exp(-j*2*pi*(pi/3));

    A = [p1 conj(p1) p2 conj(p2)];
    C = poly(A);
    AR = filter(1,C,randn(1,N));
