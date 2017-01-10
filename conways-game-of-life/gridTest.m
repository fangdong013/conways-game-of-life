


clc;
A = randi([0 1], 10, 10);
[r,c] = size(A);                           %# Get the matrix size
imagesc((1:c)+0.5,(1:r)+0.5,A);            %# Plot the image
colormap(gray);                              %# Use a gray colormap
% axis equal                                   %# Make axes grid sizes equal
% set(gca,'XTick',1:(c+1),'YTick',1:(r+1),...  %# Change some axes properties
%         'XLim',[1 c+1],'YLim',[1 r+1],...
%         'GridLineStyle','-','XGrid','on','YGrid','on');
    
