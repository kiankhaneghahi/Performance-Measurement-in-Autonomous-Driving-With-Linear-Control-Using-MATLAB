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
k1=0.5048;
k2=0.4270;
k3=19.2352;
k4=2.4808;
A=[(-cf-cr)/(uc*m)-cf*k1/m (b*cr-a*cf)/(uc*m)-uc-cf*k2/m -k3*cf/m -k4*cf/m;(b*cr-a*cf)/(uc*i)-a*cf*k1/i (b*b*cr-a*a*cf)/(uc*i)-a*cf*k2/i -a*cf*k3/i -a*cf*k4/i;0 1 0 0;1 0 uc 0];
B=[k4*cf/m;a*cf*k4/i;0;0];
C=[k1/k4 k2/k4 k3/k4 1];
D=1/k4;
ss(A,B,C,D);
sys1=tf(ss(A,B,C,D));
step(sys1);
S = stepinfo(sys1,'RiseTimeLimits',[0.05,0.95]);