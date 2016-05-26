clc;
clear all;
clf;

//UNIT IMPULSE

x=[zeros(1,10),ones(1,1),zeros(1,10)];
t=-10:1:10;
subplot(2,3,1)
plot(t,x);
title('unit impulse');xlabel('t');ylabel('amp');

//UNIT STEP
x=[zeros(1,10),ones(1,11)];
t=-10:1:10;
subplot(2,3,2)
plot(t,x);
title('unit step');xlabel('t');ylabel('amp');

//SINUSOIDAL FUNCTION

t=0:0.0001:0.01;
f=100;
y=0.5*sin(2*%pi*f*t);
subplot(2,3,3)
plot(t,y)

//EXPONENTIAL FUNCTION

t=0:1:25;
y=exp(0.3*t);
subplot(2,3,4)
plot(t,y);


//UNIT RAMP
clear r
clear t
clear n
t=0:1:9
for n=1:1:10
    r(n)=n;
end
subplot(2,3,5);
plot(t,r);
title('ramp');xlabel('t');ylabel('amp');

//TRIANGULAR FUNCTION
p=50;
t=0:1:49
for (n=1:1:p/2)
    y(n)=n;  
end
for(n=1+p/2:1:p)
    y(n)=p-n;
end
subplot(2,3,6); plot(t,y);
xs2pdf(0,'continuous.pdf');
