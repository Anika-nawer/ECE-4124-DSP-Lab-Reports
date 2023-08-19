## Experiment No: 04
## Experiment Date: 15.05.23
### Experiment Name:
 Study of Identifying delay using correlation.
### Objective:
 The main objective of this experiment is to apply correlation for estimating time delay 
between signals.
### Theory:
 The correlation is regarded as the most popular approach for estimating the time 
difference of arrival[1] between the signals. Time delay estimates are obtained by maximizing the
correlation output, where the direct-path delay is usually observed as a prominent peak.

### Required software: MATLAB
### code:
``` matlab
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
```

### Output:
<img width="500" src="">

### Discussion: 
In this experiment we have implemented correlation to identify the time delay of signals. We got 
the time delay at where the peak value was obtained.
### Conclusion: 
The experiment was successful as we got our delay time at peak value as expected 
and no error was encountered.
### References: 
[1]“identifying time delay”,knowledge.ni,2023. [Online]. Available:
https://knowledge.ni.com/KnowledgeArticleDetails?id=kA00Z000001DdeeSAC&l=en-US.
[Accessed:21-May- 2023].
