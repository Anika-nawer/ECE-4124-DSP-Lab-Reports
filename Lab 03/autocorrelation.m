clc ;
clear all ;
x=input ('input signal X:') ;
m1=length ( x ) ;
ln=m1+m1-1;
y=[x,zeros(1,(m1-1))];
n=ln;
while(n>=1)
    r(ln-n+1)=0;
    j=n;
    i=m1;
    while(i>=1 && j>=1)
        r(ln-n+1)=r(ln-n+1)+x(i)*y(j);
        j=j-1;
        i=i-1;
    end
    n=n-1;
end
subplot(2,1,1);
stem(x);
title('signal x');
subplot(2,1,2);
stem(r);
title('autocorrelated signal');