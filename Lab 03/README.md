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
<img width="681" alt="ztrans_left_output" src="">
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

### code 3: Z-transform and inverse Z-transform of non-causal signal:
1. clc;
2. close all;
3. clear all;
4.
5. syms n;
6. x = [1 2 3 4 5 6 7];
7. n = length(x);
8.
9. k=input('Enter zero index:');
10. p=[];
11. for i=0:k
12. p(i+1)=x(i+1);
13. end
14.
15. h=fliplr(p);
16. u=length(h);
17.
18. trans = 0;
19. z = sym('z');
20. for i=0:u-1
21. trans=trans+h(i+1).*z^(i);
22. end
23.
24. q=[];
25. for i=0:(n-k-2)
26. q(i+1)= x(i+k+2);
27. end
28.
29. v=length(q);
30. for i=0:v-1
31. trans=trans+q(i+1).*z^(-(i+1));
32. end
33.
34. disp('Z-transform of non-causal signal:');
35. disp(trans);
36. f=iztrans(trans);
37. disp('Inverse Z-transform of non-causal signal:');
38. disp(f);



### Output 2
<img width="835" alt="Ztrans_right_output" src="https://github.com/Nafia-Shishir/Lab_Reports-4124-1810033/assets/68279387/14154491-3fef-4ec8-951b-22809b339a27">

### Output 3
<img width="926" alt="ztrans_noncausal_output" src="https://github.com/Nafia-Shishir/Lab_Reports-4124-1810033/assets/68279387/65b27190-821c-4c1a-aad2-0548dd9bc154">

### Discussion: 
In the experiment, we have worked with Z-transform of three types of signals – right 
side signal, left side signal and both sided that is non-causal signal. In right side signal we found 
the power of z as negative and in case of left side signal those power of z was positive which was 
matched with our theoretical explanations also. For inverse z-transform, we used a function 
‘iztrans’ which worked correctly to find out the inverse of the Z-transform of the functions.
### Conclusion: 
All the code run successfully in the experiment without any type of error or 
complexities and we got the result as theoretical explanation.
