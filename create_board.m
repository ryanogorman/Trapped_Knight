function places = create_board(lev)
places = zeros(lev*2-1);
places(lev,lev) = 1;
n = 1;
last = 1;
r = lev;
c = lev;
while n <= lev
    while last < (n*2-1)*(n*2-1)
        while c+1-lev < n
            c = c + 1;
            places(r,c) = last + 1;
            last = last + 1;
        end
        while abs(r-1-lev) < n
            r = r - 1;
            places(r,c) = last + 1;
            last = last + 1;
        end
        while abs(c-1-lev) < n 
            c = c - 1;
            places(r,c) = last + 1;
            last = last + 1;
        end
        while r+1-lev < n
            r = r + 1;
            places(r,c) = last + 1;
            last = last + 1;
        end
        while c+1-lev < n
            c = c + 1;
            places(r,c) = last + 1;
            last = last + 1;
        end
    end
    n = n + 1;
end
    

end