function [outputMatrix] = conway(inputMatrix)
    gridGenerator(inputMatrix)
%   handles = guidata(hObject,simSpeed);
    pause(0.0001);
    outputMatrix = nextMat(inputMatrix, checkMat(inputMatrix));
end
    

