clc
clear
close all

num = [ 0  1 ];
den=[1 1 1];
figure;
sys=tf(num,den);
[y, t]=step(sys);
us= undershoot(y);
plot(t,y);
% Display the result
fprintf('Undershoot: %.2f%%\n', us);
grid on;
title('Step Response');
xlabel('Time (seconds)');
ylabel('Amplitude');
% Get step response information
info = stepinfo(sys);
% Extract rise time and overshoot
rise_time = info.RiseTime;
overshoot = info.Overshoot;
% Display the results
fprintf('Rise Time: %.4f seconds\n', rise_time);
fprintf('Overshoot: %.2f%%\n', overshoot);


d1=[1 1 1 ];
v=[2 1 0.5 -0.5 -1 -2];
rise=[0 0 0 0 0 0];
over=[0 0 0 0 0 0];
under=[0 0 0 0 0 0];
%plotting the step response
figure;
hold on;
for i=1:length(v)
    n1=[1,v(i)];
    s=tf(n1,d1);
    [y, t]=step(s);
    under(i)= undershoot(y);
    plot(t,y);
    grid on;
    title('Step Response');
    xlabel('Time (seconds)');
    ylabel('Amplitude');
    info = stepinfo(s);
    rise_time = info.RiseTime;
    overshoot = info.Overshoot;
    % fprintf('given a = %.1f \n',-v(i) );
    % fprintf('Rise Time: %.4f seconds\n', rise_time);
    rise(i)=rise_time;
    % fprintf('Overshoot: %.2f%%\n', overshoot);
    over(i)=overshoot;
end
legend ('1','2','3','4','5','6');
disp(rise);
disp(over);
disp(under);