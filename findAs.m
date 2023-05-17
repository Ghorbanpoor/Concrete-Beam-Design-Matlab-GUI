% returns the Area of Steel based on rectangular section of beam
% usage: As = find_As(rho,b,d)
% where   
% As(in^2): Crossectional area of steel
% b (in): beam width
% d (in): effective depth
% rho   : reinforcement ratio of steel to be calculated
%
function x = findAs(rho,b,d)
x=rho*b*d;
end