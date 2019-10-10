classdef Knight
   properties
      Cur
      Row
      Col
      Board
   end
   methods
      function obj = Knight(board)
          obj.Cur = 1;
          obj.Row = board.Levels;
          obj.Col = board.Levels;
          obj.Board = board;
      end
      function obj = move(obj)
          possible = zeros(8,1);
          possible(1) = obj.Board.Places(obj.Row+2,obj.Col+1);
          possible(2) = obj.Board.Places(obj.Row+2,obj.Col-1);
          possible(3) = obj.Board.Places(obj.Row-2,obj.Col+1);
          possible(4) = obj.Board.Places(obj.Row-2,obj.Col-1);
          possible(5) = obj.Board.Places(obj.Row+1,obj.Col+2);
          possible(6) = obj.Board.Places(obj.Row-1,obj.Col+2);
          possible(7) = obj.Board.Places(obj.Row+1,obj.Col-2);
          possible(8) = obj.Board.Places(obj.Row-1,obj.Col-2);
          for i = 1:8
              if find(obj.Board.Unallowed == possible(i)) ~= 0
                  possible(i) = inf;
              end
          end
          [Min,ind] = min(possible);
          if Min==Inf
              error("cant move anymore")
          end
          obj.Cur = Min;
          if ind == 1 || ind == 2
              obj.Row = obj.Row+2;
          end
          if ind == 3 || ind == 4
              obj.Row = obj.Row-2;
          end
          if ind == 5 || ind == 7
              obj.Row = obj.Row+1;
          end
          if ind == 6 || ind == 8
              obj.Row = obj.Row-1;
          end
          %column
          if ind == 5 || ind == 6
              obj.Col = obj.Col+2;
          end
          if ind == 7 || ind == 8
              obj.Col = obj.Col-2;
          end
          if ind == 1 || ind == 3
              obj.Col = obj.Col+1;
          end
          if ind == 2 || ind == 4
              obj.Col = obj.Col-1;
          end
          
      end
   end
end