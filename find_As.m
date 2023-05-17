% returns the Area of Steel based on rectangular section of beam
% usage: As = find_As(Mu,phi,fy,d,a)
% where Mu = factored Moment
%      phi = moment reduction factor
% 		fy = yeild strength of rebar
% 		 d = effective depth
% 		 a = depth of whitney stress block
%
function z = find_As(Mu,phi,fy,d,a)
z=Mu/(phi*fy*(d-a/2));
end
