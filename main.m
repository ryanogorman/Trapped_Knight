%Script
n = 35;
board = Board(n);
knight = Knight(board);
count = 0;
%
length = n*2-1;
graph = zeros(length);
%
while count < 2015
    knight = knight.move();
    knight.Board.Unallowed = [knight.Board.Unallowed,knight.Cur];
    graph(knight.Row,knight.Col) = 1;
    count = count + 1;
end
%%
un = knight.Board.Unallowed;
found = true;
i = 0;
while found == 1 
    i = i + 1;
    found = ismember(i,un);
end
disp('Lowest number not visited is')
i