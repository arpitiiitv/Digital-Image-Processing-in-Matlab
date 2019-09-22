%% Loading Image from same folder
image=im2double(imread("Cameraman.jpg"));
% getting number of rows and coloums
[row,col ] = size(image)
%% Calculating mean of Image 
% set mean equal to thresold
T=mean2(image);
mean_before=T
%% plotting original Image
subplot(1,2,1)
imshow(image)
title("Original Image")
%% remove background function
for i=1:row,
    for j=1:col,
        if(image(i,j) > T-0.10)
            image(i,j)=1;    
        end
    end
end
%% Plotting  removed background image
subplot(1,2,2)
imshow(image)
title("Background Remove")
mean_after= mean2(image)
