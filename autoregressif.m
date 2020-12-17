function [AR,C] = autoregressif(x0,p,N)
    
    A = rand(1,p).*exp(-j*pi*rand(1,p));
    %A = [0.2*exp(-j*(pi/3)) 0.5*exp(-j*(pi/3)) 0.1*exp(j*(pi/3)) 0.8*exp(j*(pi/3))];
    
    p1 = 0.98*exp(j*2*pi*(pi/3));
    p2 = 0.98*exp(-j*2*pi*(pi/3));

    %A = [p1 conj(p1) p2 conj(p2)];
    C = poly(A);
    AR = filter(1,C,randn(1,N));

end
