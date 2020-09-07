clear all
close all
clc
b=1.595;
a=1.430;
uc=20;
cr=96000;
cf=80000;
i=4132;
m=2325;
k1=3.9795;
k2=-2.9163;
k3=113.5779;
k4=22.3271;
A=[(-cf-cr)/(uc*m)-cf*k1/m (b*cr-a*cf)/(uc*m)-uc-cf*k2/m -k3*cf/m -k4*cf/m;(b*cr-a*cf)/(uc*i)-a*cf*k1/i (b*b*cr-a*a*cf)/(uc*i)-a*cf*k2/i -a*cf*k3/i -a*cf*k4/i;0 1 0 0;1 0 uc 0];
B=[k4*cf/m;a*cf*k4/i;0;0];
C=[k1/k4 k2/k4 k3/k4 1];
D=1/k4;
ss(A,B,C,D);
y=tf(ss(A,B,C,D));
[yd,t]=gensig('sin',20*pi,100,0.1);
lsim(yd,y,t);
legend('y');
