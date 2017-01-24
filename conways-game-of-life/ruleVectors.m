function [lifeVector, deathVector] = ruleVectors(ruleMatrix)
replicator = [1 3 5 7; 1 3 5 7]

ruleCell={'replicator', [1 3 5 7; 1 3 5 7]};

lifeVector = [0 0 0 0 0 0 0 0 0];
deathVector = [0 0 0 0 0 0 0 0 0];

lifeVector(replicator(1,:)) = 1 
deathVector(replicator(2,:)) = 1
end