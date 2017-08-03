function imAvg = getAverage(fp)
%getAverage function to take the average image of a stack
%   fp = file path for the folder that contains the image stack

imDir = dir(fp);

imCounter = 1;
for i = 1:length(imDir)
    if(imDir(i).name(1) = 'F')
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

