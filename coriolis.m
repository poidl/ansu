function [f] = coriolis(lats)

%           Calculate the coriolis parameter
%
% Usage:    [f] = coriolis(lats)
%
%           Calculate the coriolis parameter
%
% Input:    lats      latitude
%                 
% Output:   f         coriolis parameter 
% 
% Calls:    
%
% Units     f         s^-1
%
%   _________________________________________________________________
%   This is part of the analyze_surface toolbox, (C) 2009 A. Klocker
%   Partially modified by P. Barker (2010-13)
%   Partially modified by S. Riha (2013)
%   type 'help analyze_surface' for more information 
%   type 'analyze_surface_license' for license details
%   type 'analyze_surface_version' for version details
%

%% check input arguments

if ~(nargin == 1)
    error('coriolis.m: requires 1 input arguments')
end

deg2rad = pi/180;
omega   = 7.292e-5;     
f       = 2 .* omega .* sin(lats .* deg2rad);
