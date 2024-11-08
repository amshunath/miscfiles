clc
clear
close all
% part1
N=10;
n=0:1:N-1;
x1=ones(N);
tic;X1=DFTsum(x1);sumtime=toc;
x2=exp(-((n-5).^2)/4);
X2=DFTsum(x2);
figure;
stem(n,abs(X1));
title("DFTsum of given constant signal");
xlabel('ω');
ylabel('|X(e^{jω})|');
figure;
stem(n,abs(X2));
title("DFTsum of given exponential signal");
xlabel('ω');
ylabel('|X(e^{jω})|');
IX1=IDFTsum(X1);
IX2=IDFTsum(X2);
figure;
subplot(1,2,1);
stem(n,x1);
title("given constant signal");
xlabel('n');
ylabel('x1');
subplot(1,2,2);
stem(n,abs(IX1));
title("IDFTsum of DFTsum of given constant signal");
xlabel('n');
ylabel('IX1');

figure;
subplot(1,2,1);
stem(n,x2);
title("given exponential signal");
xlabel('n');
ylabel('x2');
subplot(1,2,2);
stem(n,abs(IX2));
title("IDFTsum of DFTsum of given exponential signal");
xlabel('n');
ylabel('IX2');
%part2
x3=zeros(N);
x4=ones(N);
x3(1)=1;
A=DFTmatrix(N);
X3=A * x3;
tic;
X4=A*x4;
matime=toc;
figure;
stem(n,abs(X3));
title("DFT using matrix of given impulse signal");
xlabel('ω');
ylabel('|X(e^{jω})|');
figure;
stem(n,abs(X4));
title("DFT using matrix of given constant signal");
xlabel('ω');
ylabel('|X(e^{jω})|');
fprintf('Time taken by DFTsum for contant signal: %f seconds\n', sumtime);
fprintf('Time taken by Matrix-multiplicationfor constant signal: %f seconds\n', matime);
