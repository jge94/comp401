% COMP 401: Senior Seminar
% Project 05
% Jinnan Ge
% 5/1/2015

% ---------------------- Jacobi method, grid 20x20 ----------------------
N = 20;
rightBound = 1;
deltaX = rightBound/N;
x = 0:deltaX:rightBound;

V = zeros(length(x),length(x), length(x));

for i = 1:length(x)
    for j = 1:length(x)
        for k = 1:length(x)
            if (((abs(i-(N+1)/2))^2 + (abs(j-2*(N+1)/7)^2) + (abs(k -(N+1)/2)^2)) <= ((N+1)/8)^2)
                V(i,j,k) = 1;
            elseif (((abs(i-(N+1)/2))^2 + (abs(j-6*(N+1)/7)^2) + (abs(k -(N+1)/2)^2)) <= ((N+1)/8)^2)
                V(i,j,k) = -1;
            end
        end
    end
end

MASK = mask3(x, N);

error = 1;     % change what???--------
%error = getError(V, deltaX, MASK);


tic;

while max(max(max(error)))>=0.2
    V = jacobiMethod(V, MASK);
    error = getError(V,deltaX, MASK);
end

toc;

figure(1)
surf(V(:,:,N/2))
title('Jacobi method, grid 20x20')
axis([1 N+1 1 N+1])

% ---------------------- Gauss-Seidel method, grid 40x40 -------------------------------
N = 40;
rightBound = 1;
deltaX = rightBound/N;
x = 0:deltaX:rightBound;

V = zeros(length(x),length(x), length(x));

for i = 1:length(x)
    for j = 1:length(x)
        for k = 1:length(x)
            if (((abs(i-(N+1)/2))^2 + (abs(j-2*(N+1)/7)^2) + (abs(k -(N+1)/2)^2)) <= ((N+1)/8)^2)
                V(i,j,k) = 1;
            elseif (((abs(i-(N+1)/2))^2 + (abs(j-6*(N+1)/7)^2) + (abs(k -(N+1)/2)^2)) <= ((N+1)/8)^2)
                V(i,j,k) = -1;
            end
        end
    end
end

MASK = mask3(x, N);

error = 1;
%error = getError(V, deltaX, MASK);

tic;

while max(max(max(error)))>=0.2
    V = gaussSeidelMethod(V, MASK);
    error = getError(V,deltaX, MASK);
end

toc;

figure(2)
surf(V(:,:,N/2))
title('Gauss-Seidel Method, grid 40x40')
axis([1 N+1 1 N+1])