%returns phi - strength reduction factor
%usage z=find_phi(c,dt)
%where first argument is c, the depth of neutral axis
%second argument is dt, the effective depth to the centre of last rebar layer
%subjected to tension
function z = find_phi(c,dt)
    y = c/dt;
	x = .65+.25*((1/y)-(5/3));
	if x <.65
    	x=.65;
	elseif x>.9
    	x=.9;
	end
z=x;
end
