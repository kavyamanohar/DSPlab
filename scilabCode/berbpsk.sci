//sin wave
clc;
fm=5;
t=linspace(0,1,500);
sgl=0.2*sin(2*%pi*fm*t);
//msg sig
msg=[];
for i=1:500
    if sgl(i)>0 then
        msg=[msg 1];
    else
        msg=[msg -1];
    end
end
subplot(3,1,1)
plot(t,msg);
title('msg signal');//500 message points, each with a value -1 or +1
xlabel('time');
ylabel('amplitude');

//carrier sig

fc=30;
car=.5*sin(2*%pi*fc*t);
subplot(3,1,2)
plot(t,car);
title('carrier signal');
xlabel('time');
ylabel('amplitude');
//mod sig
ask=msg.*car;
subplot(3,1,3)
plot(t,ask);
title('modulated signal');
xlabel('time');
ylabel('amplitude');
xs2pdf(0,'Transmission.pdf')
//receive signal

for k=1:5
    A=0.5;
    snr_db=[2 4 6 8 10];// defines different vaues of SNR from 2 to 10 in dB
    snr(k)=10^(snr_db(k)/10);// converts snr in dB to actual value
    sigma(k)=A/sqrt(snr(k));//A measure of noise power corresponding to particular value of SNR
    theory_ber(k)=0.5*erfc(sqrt(snr(k)));
    disp(theory_ber(k));// Theoretical value of bit error rate calculated for different values of SNR
end

//demod sig
figure;
n=rand(1,500);
for q=1:5
    ask_noise=ask+sigma(q)*n; // generate noise with noise power corresponding to specified SNR
    dem=ask_noise.*car;
    msg2=[];
    for i=1:500
        if dem(i)>0 then
            msg2=[msg2 1];
        else 
            msg2=[msg2 -1];
        end
    end
    subplot(6,1,q)
    plot(t,msg2);
    title('Demodulated message')
    count=0;
    for i=1:500
        if (msg2(i)-msg(i)~=0) then
            count=count+1;
        end
    end
    BER(q)=count/500;
    disp(BER(q));
end
subplot(6,1,6)
plot(t,msg);
title('Actual Message')
xs2pdf(1,'Reception.pdf')
//subplot(2,3,5)
//plot(t,msg2);
disp(BER);
figure;
plot2d1("ll",snr_db,BER,style=+2);
set(gca(),"auto_clear","off");
plot2d1("ll",snr_db,theory_ber,style=+3);
legend('Practical','Theoritical');
title('SNR V/S BER');
xlabel('SNR IN DB ------->');
ylabel('BER IN DB ------->');
xs2pdf(2,'BERVsSNR.pdf')
