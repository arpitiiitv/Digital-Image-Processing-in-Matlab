%% Making folder to store generated Images
Folder = 'C:\Users\arpit\Desktop\matCode\Video Processing\Generated Image';
%% Loading Video from same folder
index=0;
vid=VideoReader('myFace.mp4');

%% Extraction of image 
while hasFrame(vid)
    % reading all the frames of video
    x=readFrame(vid);
    
    % writting images in to specified folder
    % taking all image in interval of 10
    if mod(index,10)==0
        imwrite(x,fullfile(Folder,sprintf('Image%03d.jpg',index)));
    end
    % to generate all images remove above if statement
    % taking all image in interval of 10
    index = index + 1;
end
total_frame = index
frame_rate = vid.Framerate
duration = total_frame * frame_rate

%% Storing images into generated image folder
FileList = dir(fullfile(Folder, '*.jpg'));
for iFile = 1:length(FileList)
  aFile = fullfile(Folder, FileList(iFile).name);
  img   = imread(aFile);
end


 