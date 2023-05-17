% returns the depth check of whitney stress block
% usage: a_rect = finda(As, fy, fcp, b)
% where As = Area of rebar
% fy  = Yeild Strength of rebar
% fcp = Compressive strength of concrete
% bf  = width / effective width of beam
%
function z = find_a(As,fy,fcp,b)
x = As*fy/(0.85*fcp*b);
z = round(x*100)/100;
end
