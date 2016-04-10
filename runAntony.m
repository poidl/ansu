clear all
close all
restoredefaultpath
addpath(genpath('.'))
%addpath(genpath('../../../gsw_matlab_v3_04'))
addpath(genpath('../gsw_matlab_v3_05_3'))

try
    rmdir('./data','s')
catch
end
make_dir('./data') % create data dir if it doesn't exist

% first a couple of conventions:

% Variables of 3-d space are gridded on lattices with dimensions (nz,ny,nx), where
% nz ... number of points in vertical direction.
% ny ...                     meridional (y-) direction
% nx ...                     zonal (x-) direction

% Gridpoints are identified by their indices (k,j,i)
% Attention: k increases with increasing pressure. k increases with decreasing z (the
% z-axis originates on the ocean surface and points into the sky, see page
% 49 of the Cushman-Roisin book I sent in the email). i and j behave as you would expect.


datacube % The fields look good, I just swapped the indices according to the conventions

s=S; ct=T; p=P;

% Lat/lon are not really necessary yet. Note that if you do use longitude and latitude later, 
% longitude increases in the 3d index (zonal direction),
% and latitude increases in the 2nd index (meridional direction).

% We use an isotropic grid. Usually dx and dy are calculated from lat/lon.
dx=ones(n,n);
dy=ones(n,n);
datapath = './data/';
save([datapath,'dxdy.mat'], 'dx', 'dy')

% axes for plotting
z=-(0:n-1);
y=(1:n);
x=(1:n);

% plot pressure in a z-y slice 
f=squeeze(p(:,:,1));
h=imagesc(y,z,f) 
set(h,'alphadata',~isnan(f)); % white nans
set(gca,'YDir','normal')
colorbar()
ylabel('z')
xlabel('y')

% plot ct in a z-y slice 
figure()
f=squeeze(ct(:,:,1));
h=imagesc(y,z,f) 
set(h,'alphadata',~isnan(f)); % white nans
set(gca,'YDir','normal')
colorbar()
ylabel('z')
xlabel('y')

% plot ct in a horizontal slice 
figure()
f=squeeze(ct(1,:,:));
h=imagesc(x,y,f) 
set(h,'alphadata',~isnan(f)); % white nans
set(gca,'YDir','normal')
colorbar()
ylabel('y')
xlabel('x')

% form "input surface" (first guess):
k=30;

pns=squeeze(p(k,:,:));
ctns=squeeze(ct(k,:,:));
sns=squeeze(s(k,:,:));


[sns,ctns,pns,errx,erry] =optimize_surface_exact(s,ct,p,sns,ctns,pns);


% plot p on the "optimized surface" (in this case, the isotherm)
figure()
f=squeeze(pns);
h=imagesc(x,y,f) 
set(h,'alphadata',~isnan(f)); % white nans
set(gca,'YDir','normal')
colorbar()
ylabel('y')
xlabel('x')
