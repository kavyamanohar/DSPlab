// FIR low pass filter//
clear all;
clc ;
close ;
N =11;// window length=11
U =6;
for n= -5+U :1:5+ U
    if n ==6
        hd(n) =0.5;// hd is the Finite impulse response
    else
        hd(n)=( sin (%pi *(n-U) /2) )/( %pi *(n-U));//sinc function is sampled.
    end
end
[ hzm ,fr ]= frmag (hd ,256) ;//frequency domain magnitude samples 'hzm' of impulse response 'hd' 
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure ;
plot (2* fr , hzm_dB );
a= gca ();
xlabel ( ' Frequency w   ' );
ylabel ( 'Magnitude in dB ' );
title ( ' Frequency Response of FIR LPF with N=11 ' );
xgrid (2);
xs2pdf(0,'firWindow.pdf')
