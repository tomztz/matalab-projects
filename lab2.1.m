close all;

input=load('array.mat');

N=1024;
fs=1000;
x=[0:1/fs:1-1/fs];
subplot(1,2,1)
Z=input.y;
plot(x,Z)

subplot(1,2,2);
F=fftshift(abs(fft(Z,N)));
plot (input.newX,F);
