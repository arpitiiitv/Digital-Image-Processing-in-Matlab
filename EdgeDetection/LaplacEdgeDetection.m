%% Edge detection using Laplace Impulse response
img=im2double(imread("myImage.jpg"));
whos img
subplot(2,2,1)
imshow(img)
title("Real Image")
%% Laplace impulse  response function
h1=[1,-2,1];
h2=[1;-2;1];
h=[0,1,0;1,-4,1;0,1,0];
%% convolution with real image
edgeImg=conv2(img,h);
subplot(2,2,2)
imshow(edgeImg)
title("Laplace Edge")
%% vertical edge
VEdgeImg=conv2(img,h1);
subplot(2,2,4)
imshow(VEdgeImg)
title("Laplace Edge")

%% horizontal edge
HEdgeImg=conv2(img,h2);
subplot(2,2,3)
imshow(HEdgeImg)
title("Laplace Edge")
sgtitle("Edge Detection Usng Laplace Methode")