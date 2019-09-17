%% loading video in matlab
myFaceBefore = VideoReader('myFace.mp4');
myVideo = VideoWriter('DetectedFace.mp4');
depVideoPlayer = vision.DeployableVideoPlayer;
faceDetector = vision.CascadeObjectDetector();

%% operation on frame
while hasFrame(myFaceBefore)
    videoFrame = readFrame(myFaceBefore);
    bbox = FaceDetector(videoFrame);
    videoFrame = insertShape(videoFrame , Rectange , bbox);
    
    % display detected face
    depVideoPlayer(videoFrame);
    writeVideo(myVideo,videoFrame);
    pause(1/myFaceBefore.FrameRate);
end

    