function [ruleString] = ruleString(ruleStringIndex)

ruleStrings = {fileread('rules/Replicator.txt');
         fileread('rules/Seeds.txt');
         fileread('rules/LifewithoutDeath.txt');
         fileread('rules/Life.txt');
         fileread('rules/34Life.txt');
         fileread('rules/Diamoeba.txt');
         fileread('rules/2x2.txt');
         fileread('rules/HighLife.txt');
         fileread('rules/DaynNite.txt');
         fileread('rules/Morley.txt')
         fileread('rules/bsnotation.txt')};
     
ruleString = ruleStrings(ruleStringIndex);

end