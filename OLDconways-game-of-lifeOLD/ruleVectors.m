function [lifeVector, deathVector] = ruleVectors(ruleIndex)
replicator = [1 3 5 7; 1 3 5 7]

ruleCell={'replicator', [1 3 5 7; 1 3 5 7]};

cellMatrix = cell2mat(ruleCell(ruleIndex,2));

lifeVector = [0 0 0 0 0 0 0 0 0];
deathVector = [0 0 0 0 0 0 0 0 0];

lifeVector(cellMatrix(1,:)) = 1 
deathVector(cellMatrix(2,:)) = 1
end