i=im2double(imread("arpit.jpg"));
whos i
r=i(:,:,1);
whos r
%%
subplot(2,2,1)
imshow(r)
title("original")

c=r;
c(1000:1500,:)=0;
x=c;
subplot(2,2,2)
imshow(c)
title("currupted")
error=r-x;
subplot(2,2,3)
imshow(error)
title("error")