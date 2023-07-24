% E12
% Característiques locals III

% Viola-Jones
close all
Detector = vision.CascadeObjectDetector('FrontalFaceCART');
Detector2 = vision.CascadeObjectDetector('Nose');
vR = VideoReader('Putin.webm');
vR.CurrentTime = 2;
while hasFrame(vR)
    I = readFrame(vR);
    bboxes = step(Detector,I);
    if size(bboxes,1) > 0
        for i = 1:size(bboxes,1)
            I2 = imcrop(I,bboxes(i,:));
            bboxes2 = step(Detector2,I2);
            if size(bboxes2,1) > 0
                I = insertShape(I,'Rectangle',bboxes(i,:));
                bboxes2(1,1) = bboxes2(1,1) + bboxes(i,1);
                bboxes2(1,2) = bboxes2(1,2) + bboxes(i,2);
                I = insertShape(I,'Rectangle',bboxes2(1,:));
                break;
            end
        end
    end
    %I = insertShape(I,'Rectangle',bboxes);
    imshow(I);
end