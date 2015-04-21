function [ w ] = getWidth( Nt, Nx, T )

m = 0;

% A = zeros(100000); Needed if not dynamically allocating array

for i = 1:Nt
    for j = 1:Nx
        if T(i,j)>=500
            m = m+1;
            A(m) = j;
        end
    end
end

% this is very important
w = max(A) - min(A);


end

