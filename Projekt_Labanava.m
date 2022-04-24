clc;
clear all
close all


load BUT_PPG.mat

fvz = BUT_PPG.PPG_fs;
x = BUT_PPG.PPG;
time = 1:300;
x = x - mean(x, 2);
figure
plot(time, x(7, :))


%% Filtrace

a = 1;
b = fir1(299, [0.3/(fvz) 6/(fvz)], "bandpass");

y = conv(b, x(7, :), 'same');


figure()
plot(time, y)

a = 1;

lich_ms = 100;
lich_vz = round(100*fvz/1000);
b = fir1(lich_vz, 0.1/(fvz/2), "low");
y = filtfilt(b, a, y');
y = y';

figure()
plot(time, y)


%% Detekce vln

[pks, locs] = findpeaks(y, 'MinPeakHeight', 1);
figure()
plot(y)
hold on
scatter(locs, pks, 'og')

%% Vypocet HRV v casove oblasti

HRV_t = (length(pks)/10) * 60;
disp(HRV_t);

%% Frekvencni oblast
spek = fft(x(7, :), 300);
[pks1, locs1] = findpeaks(real(spek), 'MinPeakHeight', 100);
figure()
plot(time, spek)
hold on
scatter(locs1, pks1, 'og')

HRV_f = (locs1(1)/length(spek))*fvz*60;
disp(HRV_f)