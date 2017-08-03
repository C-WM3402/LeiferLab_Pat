function imAvg = getAverage(filePath,sig)
%getAverage function to take the average image of a stack
%   fp = file path for the folder that contains the image stack
%   sig = file signifier that denotes which files in the directory are part
%   of the image stack

imDir = dir(filePath);
sigL = length(sig);

imCounter = 1;
for i = 1:length(imDir)
    fn = imDir(i).name; % filename
    if(strcmp(fn(1:min(length(fn),sigL)),sig))
        newIm = imread([filePath,'/',fn]);
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

