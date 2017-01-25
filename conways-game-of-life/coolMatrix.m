function [coolMatrix] = coolMatrix(coolIndex)

    randomMatrix = zeros(100,100);
    randomMatrix(:,:,2) = randi([0 1], 100, 100);
    
    coolMatrixCell = {randomMatrix;
                      imread('cool/glidergun.png');
                      imread('cool/gliderguns.png');
                      imread('cool/seeds.png');
                      imread('cool/spaceships.png');
                      imread('cool/spaceship.png');};
                    
    imdata = coolMatrixCell{coolIndex};
    coolMatrix = imdata(:,:,2);
    coolMatrix(coolMatrix>0) = 1;
 
end