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
A=[(-cf-cr)/(uc*m) (b*cr-a*cf)/(uc*m)-uc 0 0;(b*cr-a*cf)/(uc*i) (b*b*cr-a*a*cf)/(uc*i) 0 0;0 1 0 0;1 0 uc 0];
B=[cf/m;a*cf/i;0;0];
C=[1 0 uc 0];
D=0;
plant=ss(A,B,C,D);
plant_y=tf(plant);