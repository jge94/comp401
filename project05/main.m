% PHYS 228: Scientific Computing
% Assignment 7 prime
% Jinnan Ge
% 11/7/2014

C = 0.1; % Courant Number << 1
widthDike = 10;

v = 3.7e-6;
dx = 0.1;
dt = ((C*(dx^2))/v)/(60*60*24);
t = 0:dt:100;
x = -50:dx:50;
Nt = length(t);
Nx = length(x);

tempDike = zeros(Nt,Nx)+50;
tempDike(1, abs(x)<=(widthDike/2)) = 1200;

tempDike = boundaryCond(tempDike,Nt,Nx,C,x);

% How wide the zone where hornblende can form
width = getWidth( Nt, Nx, tempDike );
% Answer: 12

% time for rock that's 2 meters away from the dike
t0 = getTime( tempDike, 2, Nt, dx, widthDike );
% t0*dt = t0*0.0031

% 4 m
t1 = getTime( tempDike, 4, Nt, dx, widthDike );
% t1*dt = t1*0.0031

% 6 m
t2 = getTime( tempDike, 6, Nt, dx, widthDike );
% t2*dt = t2*0.0031

% What happens if the dike is twice as wide?
% It becomes the “hornblende zone” become wider in direct proportion: 2
% times



