### ANALYZE_SURFACE TOOLBOX

A MATLAB toolbox for calculating approximately neutral surfaces in the ocean. 

This program transforms a single poorly adjusted surface (such as a 
potential density surface of global extent) into an 
approximately neutral surface with minimal error during a number of iterations. 

References:  
- Klocker, A., McDougall, T., Jackett, D., 2009. A new method for forming approximately neutral
   surfaces. Ocean Science 5, 155-172.  [http://www.ocean-sci.net/5/155/2009/os-5-155-2009.pdf]
- Riha, S., McDougall, T. J., Barker, P.M. (unpublished manuscript, 2014): Improvements of an algorithm for 
   forming approximately neutral surfaces. [http://www.hoitaus.com/drupal/files/publications/paper_syd1_draft.pdf]



#### DIRECTORY STRUCTURE

- `omega_user_input.m`   
   Configuration file for options specific to the omega surface code (located in subdirectory `omega`). 

- `global_user_input.m`   
   Configuration file for global options, e.g. zonally periodic domain, etc. (subdirectory 
   `neutral_common`). 
   
- `run.m`   
   Illustrates the use of `optimize_surface_at_point()`. Reads input data from climatology files and
   defines a 'backbone' (a sequence of pressures at a given latitude/longitude with which the 
   adjusted surfaces will intersect). Computes surfaces and errors. Note that reading the climatology files
   may not work without modifications.
   
- `omega`   
   Contains functions specific to omega-surfaces. 

- `neutral_common`   
   Contains dependencies (GSW Toolbox) and some packages and functions shared with other Neutral 
   Density programs.
   

#### DEPENDENCIES

- Gibbs-SeaWater (GSW) Oceanographic Toolbox (MATLAB library).  
  A (possibly outdated) version of this library is distributed with ansu. Recent versions are available at
  [http://www.teos-10.org/software.htm].
  Reference: McDougall, T.J. and P.M. Barker, 2011: Getting started with TEOS-10 and the Gibbs Seawater (GSW) 
  Oceanographic Toolbox, 28pp., SCOR/IAPSO WG127, ISBN 978-0-646-55621-5.
   

#### REPOSITORY

[https://github.com/poidl/ansu]
