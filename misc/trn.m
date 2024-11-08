clc
clear
close all
% Numerator factors
num_factors = [1 2; 1 3]; % Each row represents a factor (s + a)

% Denominator factors
den_factors = [1 1; 1 4; 1 5]; % Each row represents a factor (s + b)

% Multiply numerator factors
num = num_factors(1, :);
for i = 2:size(num_factors, 1)
    num = conv(num, num_factors(i, :));
end

% Multiply denominator factors
den = den_factors(1, :);
for i = 2:size(den_factors, 1)
    den = conv(den, den_factors(i, :));
end

% Create the transfer function
sys = tf(num, den);

% Display the transfer function
disp(sys);
