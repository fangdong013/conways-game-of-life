function [outputMatrix] = conway(inputMatrix)

% A = randi([0 1], 100, 100);

% while true
    gridGenerator(inputMatrix)
    pause(0.0001)
    outputMatrix = nextMat(inputMatrix, checkMat(inputMatrix));
end
    

