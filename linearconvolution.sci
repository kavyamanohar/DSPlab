clear;
close;
clc;
//linear convolution of an input sequence x with impulse response h of a system
x=input('Enter input sequence(eg:[1 2 3 4]):');
h=input('Enter impulse response(eg:[1 2 3 4]):'); // defining impulse response
n2=0:length(h)-1;
//x=[1 2 3 4 5];
x
h
n1=0:length(x)-1;
y=convol(x,h);
y
n=0:length(h)+length(x)-2;
subplot(2,2,1)
plot2d3(n2,h);
xlabel("time---->");
ylabel("amplitude----->");
title("IMPULSE RESPONSE");
subplot(2,2,2)
plot2d3(n1,x);
xlabel("time---->");
ylabel("amplitude----->");
title("INPUT RESPONSE");
subplot(2,2,3)
plot2d3(n,y);
xlabel("time---->");
ylabel("amplitude----->");
title("LINEAR CONVOLUTION");
