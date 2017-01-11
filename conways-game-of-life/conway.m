function [boolean] = conway(boolean)

running = boolean;
A = randi([0 1], 150, 150);

    while running
        gridGenerator(A)
        pause(0.0001)
        A = nextMat(A, checkMat(A));
    end
end
    
