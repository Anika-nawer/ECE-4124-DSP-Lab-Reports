clc;
clear all;
close all;

t= 0:1:10;
A=10;
f=10;
x1=A*sin(2*f*pi*(t-4));
x2=A*sin(2*f*pi*t);
z=xcorr(x1,x2);
[c_corr, lags] = xcorr(x1,x2)
subplot(3,1,1);
plot(x1);
title('Signal x1');
subplot(3,1,2);
plot(x1);
title('Signal x2');
subplot(3,1,3);
plot(lags,c_corr);
title('Signal c_corr');
[~, index] = max(c_corr);
delay_sample = abs(lags(index))
Fs=1;
delay_seconds = delay_sample/Fs
