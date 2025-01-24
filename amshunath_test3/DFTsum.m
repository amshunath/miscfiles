function [X] = DFTsum(x)
    N = length(x);
    X = zeros(1, N);
    j = 1i; 
    for k = 1:N
        for n = 1:N
            X(k) = X(k) + x(n) * exp(-j * 2 * pi * (k - 1) * (n - 1) / N);
        end
    end
end
