

// Circular Convolution//

clear;
clc ;
close ;

x1 =input('Enter sequence 1:');
x2 =input('Enter sequence 2:');
n1= length (x1);
n2= length (x2);
n3=n2 -n1;
if (n3>=0)
x1=[x1,zeros(1,n3)];

else
x2=[x2,zeros(1,-n3)];

end
disp(x1);
disp(x2);
 //DFT Computation
X1=fft(x1 , -1);
X2=fft(x2 , -1);
Y=X1 .* X2;
//IDFT Computation
y= fft (Y ,1) ;
// Di s pl a y s e quenc e y [ n ] i n command window
disp (y,"y [ n]=");
subplot(1,3,1);plot2d3(x1);
subplot(1,3,2);plot2d3(x2);
subplot(1,3,3);plot2d3(y);title('Circular convolution')
xs2pdf(0,'circular_conv.pdf');
