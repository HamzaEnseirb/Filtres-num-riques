function [X,Y,signature] = premiere_signature(img,x,y)

% for i=1:2
%     if x(i)>256
%       x(i)=256;
%     end
%     if x(i)<0
%       x(i)=0;
%     end
%     if y(i)>256
%       y(i)=256;
%     end
%     if y(i)<0
%       y(i)=0;
%     end
% end
%     x1 = x(1);
%     x2 = x(2);
%     y1 = y(1);
%     y2 = y(2);
%     if x(1)<
%         
    l = sqrt((x(1)-x(2))^2+(y(1)-y(2))^2);
    X = [];
    Y = [];
    U = floor(2*l)+1;
    for u=0:U-1
        X = [X round(x(1)+(u/(U-1))*(x(2)-x(1)))];
        Y = [Y round(y(1)+(u/(U-1))*(y(2)-y(1)))];
    end
    signature = [];
    for i=1:length(X)
        signature=[signature img(Y(i),X(i))];
    
    end
    
    
end

