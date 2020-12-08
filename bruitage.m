function y=bruitage(x,RSB)
    b = randn(size(x));
    alpha=10^(0.5*log10((x*x')/(b*b'))-0.05*RSB);
    bruit=alpha*b;
    y = bruit;
    
end