% Returns maximum web reinforcement ratio
% usage: rmin = find_rho_max_beams(fc,fy,eu,etmin,beta1,Es)
% where fc = compressive strength of concrete in ksi
%		fy = yeild stress of rebars in ksi
%		eu = maximum strain in concrete usually taken as 0.003
%		etmin = minimum strain in steel rebars in tension
%		Es = Elastic modulus of steel rebars
function z = find_rho_max_beams(fcp,fy,eu,etmin,beta1,Es)
r_max = 0.85*beta1*(fcp/fy)*eu/(eu+etmin);
r_balanced = 0.85*beta1*(fcp/fy)*eu/(eu+fy/Es);
z=min(r_max,r_balanced);
end
