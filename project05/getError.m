function [ error ] = getError( V, deltaX, MASK )
% calculate the error tolerance

error = zeros(length(V),length(V), length(V));

for i = 2:length(V) - 1
    for j = 2:length(V) - 1
        for k = 2:length(V) - 1
            if MASK(i,j,k) == 0  % outside the conductor
                error(i,j,k) = (V(i-1,j,k) + V(i+1,j,k) + V(i,j-1,k) + V(i,j+1,k) + V(i,j,k-1) + V(i,j,k+1) - 6*V(i,j,k))/(deltaX*deltaX);
            end % end if else
        end % end for k
    end % end for j
end % end for i

end