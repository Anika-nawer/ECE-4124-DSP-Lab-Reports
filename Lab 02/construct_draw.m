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