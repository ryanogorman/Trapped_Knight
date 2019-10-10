classdef Board
   properties
      Unallowed
      Cur
      Levels
      Places
   end
   methods
      function obj = Board(lev)
          if nargin > 0
             if isnumeric(lev)
                obj.Levels = lev;
             else
                error('Value must be numeric')
             end
          else
              obj.Levels = 10; %default
          end
          obj.Unallowed = [1];
          obj.Cur = 1;
          obj.Places = create_board(obj.Levels);
      end 
   end
end