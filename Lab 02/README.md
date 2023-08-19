## Experiment No: 02
## Experiment Date: 03.05.2023
### Experiment Name:
(i) Study of Circular Convolution and implementation by MATLAB code.
<br>
(ii) Plotting the summation and subtraction of two discrete signals on   MATLAB. 
<br>
(iii) Constructing two signals & draw them on MATLAB.
### Objective:
The main objective of this experiment is to find the circular convolution of the input sequence and to learn summation and subtraction of two signals and to construct figure from signals on MATLAB.
### Theory:
Circular convolution, also known as cyclic convolution, is a special case of periodic convolution, which is the convolution of two periodic functions that have the same period. Periodic convolution arises, for example, in the context of the discrete-time Fourier transform (DTFT).
The circular convolution formula is
<br>
<br>
              y(n)=∑x(k) ×h(n-k)
### Required software: MATLAB
### code:
(i) Circular Convolution:
```matlab
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

```
### Output 
<img width="400" src="https://github.com/Anika-nawer/ECE-4124-DSP-Lab-Reports/blob/main/Lab%2002/circular_convolution.png">

(ii) Plotting, summation and subtraction of two discrete signal:
``` matlab
clc;
clear all;
n1=[0,0,0,2,2,2,1,1,1,0,2];
n2=[2,2,0,1,1,1,0,0,0,0,3];
sum=n1+n2;
sub=n1-n2;
subplot(4,1,1);
stem(n1);
title('Signal n1');
subplot(4,1,2);
stem(n2);
title('Signal n2');
subplot(4,1,3);
stem(sum);
title('Signal sum');
subplot(4,1,4);
stem(sub);
title('Signal sub');
```
### Output: 
<img width="420" src="https://github.com/Anika-nawer/ECE-4124-DSP-Lab-Reports/blob/main/Lab%2002/sum_sub.png">

(iii) Constructing and drawing two signals:

```matlab
clc;
clear all;
h=1;
a=2;
b=4;
A=[0 0];
B=[b,0];
C=[0.5*(b-a)+a h];
D=[0.5*(b-a) h];
coor=[A;B;C;D;A];
subplot(2,1,1);
plot(coor(:,1),coor(:,2));
t=[1,2];
u=[2,2];
v=[3,4];
w=[4,4];
x=[5,2];
y=[6,2];
z=[7,0];
coor1=[A;t;u;v;w;x;y;z;A];
subplot(2,1,2);
plot(coor1(:,1),coor1(:,2));

```
### Output: 
<img width="420" src="https://github.com/Anika-nawer/ECE-4124-DSP-Lab-Reports/blob/main/Lab%2002/construct_draw.png">

### Discussion: 
From this experiment we have calculated circular convolution without using any default function. As we got same theoretical and experimental value so our implementation was right. We have also done summation and subtraction of two signals and have plotted them.  And lastly we have constructed signals and have plotted them. As we got same theoretical and experimental value so our experiment was successful without any error. 
### Conclusion: 
As all of our experimental values and calculated values according to theory was same, so our whole experiment was successful.
### References: 
[1], Circular Convolution",wikipedia,2023. [Online]. Available: https://en.wikipedia.org/wiki/Circular_convolution.[Accessed:08-May- 2023].
