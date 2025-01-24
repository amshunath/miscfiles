function [X] = myFFT(x)
N=length(x);
j=sqrt(-1);
k=0:N/2-1;
wn=exp(-j*2*pi.*k/N);
if (N==2)
   X=FFT2(x);
   return;     
elseif (N>2)
    x0=x(1:2:N);
    x1=x(2:2:N);
    [X0]=myFFT(x0);
    [X1]=myFFT(x1);
    
    A=X0+wn.*X1;
    B=X0-wn.*X1; 
    X=[A B];
end
end
