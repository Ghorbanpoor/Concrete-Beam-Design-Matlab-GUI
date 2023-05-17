function [Ast Asc cerror ierror phi phiMn_total] = rectbeam(strip,msgs,fy,fcp,Mu,b,d,dt,dp,phi,h)
% Design of rectangular beams (singly and doubly reinforced
% This function calcuates required crossectional of steel for given
% dimensions in accordance with the provisions of ACI code
% Justification for some inputs:
% strip : A string value of 'yes' indicates that a strip for either a slab
%         or foundation is being designed rather than an actual rectangular
%         beam. This input affects the minimum and shrinkage reinforcements.
%         Some designers prefer to be more conservative foundations. They
%         can assign different string values to this input and define
%         minimum reinforcement for each.
% msgs  : is short for "messages?". If this function is called from another
%         which may have its own output, the messages from this function
%         may be desired to be suppressed. A string value of 'yes' will do
%         that.
if exist('fy','var') ==0;  fy =1;end%input('Steel yeild strength fy (ksi): ');            end
if exist('fcp','var')==0; fcp =1;end%input('Concrete compressive strength fcp (ksi): '); end
if exist('Mu','var') ==0;  Mu =1;end%input('Maximum bending moment Mu (in-kips): ');      end
if exist('b','var')  ==0;   b =1;end%input('Beam width b (in): ');                         end
if exist('h','var')  ==0;   h =1;end%input('Total beam depth h (in): ');                         end
if exist('dt','var') ==0;  dt =1;end%input('Effective depth to centroid of deepest tensile steel layer dt (in): ');end
if exist('dp','var') ==0;  dp =1;end%input('Effective depth to centroid of shallowest compression steel layer dp (in): ');end
if exist('phi','var')==0; phi = 0.9; end
if exist('strip','var')==0; strip = 'no'; end
if exist('msgs','var') ==0; msgs  = 'yes'; end
if exist('d','var')    ==0; d = dt; end
if Mu < 0; Mu = abs(Mu); end
Es=29000;
% Min tensile strain of for beams by ACI orcementcode
etmin = 0.005;
% max permissible strain in concrete
eu = 0.003;
beta1= find_beta1(fcp);
if strcmp(strip,'yes');Asmin = find_As_min_strip(fy,fcp,b,h,d); rho_min =Asmin/(b*d);
else rho_min = find_rho_min_beams(fcp,fy);
end
rho_max = find_rho_max_beams(fcp,fy,eu,etmin,beta1,Es);
Asmax = findAs(rho_max,b,d);
a = find_a(Asmax,fy,fcp,b);
ierror = 'none';
phitest = 0;
count = 0;
while abs (phi-phitest)>0.001 && count<=10
    phitest=phi;
    Mdmax = phi*Asmax*fy*(d-a/2);
    
    if Mdmax >= Mu
        % SINGLY REINFORCED beam design
        [Ast ierror] = find_As_a(Mu, phi, fy, d, fcp, b);
        rho_web    = find_rho(Ast, b,d);
        [rho_web cerror]   = code_duct_reqs_chk(rho_web,rho_max,rho_min);
        if strcmp(cerror,'none')==0; Ast   = rho_web* b* d; end
        a_actual   = find_a(Ast,fy,fcp,b);
        c  = findc(a_actual,beta1);
        phi= find_phi(c,dt);
        phiMn_total = find_phiMn_recbeam( phi,a_actual,d,0,Ast,0,0,fy );
        Asc= 0;
    else
        % DOUBLY REINFORCED beam design
        % Part of Mu that steel (Ast) in tension would resist
        Mut = Mdmax;
        % Part of Mu that steel in compression would resist
        Muc = Mu - Mut;
        % Crossectional area of steel in compression assuming fsp = fy
        Asc = find_As(Muc,phi,fy,d,2*dp);
        Ast = Asmax; a_actual = a; cerror = 'none';
        % reinf ratio of rebars in compression and tension respectively
        rho_c = find_rho(Asc,b,d);
        rho_t = find_rho(Ast+Asc,b,d);
        [Asc fsp] = rho_crit_check(rho_c,rho_t,beta1,fcp,fy,dp,dt,eu,Es,a_actual,Asc);
        Ast_t = Asc + Ast;
        phiMn_total = find_phiMn_recbeam( phi,a_actual,d,dp,Ast,Asc,fsp,fy );
    end
    count = count+1;
end
if strcmp(msgs,'yes')
    if abs(phi-phitest)>0.01; ierror = 'results unreliable since iteration was forced to stop'; end
    if Mdmax >= Mu
        fprintf ('\nSingly reinforced beam\n')
        fprintf ('Area of steel in compression = %.2f in^2 :\n',Ast);
    else
        fprintf ('\nDoubly reinforced beam\n')
        fprintf ('Area of steel in compression = %.1f in^2 :\n',Asc);
        fprintf ('Area of steel in tension = %.2f in^2 :\n',Ast_t);
    end
    fprintf ('Factored Moment capacity (phi*Mn) = %.1f in-kips \n',phiMn_total);
    if strcmp(cerror,'none')==0; fprintf ('%s\n',cerror); end
    if strcmp(ierror,'none')==0; fprintf ('%s\n',ierror); end
end
end
