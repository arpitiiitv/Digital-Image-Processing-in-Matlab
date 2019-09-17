%% plotting Matrix and its inverse 
clear;
clc;

%% random matrix and its inverse
a=rand(40,40);
subplot(2,2,1)
imshow(a)
title("original")
subplot(2,2,2)
imshow(inv(a))
title("inverse")

%% 4x4 matrix and its inverse
b=[1,2,3,4;11,2,-2,32;0,1,2,112;11,23,112,-12];
subplot(2,2,3)
imshow(b)
title("matrix b")
subplot(2,2,4)
imshow(inv(b))
title("inverse b")

