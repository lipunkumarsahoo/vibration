function dy=dataforNTnew(t,y)
global CC F1 w_f M
f1=F1*sin(2*pi*w_f*t);
A0=zeros(2);
FF=[A0;inv(M)]*[f1;0];
dy=CC*y+FF;
