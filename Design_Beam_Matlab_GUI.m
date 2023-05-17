function varargout = Design_Beam_Matlab_GUI(varargin)
% DESIGN_BEAM_MATLAB_GUI MATLAB code for Design_Beam_Matlab_GUI.fig
%      DESIGN_BEAM_MATLAB_GUI, by itself, creates a new DESIGN_BEAM_MATLAB_GUI or raises the existing
%      singleton*.
%
%      H = DESIGN_BEAM_MATLAB_GUI returns the handle to a new DESIGN_BEAM_MATLAB_GUI or the handle to
%      the existing singleton*.
%
%      DESIGN_BEAM_MATLAB_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DESIGN_BEAM_MATLAB_GUI.M with the given input arguments.
%
%      DESIGN_BEAM_MATLAB_GUI('Property','Value',...) creates a new DESIGN_BEAM_MATLAB_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Design_Beam_Matlab_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Design_Beam_Matlab_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Design_Beam_Matlab_GUI

% Last Modified by GUIDE v2.5 17-May-2023 11:53:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Design_Beam_Matlab_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Design_Beam_Matlab_GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Design_Beam_Matlab_GUI is made visible.
function Design_Beam_Matlab_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Design_Beam_Matlab_GUI (see VARARGIN)

% Choose default command line output for Design_Beam_Matlab_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Design_Beam_Matlab_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);

set(handles.edit1,'String','');
set(handles.edit2,'String','');
set(handles.edit3,'String','');
set(handles.edit4,'String','');
set(handles.edit5,'String','');
set(handles.edit6,'String','');
set(handles.edit7,'String','');

set(handles.text9,'String','');
set(handles.text11,'String','0');
set(handles.text13,'String','0');


% --- Outputs from this function are returned to the command line.
function varargout = Design_Beam_Matlab_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



fy =eval(get(handles.edit1,'String'));
fcp =eval(get(handles.edit2,'String'));
Mu =eval(get(handles.edit3,'String'));
b =eval(get(handles.edit4,'String'));
h =eval(get(handles.edit5,'String'));
dt =eval(get(handles.edit6,'String'));
dp =eval(get(handles.edit7,'String'));

phi = 0.9;
strip = 'no';
msgs  = 'yes';
d = dt;


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
%         fprintf ('\nSingly reinforced beam\n')
        set(handles.text9,'String','Singly reinforced beam');
%         fprintf ('Area of steel in compression = %.2f in^2 :\n',Ast);
        set(handles.text11,'String',num2str(Ast));
    else
%         fprintf ('\nDoubly reinforced beam\n')
        set(handles.text9,'String','Doubly reinforced beam');
%         fprintf ('Area of steel in compression = %.1f in^2 :\n',Asc);
        set(handles.text13,'String',num2str(Asc));
%         fprintf ('Area of steel in tension = %.2f in^2 :\n',Ast_t);
        set(handles.text11,'String',num2str(Ast_t));
    end
    fprintf ('Factored Moment capacity (phi*Mn) = %.1f in-kips \n',phiMn_total);
    if strcmp(cerror,'none')==0; fprintf ('%s\n',cerror); end
    if strcmp(ierror,'none')==0; fprintf ('%s\n',ierror); end
end




% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.edit1,'String','');
set(handles.edit2,'String','');
set(handles.edit3,'String','');
set(handles.edit4,'String','');
set(handles.edit5,'String','');
set(handles.edit6,'String','');
set(handles.edit7,'String','');

set(handles.text9,'String','');
set(handles.text11,'String','0');
set(handles.text13,'String','0');


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close