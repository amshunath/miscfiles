clc
clear
close all
%F1=5000sam/sec
%F2=1000sam/sec
t1=-0.005:0.0002:0.005;
t2=-0.025:0.001:0.025;
%time limits assigned
%as mentioned
x1=exp(-1000*abs(t1));
x2=exp(-1000*abs(t2));
X1=zeros(50);
X2=zeros(50);
%determination of X1(jw) and X2(jw) using for loop
for i=1:50
    X1(i)=0;
    for j=1:50
        X1(i)=X1(i)+x1(i)*exp(-j*2*pi*(i-1)*(j-1)/50);
    end
end
for i=1:50
    X2(i)=0;
    for j=1:50
        X2(i)=X2(i)+x2(i)*exp(-j*2*pi*(i-1)*(j-1)/50);
    end
end
figure;
subplot(4,1,1);
stem(t1,x1);
title('with sampling frequency as 5000');
xlabel('t with limits as (-0.005,0.005)');
ylabel('x1(n)');
subplot(4,1,2);
stem(t2,x2);
xlabel('t with limits as (-0.025,0.025)');
ylabel('x2(n)');
title('with sampling frequency as 1000');
subplot(4,1,3);
plot(X1);
xlim([1,50]);
title('plot of X1');
subplot(4,1,4);
plot(X2);
xlim([1,50]);
title('plot of X2');
sgtitle('M Amshunath 22EE10042');