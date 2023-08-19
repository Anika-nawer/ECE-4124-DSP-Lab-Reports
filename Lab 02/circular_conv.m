clc;
clear all;
xn=[1,2,3,4];
hn=[1,1,1,1];
n=length(xn);
y=zeros(1,n);
for i=1:n-1
    for j=1:n-1
        z=mod(i-j,n);
        y(i)=y(i)+xn(j).*hn(z+1);
    end
end
subplot(3,1,1);
stem(xn);
title('Signal xn');
subplot(3,1,2);
stem(hn);
title('Signal hn');
subplot(3,1,3);
stem(y);
title('Signal y');