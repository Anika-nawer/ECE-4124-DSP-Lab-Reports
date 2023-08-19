## <b>Experiment No :</b> 05

## <b>Submission Date : </b> 11.06.23

## <b>Experiment Name :</b>

### Experimental study about Z transform,Inverse Z transform and their ROC on Matalab.

##  <b>Theory:</b>
<p>In mathematics and signal processing, the Z-transform[1] converts a discrete-time signal, which is a sequence of real or complex numbers, into a complex frequency-domain representation.
Also, it can be considered as a discrete-time equivalent of the Laplace transform.The formula of z-transform denoted as-

                    Z[x(n)]=X(z)=∑n=x(n)z^(−n)

<p>The inverse Z-transform[2] is defined as the process of finding the time domain signal x(n) from its Z-transform X(z). The inverse Z-transform is denoted as −

                            x(n)=Z(^−1)[X(z)]
<p>The ROC of the Z-transform[3] is a ring or disc in the z-plane centred at the origin. The ROC of the Z-transform cannot contain any poles. The ROC of Z-transform of an LTI stable system contains the unit circle. 
<br>
<br>
<b>Required Software:</b>   MATLAB
<br>
<br>

## <b>Matlab Codes:</b>
***
<b>Causal System:</b>
``` matlab
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
```
<b>Output:</b>
<br>
![Output](src/causal.png)
<br>
![Output](src/causal2.png)
  <br>
   
<b>Anti-Causal System:</b>
``` matlab
clc;
clear all;
x1=[3 1 4 2 5];
sum=0;
y=sym('z');
n=length(x1);
for i=1:n
   sum=sum+x1(i)*y^(-(i-n))    
end
z=[];
p=[];
zplane(z,p);
grid
```
<b>Output:</b>
<br>
![Output](src/anticausal.png)
   <br>
![Output](src/anticausal2.png)
  <br>
   
 <b>Non-Causal System:</b>
``` matlab
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
```
<b>Output:</b>
<br>
![Output](src/noncausal.png)
 <br>
   
![Output](src/noncausal2.png)
 <br>

<b>inverse Z-transform:</b>
``` matlab
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
```
<b> Output:</b>
<br> 
   ![Output](src/inverse.png)
   <br>
   ![Output](src/inverse2.png)
   <br>

## <b>Discussion:</b>

<p style="text-align: justify">
In this experiment we have implemented Z-transform for causal, non-causal and anti-causal system and also ploted each of their ROC. We have implemented Z-transform of each case using the basic formula of Z-transform.

We have also implemented inverse Z-transform using a build in function '<i>iztrans()'</i>. And we have ploted ROC for this case also.
</p>

## <b>Conclusion:</b>

<p style="text-align: justify">

All the codes executed successfully and got the exact result as per our theoretical study.

</p>

## <b>References:</b>

[1] “<i>Z-Transform</i>” ,byjus,[Online]. Available:https://byjus.com/z-transformation-formula/. [Accessed: 07-June-2023].

[2] “<i>Inverse Z-Transform</i>”,Tutorialspoint,[Online]. Available: https://www.tutorialspoint.com/what-is-inverse-z-transform. [Accessed: 07-June-2023].

[3] “<i>ROC of ZTransform</i>”,Tutorialspoint,[Online]. Available:https://www.tutorialspoint.com/signals-and-systems-properties-of-region-of-convergence-roc-of-the-z-transform#:~:text=The%20ROC%20of%20the%20Z,transform%20must%20be%20connected%20region. [Accessed: 07-June-2023].