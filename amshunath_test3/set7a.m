clc
clear
close all
%part1
N=128;
n=0:1:127;
x=cos(0.2*pi*n);%given signal
X=generateHamming(N);%hamming window of size 128
y=zeros(128); % after multiplication using hamming window
for i=1:128
    y(i)=x(i)*X(i);
end
Y=fft(y);
figure;
stem(n,abs(Y));
title("dft of given sinusoidal signal");
xlabel('ω');
ylabel('|X1(e^{jω})|');
%part2
Y2=myFFT(y);
figure;
subplot(1,2,1);
stem(n,abs(Y));
title("fft of given sinusoidal signal");
xlabel('ω');
ylabel('|X(e^{jω})|');
subplot(1,2,2);
stem(n,abs(Y2));
title("myFFT of given sinusoidal signal");
xlabel('ω');
ylabel('|X(e^{jω})|');
%part3
Xex=zeros(512);%the zero padded signal
for i=1:128
    Xex(i)=y(i);
end
tic;
Z1=fft(Xex);
fftime=toc;
tic;
Z2=myFFT(Xex);
myfftime=toc;
fprintf('Time taken by fft: %f seconds\n', fftime);
fprintf('Time taken by myFFT: %f seconds\n', myfftime);
n1=0:1:511;
figure;
stem(n1,abs(Z1));
title("fft of zero padded signal");
xlabel('ω');
ylabel('|X(e^{jω})|');
% figure;
% stem(n1,abs(Z2));