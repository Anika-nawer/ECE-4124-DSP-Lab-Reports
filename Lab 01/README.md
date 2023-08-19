## Experiment No: 01
## Experiment Date: 19.03.2023
### Experiment Name:
Study of Linear Convolution and Implementation using Matlab code.
### Objective: 
The main objective of this experiment is to find the convolution of the input sequence without using default convolution function ‘conv’.
### Theory:
Convolution is a mathematical way of combining two signals to form a third signal. It is the single most important technique in Digital Signal Processing. Using the strategy of impulse decomposition, systems are described by a signal called the impulse response. Convolution is important because it relates the three signals of interest: the input signal, the output signal, and the impulse response.
The convolution formula is
		              y(n)=∑_(k=1)^n▒x(k) ×h(n-k)
### Steps:
Step 1: Constructing input sequence X(n) & input response H(n) function.
<br>
Step 2: Running two for loop outer loop for n times and inner loop for k times where n is the total length and k is the length of x.
<br>
Step 3: Multiply the two sequence elementwise & store the sum in y(n).
### Required software: MATLAB
### code:
```matlab
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
```


### Output 1
<img width="400" alt="Output1" src="https://github.com/Anika-nawer/ECE-4124-DSP-Lab-Reports/blob/main/Lab%2001/convolution.png">

### Discussion: 
From this experiment we have calculated convolution without using default ‘conv’ function. The process shown above is direct sum approach inheriting from basic formula of convolution. As we got same theoretical and experimental value so our experiment was successful without any error.
### References:
[1]"Convolution",analog,2023. [Online]. Available:https://www.analog.com/media/en/technical-documentation/dsp-book/dsp_book_ch6.pdf[Accessed:2-May- 2023].

