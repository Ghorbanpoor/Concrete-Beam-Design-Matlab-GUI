% Returns web reinforcement ratio
% usage: rho = find_rho(As,b,d)
% where As = Total steel crossectional area or a part of it in web
%        b = width of web/ beam
%        d = Effective depth to centroid of rebars subjected to compression
function x = find_rho(As,b,d)
x= As/(b*d);
x= round(x*10000)/10000;
end
