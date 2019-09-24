location = 'C:\users\arpit\desktop\matCode\Video Processing\Generated Image\*.jpg';
data_store = imageDatastore(location);
N=174;
video = VideoWriter("ImageToVideo.avi");
open(video)
while hasdata(data_store)
    img=read(data_store);
    writeVideo(video,img);
end
close(video)