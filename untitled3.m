clear, clc, close all;

AR = autoregressif(2,4,5000);
plot(AR)