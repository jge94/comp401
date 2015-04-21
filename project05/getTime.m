function [ t ] = getTime( Nt, dx, T, CONS, widDike )

for i = 1:Nt
    if T(i,(CONS + widDike/2+50)/dx) == max(max(T(:,(CONS + widDike/2 + 50)/dx)))
        t = i;
    end
end

end

