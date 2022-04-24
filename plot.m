close all, clear all, clc
%sinusova funkce o frekvenci 5Hz (2s)
t1=0:0.01:2;     
y1=5*sin(2*pi*5*t1);   
subplot(2,2,1);
h1=plot(t1,y1, 'linewidth', 1, 'color', 'b');
xlabel('Frekvence [Hz]')
ylabel('Amplituda [s]')
title('Sinusova funkce')
%-----------------------------
subplot(2,2,2)
x2=0:0.2:10;
y2=log(x2);
h2=plot(x2,y2, 'linewidth', 1, 'color', 'r');
title('Logaritmicka funkce')
%-----------------------------
subplot(2,2,3)
x3=linspace(-3,3);
y3=x3.^2;
h3=plot(x3,y3,'linewidth', 1, 'color', 'g');
title('Kvadraticka funkce')
%-----------------------------
%%
figure()
h1=plot(t1,y1, 'linewidth', 1, 'color', 'b');
hold on
h2=plot(x2,y2, 'linewidth', 1, 'color', 'r');
hold on
h3=plot(x3,y3,'linewidth', 1, 'color', 'g');
legend('5sin(2pi*5t1', 'log(x2)', 'x3.^2')
