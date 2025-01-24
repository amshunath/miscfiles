function [X] = FFT4(x)
    N=length(x);
    j=sqrt(-1);
    k=0:N/2-1;
    wn=exp(-j*2*pi.*k/N);

    x0=x(1:2:N);
    x1=x(2:2:N);
    
    [X0]=FFT2(x0);
    [X1]=FFT2(x1);
    X1=wn.*X1;
    A=X0+X1;%2
    B=X0-X1;
    
    X=[A,B];
end