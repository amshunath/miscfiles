t1=-10:0.1:10;
x=sin(t1);
figure;
plot(x);
title('plot of x : M Amshunath 22EE10042');
xlabel('indices of vector x');
ylabel('x');
figure;
plot(t1,x);
title('plot of t1,x : M Amshunath 22EE10042')
xlabel('t1');
ylabel('x');
% at first glace both the figures show similar graphs but the x-axis of the
% figure are different 
% in the first figure the x-axis is by default the index of the vector x
% we can see the indices from 0 to 200
% in the second figure the x-axis represents the vector t1 as we can see in
% the labels from -10 to 10