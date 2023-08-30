clrmenu
clc

k1=5;k2=5;
c2=20;
m1=6;m2=5;
w_f=5;F1=20;

M=[m1 0;0 m2];
K=[k1+k2 -k2;-k2 k2];
C=[0 0;0 c2];

A0=zeros(2);A1=eye(2);
CC=[A0 A1;
    -inv(M)*K -inv(M)*C];

global CC F1 w_f M
max_frequency=w_f;
dt=1/(max_frequency*5);
t=0:dt:600*dt;

y0=[0 0 0 3];
[tsol,ysol]=ode23('dataforNTnew',t,y0);


plot(t,ysol(:,1:2),'linewidth',2);
xlabel("Time(s)");
ylabel("Displacement(m)");