%returns the actual depth of compression block upto NA for rectangular
%beam.
%usage: c = findc(a, beta1)
%where: a       = depth of whitney stress block.
%       beta1   = factor for fcp making stress distribution to rectangular
%       distribution.
function c = findc(a, beta1)
    x = a/beta1;
    c = round(x*100)/100;
end
