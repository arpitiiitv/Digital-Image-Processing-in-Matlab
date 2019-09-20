%% The Hough Transform image space to parameter space
% loading image
img= im2double(imread("Cameraman256.bmp"));
% getting nummber of rows and columns
[row , col]=size(img);
%% Setting thresold 
% try T=0.1,0.2,.........,0,9,1
T=0.55;
%% plotting original Image
subplot(1,2,1)
imshow(img)
title("Original Image")
%% Thresolding function
for i=1:row,
    for j=1:col,
        if img(i,j)>=T
            img(i,j)=1;
        else
            img(i,j)=0;
        end
    end
end
%% plotting Houge transform Image
subplot(1,2,2)
imshow(img)
title("Hough Transformed Image")
