clear all
clf;
x=[1 2 3 4 5];
n=-2:1:2;
subplot(2,3,1); 
plot2d3(n,x);
title('original sequence');
k=n-2;// advanced seq
subplot(2,3,2)
plot2d3(k,x);
title('advanced sequence');
l=n+3;//delayed sequence
subplot(2,3,3)
plot2d3(l,x);
title('delayed sequence');

t=0:0.0005:0.01;
f=100;
s=0.5*sin(2*%pi*f*t);
subplot(2,3,4)
plot(t,s);
title('orginal sequence');
ta=t-2
subplot(2,3,5)
plot(ta,s)
title('advanced sequence');
td=t+3
subplot(2,3,6)
plot(td,s);
title('delayed sequence');

