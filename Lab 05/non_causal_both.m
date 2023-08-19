clc;
clear all;
x1=input('signal coefficient:');
sum=0;
m=input('index:');
y=sym('z');
n=length(x1);
for i=1:n
   sum=sum+x1(i)*y^(-(i-m))    
end
z=[];
p=[];
zplane(z,p);
grid