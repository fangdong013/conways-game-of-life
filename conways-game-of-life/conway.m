function [] = conway(matrix)

A = matrix;


gridGenerator(A)
pause(0.0001)
A = nextMat(A, checkMat(A));
   
end
    
