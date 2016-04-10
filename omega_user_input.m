global_user_input; % source global configuration file

solver = 'exact'; % 'exact' works well for small problems, 'iterative' may work better for large ones
no_land_mask=false; % 'true' may only work with the original Jackatt/McDougall 96 data set

clamp_on_point=false; 

error_measure='drho_local'; % don't modify unless you want to experiment
%error_measure='slope_difference'; % less stable than 'drho_local', needs damping. Need to monitor convergence, to be sure increase nit_after_wetting to 60.
use_b=false; % experimental. 'true' may not work.
weights=''; % experimental. don't modify unless you want to experiment

datapath='./data/';    
save_iterations=true; % save variables for postprocessing 
history_file=[datapath,'iteration_history.mat']; 

% increase number of iterations for option 'slope_difference'
if strcmp(error_measure,'drho_local')
    nit_after_wetting=15;
elseif strcmp(error_measure,'slope_difference')
    nit_after_wetting=60;
end

