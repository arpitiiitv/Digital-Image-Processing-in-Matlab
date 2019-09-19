%% Edge Detection using Sobel Impulse response
img=im2double(imread("myImage.jpg"));
whos img
subplot(2,2,1)
imshow(img)
title("Original Image ")
%% Sobel impulse response functiom 
h1=[-1,1;-2,2;-1,1];
h2=[-1,-2,-1;1,2,1];
%% finding vertical and horizontal edges
% vertical edge Convolution with h1
X1=conv2(img,h1);
whos X1
subplot(2,2,2)
imshow(X1)
title("Vertical Edge ")
% horizontal edge Convolution with h2
X2=conv2(img,h2);
whos X2
subplot(2,2,3)
imshow(X2)
title("Horizontal Edge ")

%% convolving together
X3=conv2(img,(h1+h2'));
whos X3
subplot(2,2,4)
imshow(X3)
title("Vertical Edge ** Horizontal Edge ")


sgtitle('Sobel Edge Detection')
