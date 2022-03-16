%% Read in Bode Data
clear all
load_txt_files

%% Variables
R=22000;
C1=34.5e-9;
C2=9.43e-9;

%% Read in CircuitLab Simulated data
clabfile='/Users/bevo/Desktop/BME 4380/Clab62.csv';
clabdata=readmatrix(clabfile);

clabfreq=clabdata(:,1);
clabgain=clabdata(:,2);
clabphase=clabdata(:,3);
%% Theoretical 
% Gain
fth=logspace(1,5,200);
w=2.*pi.*fth;
s=1j.*w;

n=1;
d1=R.*R.*C1.*C2.*(s.^2);
d2=(R+R).*C2.*s;
d=d1+d2+1;

gain=n./d;
absgain=abs(gain);

% Theoretical Phase
PhaseGRad=angle(gain);
%% Plotting
subplot(2,1,1)
semilogx(fth,20*log10(absgain),'DisplayName', 'Theoretical')
grid on
hold on
plot(clabfreq,clabgain,'DisplayName','CircuitLab')
hold on
plot(f, G,'DisplayName','Bode Data')
hold on

ylabel('Magnitude (dB)')
title ('Bode Diagram')
legend('Theoretical','Circuit Lab','Bode Data')
hold off



subplot(2,1,2)
semilogx(fth,PhaseGRad*(180/pi)) %% convert phase to degrees
grid on
hold on
plot(clabfreq,clabphase,'DisplayName','CircuitLab')
hold on
plot(f, theta,'DisplayName','Bode Data') % Data file from lab
hold on

ylabel('Phase (deg)')
xlabel('Frequency (rad/s)')
legend('Theoretical','Circuit Lab','Bode Data')
hold off