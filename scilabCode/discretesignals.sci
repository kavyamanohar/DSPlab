clc;
clear all;
clf;

//UNIT IMPULSE

y=[zeros(1,10),ones(1,1),zeros(1,10)];
t=-10:1:10;
subplot(2,3,1)
plot2d3(t,y);
//plot(t,y);
title('unit impulse');xlabel('t');ylabel('amp');

//UNIT STEP
x=[zeros(1,10),ones(1,11)];
t=-10:1:10;
subplot(2,3,2)
plot2d3(t,x);
title('unit step');xlabel('t');ylabel('amp');

//UNIT RAMP

t=0:1:10;
m=2; // m=1 for unit ramp , m can take any values.
y=m*t;
subplot(2,3,3);
plot2d3(t,y);
title('ramp');xlabel('t');ylabel('amp');

//SINUSOIDAL FUNCTION

t=0:0.0005:0.01;
f=100;
y=0.5*sin(2*%pi*f*t);
subplot(2,3,4)
plot2d3(t,y);
title('sinusoidal'); xlabel('time'); ylabel('amplitude')


//EXPONENTIAL FUNCTION

t=0:1:25;
y=exp(0.3*t);
subplot(2,3,5)
plot2d3(t,y);
title('exponential function')

//TRIANGULAR FUNCTION

p=50;
t=0:1:49
for (n=1:1:p/2)
    y(n)=n;  
end
for(n=1+p/2:1:p)
    y(n)=p-n;
end
subplot(2,3,6); plot2d3(t,y);
xs2pdf(0,'discrete.pdf');
