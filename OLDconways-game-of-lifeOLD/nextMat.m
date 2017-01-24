function [nextMat] = nextMat(prevMat, neighbourMat)
    nextMat = zeros(size(prevMat));
    for i = 1:size(prevMat, 1)
        for j = 1:size(prevMat, 2)
            nextMat(i, j) = checkStatus(neighbourMat(i, j), prevMat(i,j));
        end
    end
end
