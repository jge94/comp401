function [ updateV ] = jacobiMethod(V, MASK)
% For Jacobi relaxation, when computing new Vij s, always the use the “old” values for the
% V(i-1)(j), etc. on the right hand side that were obtained in the previous relaxation step.
%updateV = zeros(size(V));
updateV = V;

for i = 2:length(V) - 1
    for j = 2:length(V) - 1
        for k = 2:length(V) - 1
            if MASK(i,j,k) == 0  % outside the conductor
                updateV(i,j,k) = (V(i-1,j,k) + V(i+1,j,k) + V(i,j-1,k) + V(i,j+1,k) + V(i,j,k-1) + V(i,j,k+1))/6;
            %else
                %updateV(i,j,k) = 1; 
            end % end if else
        end % end for k
    end % end for j
end % end for i

end



