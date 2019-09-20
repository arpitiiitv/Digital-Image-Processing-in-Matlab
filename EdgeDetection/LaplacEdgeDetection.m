%% Edge detection using Laplace Impulse response
img=im2double(imread("myImage.jpg"));
whos img
subplot(1,2,1)
imshow(img)
title("Real Image")
%% Laplace impulse  response function
h=[0,1,0;1,-4,1;0,1,0];
%% convolution with real image
edgeImg=conv2(img,h);
subplot(1,2,2)
imshow(edgeImg)
title("Laplace Edge")

sgtitle("Edge Detection Usng Laplace Methode")