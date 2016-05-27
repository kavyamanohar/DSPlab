// DFT – magnitude and phase plot//
clc;
clear all;
close;
x1=[1 1 1 0];
X1=fft(x1,-1);
disp(X1,"X1(k) =");
subplot(2,3,1);plot2d3(x1);title('Sequence 1')
subplot(2,3,2);plot2d3(abs(X1));title('Absolute value of DFT')
subplot(2,3,3);plot2d3(atan(imag(X1),real(X1)));title('Phase of DFT')

x2=[1 1 1 0 0 0 0 0];
X2=fft(x2,-1);
disp(X2,"X2(k) =");
subplot(2,3,4);plot2d3(x1);title('Sequence 2')
subplot(2,3,5);plot2d3(abs(X2));title('Absolute value of DFT')
subplot(2,3,6);plot2d3(atan(imag(X1),real(X1)));title('Phase of DFT')
xs2pdf(0,'dft_sequence.pdf');
