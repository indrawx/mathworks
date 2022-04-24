%3d plosne grafy
%koule
%17.9.2021
%---------------
clc
close all
x=-pi:2*pi/40:pi; %osa x, vektor
y=-pi:2*pi/30:pi; %osa y
[X,Y]=meshgrid(x,y); %matice jako plocha, souradnice prusecku
Z=0.9*(sin(X)+cos(Y));
%----------kresleni---------
s1=surf(X,Y,Z);
[a,e]=view %natoceni 
box on
grid on
c=colormap;
c(1:10,:) %cast barevne skaly
%----------
% b=colorbar;
%---------barevne skaly------
%pause(1)
colormap(jet) %volba barevne skaly
