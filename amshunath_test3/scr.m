clc
clear 
close all;

n5=0:1:511;
A5=DFTmatrix(512);
x5=zeros(512,1);
for n = 1:512
    x5(n,1)=cos((pi/5)*n);
end
x6=cos(((pi/5).*n5));
tic;
X5=A5 *x5;
matime2=toc;
tic;
X6=DFTsum(x6);
sumtime2=toc;
figure;
stem(n5,abs(X5));
title("DFT using matrix of sinusoidal signal");
xlabel('ω');
ylabel('|X(e^{jω})|');

fprintf('Time taken by DFTsum: %f seconds\n', sumtime2);
fprintf('Time taken by Matrix-multiplication: %f seconds\n', matime2);