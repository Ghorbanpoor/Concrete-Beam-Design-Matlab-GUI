function beta1=find_beta1(fcp)
%returns the beta1 of compression block
%usage: z=beta1(fcp)
%where fcp is concrete compressive strength in ksi
x = .85-.05*(fcp-4);
if x<.65
    x=.65;
elseif x>.85
    x=.85;
end
beta1=x;
    
end
