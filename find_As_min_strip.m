% Returns minimum steel to be provided in slabs or foundations
% usage:
%    As_min = find_As_min_strip(fy,fcp,b,h,d)
% where
% fy  (ksi): yeild strength of rebars
% fcp (ksi): compressive strength of concrete in ksi
%  b (in ) : 12 : width of strip
%  d (in)  : average effective depth of slab
%  h (in ) : depth of slab
function z = find_As_min_strip(fy,fcp,b,h,d)
if fy == 40 || fy ==50; r = 0.002;
elseif fy == 60; r = 0.0018;
elseif fy > 60; r = 0.0018*60000/(fy*1000);
end
x = r*b*h;
%rho_min = find_rho_min_beams(fcp,fy);
%y = findAs(rho_min,b,d);
y=0;
z = max(x,y);
end