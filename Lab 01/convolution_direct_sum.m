clc;
clear all;
x=[1,2];
h=[1,2,2,4];
x1=length(x);
h1=length(h);
X=[x,zeros(1,h1)];
H=[h,zeros(1,x1)];
for i=1:(x1+h1-1)
y(i)=0;
for j=1:x1
if(i-j+1)>0
y(i)=y(i)+X(j)*H(i-j+1);
end
end
end
subplot(2,2,1);
stem(x);
xlabel(' --->  n');
ylabel('Amplitude');
title(' x(n) ');
subplot(2,2,2);
stem(h);
xlabel(' --->  n');
ylabel('Amplitude');
title(' h(n) ');
subplot(2,2,3);
stem(y);
xlabel(' --->  n');
ylabel('Amplitude');
title(' y(n) ');
 
