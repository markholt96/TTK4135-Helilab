function [ C Ceq ] = constraint( X )
    Ceq = [];
    C = zeros(length(X)/8);
    for i = 1:length(C)
        xk = X(6*(i-1)+1:6*i);
        C(i) = 0.2*exp(-20*(xk(1) + 2*pi/3)^2) - xk(5);
    end
end