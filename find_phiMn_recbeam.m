function x = find_phiMn_recbeam( phi,a,d,dp,Ast,Asc,fsp,fy )
% Calculates reliable flexure capacity rec beams
% usage: [ phiMn_recbeam ] = untitled( fc,b,a,d,dp,As_c,fsp )
% where
% Ast  : reinf steel area in compression
% Asc  : reinf steel area in compression
% fy    : Yeild strength of steel
% fsp   : Stress in steel in compression
% dp    : Effective depth of compression rebars
% d     : Effective depth of tension rebars
% a     : Whitney's stress block depth
x = phi*(Ast*fy*(d-a/2) + Asc*fsp*(d-dp));
end