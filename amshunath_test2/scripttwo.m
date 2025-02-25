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

t1_re=-0.005:0.00004:0.005;
x1_re=zeros(length(t1_re));
t2_re=-0.025:0.0002:0.025;
x2_re=zeros(length(t2_re));
for i= 0:(length(x1)-1)
    for j=0:4
        x1_re(5*i+j+1)=x1(i+1)*sinc(0.00004*j);
    end
end
for i= 0:(length(x1)-1)
    for j=0:4
        x2_re(5*i+j+1)=x2(i+1)*sinc(0.0002*j);
    end
end
figure;
stem(t1, x1, 'r');
hold on;
stem(t1_re, x1_re, 'b');
legend('Sampled Signal', 'Reconstructed Signal (Sinc Interpolation)');
title('Signal Reconstruction using Sinc Interpolation');
figure;
stem(t2, x2, 'r');
hold on;
stem(t2_re, x2_re_sinc, 'b');
legend('Sampled Signal', 'Reconstructed Signal (Sinc Interpolation)');
title('Signal Reconstruction using Sinc Interpolation');