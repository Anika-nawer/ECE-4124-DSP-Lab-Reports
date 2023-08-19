clc;
clear all;
x1=[3 1 4 2 5];
sum=0;
y=sym('z');
n=length(x1);
for i=1:n
   sum=sum+x1(i)*y^(-(i-1))
end
z=[];
p=[];
zplane(z,p);
grid