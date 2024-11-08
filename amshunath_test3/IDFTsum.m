function [x] = IDFTsum(X)
    N = length(X);
    x = zeros(1, N);
    j = 1i;
    for n = 1:N
        for k = 1:N
            x(n) = x(n) + (1/N) * X(k) * exp(j * 2 * pi * (k - 1) * (n - 1) / N);
        end
        x(n)=abs(x(n));
    end
end
