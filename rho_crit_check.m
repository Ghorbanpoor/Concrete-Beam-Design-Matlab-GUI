function [x y] = rho_crit_check(rho_c,rho_t,beta1,fc,fy,dp,d,eu,Es,a,Asc)
% Checks yeilding of steel in compression in doubly reinf rec beam
% usage: [As_c,fsp] = rho_crit_check(rho_t,beta1,fc,fy,dp,dt,eu,Es,rho_c,a_actual)
% where
% Asc   : Unchecked unrevised reinf steel area in compression
% As_c  : Checked (and if necessary revised) reinf steel area in compression
% rho_c : Reinforcement ratio of rebars in compression
% rho_t : Reinforcement ratio of rebars in tension
% beta1 : Strength reduction factor for concrete
% fc    : Compressive strength of concrete
% fy    : Yeild strength of steel
% fsp   : Stress in steel in compression
% dp    : Effective depth of compression rebars
% dt    : Effective de[th of tension rebars
% eu    : Maximum allowable strain in concrete
% Es    : Elastic modulus of steel
% a     : Whitney's stress block depth
% Asc has been calculated on the assumption that steel in compression is
% yeildind that is fsp = fy. This assumption will be checked:
% Min reinf ratio for steel in compression to yeild
rho_crit = 0.85*beta1*(fc/fy)*(dp/d)*eu/(eu-fy/Es) + rho_c;
if rho_t >= rho_crit;
    % Thus assumtion made that fsp = fy was correct : CASE 1
    x = Asc;
    y = fy;
elseif rho_t < rho_crit;
    c   = a / beta1;
    y = eu*Es*(c-dp)/c;
    % Assumtion made that fsp = fy was incorrect : CASE 2
    % Increasing the value of Asc so that it provides the same amount of
    % force that the original Asc was supposed to provide for yeild stress
    x = Asc*fy/y;
end