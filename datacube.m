%aim of this file is to plot a cube of "data"
%for this example use a 50x50x50 cube (n=50)
%we have 50 pressure "slices", both a f'n of T and S
n=50; s0=35;
%salinity is a constant level of "35"

%declare the linspace of x,y,z (where z=pressure)
P = [n:-1:1]'; x=P; y=P;
%now make temperature a function
alpha = 0.002; beta = 0.0034; gamma = 0.6;
%create a for loop for each pressure slice
%note that setting variables as column vectors
%then combining them into matrices and plotting the matrix
%is equivalent to plot(x,y)
%therefore, create nxn matrices of T and S for each P=c
T = zeros(n,n,n); S = zeros(n,n,n); P = zeros(n,n,n);
%given P=1;
for z=1:n
    for x=1:n
        for y=1:n
            P(n+1-z,y,x)=n-z;
            T(n+1-z,y,x) = alpha*x + beta*y + gamma*z;
            S(n+1-z,y,x)=s0;
            
        end
    end
end
%now time to plot 3 seperate data cubes of Temp, Salinity, Pressure
% [X,Y,Z] = meshgrid(1:n, 1:n, 1:n);
% figure(1)
% scatter3(X(:), Y(:), Z(:), 5, T(:))
% title('Temperature')
% xlabel('x')
% ylabel('y')
% zlabel('Pressure')
% colorbar()
% 
% figure(2)
% scatter3(X(:), Y(:), Z(:), 5, S(:))
% colorbar()
% title('Salinity')
% xlabel('x')
% ylabel('y')
% zlabel('Pressure')
% 
% figure(3)
% scatter3(X(:), Y(:), Z(:), 5, P(:))
% colorbar()
% title('Pressure')
% xlabel('x')
% ylabel('y')
% zlabel('Pressure')
