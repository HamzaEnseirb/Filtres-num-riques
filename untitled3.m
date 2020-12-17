clear, clc, close all;

[AR,C] = autoregressif(2,4,5000);
N = 5000;
f = -1/2:1/N:1/2-1/N;
ecart = 1;
H = freqz(1, C, 2*pi*f);
figure, plot(f,(abs(fftshift(fft(AR))).^2)/N);
hold on, plot(f,(abs(H).^2)*ecart);
