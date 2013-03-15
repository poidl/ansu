function [rho,rho_s,rho_ct] = eosall_from_ct_new(sa,ct,p)



n1 = prod(size(sa)); n2 = prod(size(ct)); n3 = prod(size(p));
message = 'ERROR: input array dimensions are not identical';
if n1~=n2, error(message), end
if n1~=n3, error(message), end

rho=gsw_rho(sa,ct,p);
rho_s=rho*gsw_beta(sa,ct,p);
rho_ct=-rho*gsw_alpha(sa,ct,p);

return