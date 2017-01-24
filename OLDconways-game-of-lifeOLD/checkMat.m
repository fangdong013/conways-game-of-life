function [matout] = checkMat(matin)
    matout = zeros(size(matin));
    for i = 1:size(matin, 1)
        for j = 1:size(matin, 2)
            nums = checkForNeighbours(matin, i, j);
            matout(i, j) = nums;
        end
    end
end

function [num] = checkForNeighbours(matin, i, j)
    start_i = max(i - 1, 1);
    end_i =  min(i + 1, size(matin, 1));
    
    start_j = max(j - 1, 1);
    end_j = min(j + 1, size(matin, 2));
    
    temp = matin(start_i:end_i, start_j:end_j);
    num = sum(sum(temp)) - matin(i, j);
    
end


