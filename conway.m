clc;
clear all;
 

A = randi([0 1], 100, 100);

while true
    gridGenerator(A)
    pause(0.0001)
    A = nextMat(A, checkMat(A));
end
    
