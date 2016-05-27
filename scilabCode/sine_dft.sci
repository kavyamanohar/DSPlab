// DFT – magnitude and phase plot
//Frequency components of a signal
//----------------------------------
// build a noised signal sampled at 1000hz sampling rate containing  pure frequencies
// at 50 and 70 Hz
clc;
clear;
close;

sample_rate=1000;
t = 0:1/sample_rate:1;
N=size(t,'*'); //number of samples
f=sample_rate*(0:(N/2))/N; //associated frequency vector
s=sin(2*%pi*50*t)+sin(2*%pi*70*t+%pi/4);
y=fft(s);
subplot(2,2,1)
plot(t,s); title('Sum of two sinewaves')
subplot(2,2,2)
n=size(f,'*')
plot(f,abs(y(1:n))); title('frequency spectrum of the signal on left')

clear

sample_rate=1000;
t = 0:1/sample_rate:1;
N=size(t,'*'); //number of samples
f=sample_rate*(0:(N/2))/N; //associated frequency vector
s=sin(2*%pi*50*t)+sin(2*%pi*70*t+%pi/4)+grand(1,N,'nor',0,1);;
y=fft(s);
subplot(2,2,3)
plot(t,s);title('Sum of two sinewaves with additive noise')
subplot(2,2,4)
n=size(f,'*')
plot(f,abs(y(1:n)));title('frequency spectrum of the signal on left')
xs2pdf(0,'sine_dft.pdf');
