clear, clc, close all;

img = imread('index.png');
img=img(:,:,1);
img = imread('cameraman.tif');
figure, imshow(img);
colormap('gray');
[x,y] = ginput(2);

line(x,y);
[X,Y,signature]=premiere_signature(img,x,y);
figure, plot(signature);