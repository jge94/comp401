function [ T ] = boundaryCond( T, Nt, Nx, C, x )
% This part is covered in class
for i = 1:Nt-1
    for j = 2:Nx-1
        T(i+1,j) = T(i ,j) + C.*(T(i ,j-1) - 2.*T(i,j) + T(i, j+1));
        plot(x,T(i,:))
        axis([-50 50 0 1500])
        drawnow
    end % first for
end % second for

end

