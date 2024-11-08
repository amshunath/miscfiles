clc
clear
close all
num=[1];
den_factors=[1.0 1.0 1.0 ; 0.0  0.25 1.0];
den = den_factors(1, :);
for i = 2:size(den_factors, 1)
    den = conv(den, den_factors(i, :));
end
den_factors1=[1.0 1.0 1.0 ; 0.0  1.0 1.0];
den1 = den_factors1(1, :);
for i = 2:size(den_factors1, 1)
    den1 = conv(den1, den_factors1(i, :));
end
s=tf(num,den);
s1=tf(num,den1);

% Plot step responses
step(sys1, 'b', sys2, 'r--');
legend('Original System', 'Approximate System');
title('Step Response Comparison');
grid on;
% Simulate step responses
[y1, t] = step(sys1);
[y2, ~] = step(sys2);

% Calculate Mean Squared Error (MSE)
mse = mean((y1 - y2).^2);
fprintf('Mean Squared Error: %.4f\n', mse);
