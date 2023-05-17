% Returns minimum web reinf. crossec. area that must be provided in beams
% usage: rmin = find_rho_min_beams(fcp,fy)
% where fcp = compressive strength of concrete in ksi
%		fy = yeild stress of rebars in ksi
function x = find_rho_min_beams(fcp,fy)
a = 200/(fy*1000);
b = 3*sqrt(fcp*1000)/(fy*1000);
c = max(a,b);
x = round(c*10000)/10000;
end
