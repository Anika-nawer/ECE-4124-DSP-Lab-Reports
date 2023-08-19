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