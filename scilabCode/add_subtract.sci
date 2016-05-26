//addition and subtraction
n1=0:10;
y1=[ones(1,5),zeros(1,6)];
y2=[zeros(1,3),ones(1,4),zeros(1,4)];
y3=y1+y2;
y4=y1-y2;
subplot(2,2,1)
plot2d3 (n1,y1);
xlabel('time');
ylabel('amplitude');
title('1st Signal');
subplot(2,2,2)
plot2d3 (n1,y2);
xlabel('time');
ylabel('amplitude');
title('2nd Signal');
subplot(2,2,3)
plot2d3(n1,y3);
xlabel('time');
ylabel('amplitude');
title('Addition of two Signals');
subplot(2,2,4)
plot2d3(n1,y4);
xlabel('time');
ylabel('amplitude');
title('Subtraction of two Signals');
xs2pdf(0,'addSubtract.pdf');
