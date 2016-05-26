//folded sequence
clc;
clear all;
clf;
x=[1 3 4 7 0];
n=-2:1:2;
m=-n;
subplot(2,2,1)
plot2d3(n,x);
title('orginal sequence');
subplot(2,2,2)
plot2d3(m,x);
title('folded sequence');

t=0:0.0005:0.01;
f=100;
s=0.5*sin(2*%pi*f*t);
subplot(2,2,3)
plot2d3(t,s);
title('orginal sequence');
tr=-t
subplot(2,2,4)
plot2d3(tr,s);
title('folded sequence');
