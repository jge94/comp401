% COMP 401: Senior Seminar
% Project 05
% Jinnan Ge
% 5/1/2015

% ---------------------- Jacobi method, grid 20x20 ----------------------
N = 20;
rightBound = 1;
deltaX = rightBound/N;
x = 0:deltaX:rightBound;

V = zeros(length(x),length(x));

for i = 1:length(x)
    for j = 1:length(x)
        if (((abs(i-(N+1)/2))^2 + (abs(j-(N+1)/2)^2)) <= ((N+1)/4)^2)
            V(i,j) = 1;
        end
    end
end

error = getError(V,deltaX);

tic;

while max(max(error))>=0.2
    V = jacobiMethod(V);
    error = getError(V,deltaX);
end

toc;

figure(1)
surf(V)
title('Jacobi method, grid 20x20')
axis([1 N+1 1 N+1])

% ---------------------- Gauss-Seidel method, grid 20x20 -------------------------------
N = 20;
rightBound = 1;
deltaX = rightBound/N;
x = 0:deltaX:rightBound;

V = zeros(length(x),length(x));

for i = 1:length(x)
    for j = 1:length(x)
        if (((abs(i-(N+1)/2))^2 + (abs(j-(N+1)/2)^2)) <= ((N+1)/4)^2)
            V(i,j) = 1;
        end
    end
end

error = getError(V,deltaX);

tic;

while max(max(error))>=0.2
    V = gaussSeidelMethod(V);
    error = getError(V,deltaX);
end

toc;

figure(2)
surf(V)
title('Gauss-Seidel Method, grid 20x20')
axis([1 N+1 1 N+1])


% ---------------------- Gauss-Seidel method, grid 50x50 -------------------------------
N = 50;
rightBound = 1;
deltaX = rightBound/N;
x = 0:deltaX:rightBound;

V = zeros(length(x),length(x));

for i = 1:length(x)
    for j = 1:length(x)
        if (((abs(i-(N+1)/2))^2 + (abs(j-(N+1)/2)^2)) <= ((N+1)/4)^2)
            V(i,j) = 1;
        end
    end
end

error = getError(V,deltaX);

tic;

while max(max(error))>=0.2
    V = gaussSeidelMethod(V);
    error = getError(V,deltaX);
end

toc;

figure(3)
surf(V)
title('Gauss-Seidel Method, grid 50x50')
axis([1 N+1 1 N+1])