function [ruleMatrix] = lifeRules(ruleIndex)

%[Death rules; Life rules]
ruleCell = {'Replicator', [0 1 0 1 0 1 0 1 0 0; 0 1 0 1 0 1 0 1 0 0];
         'Seeds', [0 1 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0];
         'Life without Death', [0 0 0 1 0 0 0 0 0 0; 1 1 1 1 1 1 1 1 1 0];
         'Conways Game of Life', [0 0 0 1 0 0 0 0 0 0; 0 0 1 1 0 0 0 0 0 0];
         '34 Life',[0 0 0 1 1 0 0 0 0 0; 0 0 0 1 1 0 0 0 0 0];
         'Diamoeba',[0 0 0 1 0 1 1 1 1 0; 0 0 0 0 0 1 1 1 1 0];
         '2x2',[0 0 0 1 0 0 1 0 0 0; 0 1 1 0 0 1 0 0 0 0];
         'HighLife',[0 0 0 1 0 0 1 0 0 0; 0 0 1 1 0 0 0 0 0 0];
         'Day & Night',[0 0 0 1 0 0 1 1 1 0; 0 0 0 1 1 0 1 1 1 0];
         'Morley',[0 0 0 1 0 0 1 0 1 0; 0 0 1 0 1 1 0 0 0 0];};    
     
ruleMatrix = cell2mat(ruleCell(ruleIndex,2));
end