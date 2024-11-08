function I=Integ1(N)
    I=0;
    t=linspace(0,2*pi,N+1);
    dt=(2*pi)/N;
    x=(sin(7*t)).^2;
    I=sum(x.*dt);
    % for i= 1:N
    %     I=I+x(i)*dt;
    % end
end

n=1:1:100;
y=1:1:100;
for i=1:100
    y(i)=Integ1(n(i));
end

figure;
plot(n,y);
title('Integ1(N) vs N : M Amshunath 22EE10042')
ylabel('Integ1');
xlabel('values of N');

a=Integ1(7);
display(a);
b=Integ1(14);
display(b);
% we can see that a and b are both zero as the integral always takes the
% value of sin(2*k*pi) in case of N=7 and sin(k*pi) in case of N=14