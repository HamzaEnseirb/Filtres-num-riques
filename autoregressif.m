function AR = autoregressif(x0,p,N)
    
    A = randi([0 1],1,p);
    A = poly(A);
    
    y = filter(1,A,randn(1,N));

    a = aryule(y,p);
    bbg = randn(1,N);
    x = zeros(1,N);
    x(1) = x0;
    
    for i=2:N
        for j=1:p
            if i>j
                x(i) = x(i)+a(j+1)*x(i-j);
            end 
        end
        x(i) = x(i)+bbg(i);
    end
    AR = x;
end

