function [status] = checkStatus(neighbourCount, thisStatus)
    % 0 - death
    % 1 - life
    % Neighbourhood conditions for dead and living cells.
    % condition = [0 1 2 3 4 5 6 7 8];
      con_life  = [0 0 1 1 0 0 0 0 0];
      con_dead  = [0 0 0 1 0 0 0 0 0];
    
    if thisStatus == 1
        status = con_life(neighbourCount + 1);
    else
        status = con_dead(neighbourCount + 1);
    end 
end