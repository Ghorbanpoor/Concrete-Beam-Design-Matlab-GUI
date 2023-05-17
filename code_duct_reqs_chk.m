function [z y] = code_duct_reqs_chk(parameter,upper_limit,lower_limit)
% Checks whether code ductility requirements are fulfilled for given area
% of rebars or their reinfircement ratio; if not, the input paramters are
% modified accordingly and exported as output along with corresponding
% error
% Usage: [parameter error] = code_duct_reqs_chk(parameter,upper_limit,lower_limit)
% where the parameter may either be the crossectional area of rebars or the
% corresponding reinforcement ratio.
% Note: For the modified parameter, other dependant parameters like depth
% of stress block must also be revised
if parameter > upper_limit
    z = upper_limit;
    y = 'over reinforced section';
elseif parameter < lower_limit
    z = lower_limit;
    y = 'under reinforced section';
else
    z = parameter;
    y = 'none';
end