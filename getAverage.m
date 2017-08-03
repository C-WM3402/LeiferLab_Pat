function imAvg = getAverage(filePath)
%getAverage function to take the average image of a stack
%   fp = file path for the folder that contains the image stack

imDir = dir(filePath);

imCounter = 1;
for i = 1:length(imDir)
    if(strcmp(imDir(i).name(1:6),'Frame_'))
        newIm = double(imread(imDir(i).name));
        if(imCounter == 1)
            sumIm = newIm;
        else
            sumIm = sumIm + newIm;
        end
        imCounter = imCounter + 1;
    end
end

imAvg = sumIm/imCounter;

end

