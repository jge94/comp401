function [ V ] = gaussSeidelMethod( V, MASK )
% set each point equal to the average of its neighbors

N = length(V);

for i= 2:N-1
    for j= 2:N-1
        for k = 2:N-1
            if (MASK(i,j,k) == 0)
                V(i,j,k) = (V(i-1,j,k) + V(i+1,j,k) + V(i,j-1,k) + V(i,j+1,k) + V(i,j,k-1) + V(i,j,k+1))/6;
            %else
                %V(i,j,k) = 1;
            end
        end 
    end
end

% end function
end

