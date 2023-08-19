clc;
clear all;
y=sym('z');
syms n;
u=3^n;
f=ztrans(u)
t=iztrans(f);
sim_t=simplify(t)
disp(t);z=[0];
p=poles(f);
z=[0];
zplane(z,p);
grid