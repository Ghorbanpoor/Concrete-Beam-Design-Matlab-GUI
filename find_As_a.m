% returns area of steel required to resist applied flexure for given dimensions
% and materaial properties andactual depth of whitney stress block.
% usage: [As ierror] = find_As_a(Mu, phi, fy, d, fcp, b)
% where:
% phi      : strength reduction factor for moment.
% b  (in)  : width of beam or wb (in case of t-beam).
% d  (in)  : effective depth to center of rebar from top of beam.
% a  (in)  : assumed whitney stress block.
% fy (ksi) : yeild strength of steel rebars.
% fcp(ksi) : compressive strength of concrete.
% As (in^2)= As-Asf, the portion of steel contributed by web portion
%            of t beam.
% Mu (in-k): flexure demand.
% ierror : indicates unreliable results since iteration was forced to stop
%
function [x y] = find_As_a(Mu, phi, fy, d, fcp, b)
	% y represents As and x represents a
    y = d/2;
    x = 0;
    k = 0;
    xtest=1;
    while abs(x-xtest)>0.01 && k<=1000
            xtest = x;
            x= Mu/(phi*fy*(d-y/2));
            y= x*fy/(0.85*fcp*b);
            k= k+1;
    end
    x = round(x*1000)/1000;
    if abs(x-xtest)>0.01;
        y = 'results unreliable since iteration was forced to stop';
    else y = 'none';
    end
end