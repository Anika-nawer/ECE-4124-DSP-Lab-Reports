## Experiment No: 03
## Experiment Date: 08.05.2023
### Experiment Name:
(i) Study of Autocorrelation and implementation by MATLAB code.
<br>
(ii) Study of Cross-correlation and implementation by MATLAB code.
### Objective:
The main objective of this experiment is to learn about correlation and to implement autocorrelation and cross-correlation without using default function xcorr().
### Theory:
The correlation[1] of two functions or signals or waveforms is defined as the measure of similarity between those signals. There are two types of correlations –
<br>
* Autocorrelation
* Cross-correlation
<br>
Autocorrelation:
<br>
The autocorrelation function is defined as the measure of similarity or coherence between a signal and its time delayed version. Therefore, the autocorrelation is the correlation of a signal with itself.
<br>
<br>
Cross-correlation:
<br>
The cross-correlation between two different signals or functions or waveforms is defined as the measure of similarity or coherence between one signal and the time-delayed version of another signal. The cross-correlation between two different signals indicates the degree of relatedness between one signal and the time-delayed version of another signal.

### Required software: MATLAB
### code: 
i) Autocorrelation:
``` matlab
clc ;
clear all ;
x=input ('x') ;
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
```
### Output
<img width="400" height="340" alt="ztrans_left_output" src="https://github.com/Anika-nawer/ECE-4124-DSP-Lab-Reports/blob/main/Lab%2003/auto-correlation.png">

### code:
ii) Cross-correlation: 

``` matlab
clc ;
clear all ;
x = input ('input signal X:') ;
y = input ('input signal Y:') ;
m1 = length ( x ) ;
m2 = length ( y ) ;
len = m1 + m2 -1;
y =[y,zeros(1,( m1 -1))];
n = len ;
while (n >=1)
r ( len - n +1) =0; j = n ; i = m1 ;
while (i >=1 && j >=1)
r ( len - n +1) = r ( len - n +1) + x ( i ) * y ( j ) ;
j =j -1; i =i -1;
end
n =n -1;
end
subplot(3,1,1);
stem(x);
title('signal x');
subplot(3,1,2);
stem(y);
title('signal y');
subplot(3,1,3);
stem(r);
title('Cross-correlated signal');
```

### Output:
<img width="400" height="340" alt="Ztrans_right_output" src="https://github.com/Anika-nawer/ECE-4124-DSP-Lab-Reports/blob/main/Lab%2003/cross_correlation.png">


### Discussion: 
In this experiment we have implemented autocorrelation and cross-correlation without using default function ‘xcorr()’ and verified the result using default function ‘xcorr(). As we got same theoretical and experimental value so our experiment was successful without any error. 
Conclusion: As all of our experimental values and calculated values according to theory was same, so our whole experiment was successful.

### Conclusion: 
As all of our experimental values and calculated values according to theory was same, so our whole experiment was successful.

### References: 
[1]“correlation”,tutorialspoint,2023. [Online]. Available: https://www.tutorialspoint.com/what-is-correlation-in-signals-and-systems.[Accessed:14-May- 2023].
