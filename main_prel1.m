clear, clc, close all;

%préliminaire 1
[AR,C] = autoregressif(2,4,5000);

N = 5000;
f = -1/2:1/N:1/2-1/N;
ecart = 1;
H = freqz(1, C, 2*pi*f);
subplot(221);
plot(abs(AR));
title('signal AR');
subplot(222);
plot(f,(abs(fftshift(fft(AR))).^2)/N);
hold on, plot(f,(abs(H).^2)*ecart);
legend('spectre de puissace','DSP')
title('DSP et spectre de puissance du signal AR');

%préliminaire 2
RSB=-10;
AR_B= AR + bruitage(AR,RSB);
subplot(223);
plot(abs(AR_B));
title('Signal AR bruité');
subplot(224);
plot(f,(abs(fftshift(fft(AR_B))).^2)/N);
title('DSP et spectre de puissance du signal AR bruité')
%hold on, plot(f,(abs(H).^2)*ecart);
