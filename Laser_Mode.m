function varargout = Laser_Mode(varargin)
%
% Fox-Li Iteration Method & Transverse Modes in a Confocal Cavity
%
% by Wang Hui
% Version 1.0
% reference:The PPT of Laser Principle and Techology 2017 by Prof. Zheng Ronger.


% LASER_MODE MATLAB code for Laser_Mode.fig
%      LASER_MODE, by itself, creates a new LASER_MODE or raises the existing
%      singleton*.
%
%      H = LASER_MODE returns the handle to a new LASER_MODE or the handle to
%      the existing singleton*.
%
%      LASER_MODE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LASER_MODE.M with the given input arguments.
%
%      LASER_MODE('Property','Value',...) creates a new LASER_MODE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Laser_Mode_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Laser_Mode_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Laser_Mode

% Last Modified by GUIDE v2.5 09-Jun-2017 17:46:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Laser_Mode_OpeningFcn, ...
                   'gui_OutputFcn',  @Laser_Mode_OutputFcn, ...
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


% --- Executes just before Laser_Mode is made visible.
function Laser_Mode_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Laser_Mode (see VARARGIN)

% Choose default command line output for Laser_Mode
handles.output = hObject;
% axes(handles.ModeShow);
% axis off
% axes(handles.ModeShow);
% 
% axes(handles.ModeShow);

% imshow();
set(handles.ModeShow,'visible','off');
set(handles.amplitude,'visible','off');
set(handles.phrase,'visible','off');
set(handles.formula,'visible','off');

set(handles.M_edit,'String','0');
set(handles.N_edit,'String','0');
set(handles.fox_li,'Value',1);
set(handles.transverse_modes,'Value',0);


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Laser_Mode wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Laser_Mode_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in SeclectMiorror.
function SeclectMiorror_Callback(hObject, eventdata, handles)
% hObject    handle to SeclectMiorror (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SeclectMiorror contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SeclectMiorror


% --- Executes during object creation, after setting all properties.
function SeclectMiorror_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SeclectMiorror (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in fox_li.
function fox_li_Callback(hObject, eventdata, handles)
% hObject    handle to fox_li (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of fox_li
set(handles.transverse_modes,'Value',0);

% --- Executes on button press in transverse_modes.
function transverse_modes_Callback(hObject, eventdata, handles)
% hObject    handle to transverse_modes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of transverse_modes
set(handles.fox_li,'Value',0);


function M_edit_Callback(hObject, eventdata, handles)
% hObject    handle to M_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M_edit as text
%        str2double(get(hObject,'String')) returns contents of M_edit as a double


% --- Executes during object creation, after setting all properties.
function M_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function N_edit_Callback(hObject, eventdata, handles)
% hObject    handle to N_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of N_edit as text
%        str2double(get(hObject,'String')) returns contents of N_edit as a double


% --- Executes during object creation, after setting all properties.
function N_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to N_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in show.
function show_Callback(hObject, eventdata, handles)
% hObject    handle to show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Fox-Li iteration method
if get(handles.fox_li,'Value') == 1

    
    
    %————初始化—————————————
    lm=632.8e-9; %波长
    L=100*lm; %腔长
    a=25*lm; %腔镜线宽
    k=2*pi/lm; %波失
    x1=linspace(-a,a,1000);% 取1000 个点积分
    Un_n=zeros(1,1000);
    Un_n_1=Un_n;
    
    %waitbar
    h = waitbar(0,'Please wait...');
    
    %———求解第一次的迭代结果——————
    for m=1:1000
        x=x1(m);
        y=exp((-1i*k*(x-x1).^2)/(2*L));
        Un_n(m)=sqrt(1i/(pi*L)*exp(-1i*k*L))*sum(y(1:1000));
    end

    %————对第一次的归一化————
    a=zeros(1,1000);
    a=abs(Un_n);% 求解振幅
    yabsmax=max(a);% 振幅最大值
    Un_n=Un_n/yabsmax;% 归一化
    Un_2=a/yabsmax;% 振幅归一化
    Yn_2=angle(Un_n);% 相位分布
    %————迭代299 次重复第一次过程——
    for m=1:299
        %waitbar
        waitbar(m/300);
    
        for n=1:1000
            x=x1(n);
            y= exp((-1i*k*(x-x1).^2)/(2*L)).*Un_n;
            Un_n_1(n)=sqrt(1i/(pi*L)*exp(-1i*k*L))*sum(y(1:1000));
        end
        Un_n= Un_n_1;
        a=zeros(1,1000);
        a=abs(Un_n);
        yabsmax=max(a);
        Un_n=Un_n/yabsmax;
    end
    Un_300=a/yabsmax;
    Yn_300=angle(Un_n);
    %————迭代第300次重复第一次过程——
    
    %waitbar
    waitbar(m/300);
    
    for n=1:1000
        x=x1(n);
        y= exp((-1i*k*(x-x1).^2)/(2*L)).*Un_n;
        Un_n_1(n)=sqrt(1i/(pi*L)*exp(-1i*k*L))*sum(y(1:1000));
    end
    Un_n= Un_n_1;
%     a=zeros(1,1000);
    a=abs(Un_n);
    yabsmax=max(a);
    Un_n=Un_n/yabsmax;
    Un_301= a/yabsmax;
    Yn_301=angle(Un_n);
    
    close(h);

    %绘图  
    axes(handles.formula);
    imshow('.\data\fox-li.jpg');
    set(handles.ModeShow,'visible','off');
%     axes_child = allchild(handles.ModeShow)
%     delete(axes_child);
    axes(handles.ModeShow);
    title(' ');
    cla;
    set(handles.amplitude,'visible','on');
    set(handles.phrase,'visible','on');
    %———画出振幅特性————
    axes(handles.amplitude)

    plot(x1,Un_2) ;
    text(x1(500),Un_2(500),' \leftarrow 第1次迭代');
    hold on;
    plot(x1,Un_300,'r') ;
    text(x1(100),Un_300(100),' \leftarrow 第300次迭代');
    hold on;
    plot(x1,Un_301,'g') ;
    text(x1(800),Un_301(800),' \leftarrow 第301次迭代');
    xlim([-25*lm,25*lm])

    title('振幅特性');
    %———画出相位特性————
    axes(handles.phrase)
    plot(x1,Yn_2) ;
    text(x1(500),Yn_2(500),' \leftarrow 第1次迭代');
    hold on;
    plot(x1,Yn_300,'r') ;
    text(x1(100),Yn_300(100),' \leftarrow 第300次迭代');
    hold on;
    plot(x1,Yn_301,'g') ;
    text(x1(800),Yn_301(800),' \leftarrow 第301次迭代');
    xlim([-25*lm,25*lm])
    title('相位特性');
end

% Laser transverse mode
if get(handles.transverse_modes,'Value') == 1
    m = str2double(get(handles.M_edit,'String'));
    n = str2double(get(handles.N_edit,'String'));
    select = get(handles.SeclectMiorror,'Value');
    if select == 1
        MirrorType = 'R';
    else
        MirrorType = 'C';
    end
    MatName = [MirrorType,num2str(m),num2str(n)];
    if check_library(MatName) == 1
        load(['.\data\',MatName,'.mat']); 
    else
        switch select
            case 1
               V = HermiteGaussian(m,n);
            case 2
               V = LaguerreGaussian(m,n);   
        end
        save(['.\data\',MatName,'.mat'],'V');
    end

    if MirrorType == 'R'
        MirrorType = '方形镜';
    else
        MirrorType = '圆形镜';
    end

    axes(handles.formula);
    imshow(['.\data\',MirrorType,'.jpg']);
    
    set(handles.ModeShow,'visible','on');
    set(handles.amplitude,'visible','off');
    axes_child = allchild(handles.amplitude);
    delete(axes_child);
    axes(handles.amplitude);
    cla;
    
    set(handles.phrase,'visible','off');
    axes_child = allchild(handles.phrase);
    delete(axes_child);
    axes(handles.phrase);
    cla;
    
    axes(handles.ModeShow);
    mesh(V);
    title([MirrorType,'  TEM_{ ',num2str(m),' ',num2str(n),'}']);
    axis off

end

function V = LaguerreGaussian(m,n)
% Laguerre Gaussian 圆形镜共焦腔拉盖尔高斯近似
% by Wang Hui
L = 1;
lamda = 500e-9;

a = 0.004;
dx = 0.00002;
xx = -a/2:dx:a/2;
yy = -a/2:dx:a/2;
[x,y] = meshgrid(xx,yy);
%直角坐标转极坐标
[phrase,R] = cart2pol(x,y);
w0 = sqrt(L*lamda/pi);
constA = sqrt(2)/w0;
constB = (w0^2);

RR = 2.*(R.^2)./constB;

% m = 3;
% n = 1;

V =  ((constA .* R).^m).* laguerreL(n,m,RR) .* ...
    exp(-(x.^2+y.^2)./(constB)) .* (cos(m.*phrase) + sin(m.*phrase) );


function V = HermiteGaussian(m,n)

% Hermite Gaussian 方形镜共焦腔厄密特高斯近似
% by Wang Hui
L = 1;
lamda = 500e-9;

a = 0.004;
dx = 0.00002;
xx = -a/2:dx:a/2-dx;
yy = -a/2:dx:a/2-dx;
[y,x] = meshgrid(xx,yy);

w0 = sqrt(L*lamda/pi);
constA = sqrt(2)/w0;
constB = (w0^2);
xc = x*constA;
yc = y*constA;

% m = 1;
% n = 2;

V =  hermiteH(m, xc).*hermiteH(n, yc).* exp(-(x.^2+y.^2)./(constB));


function [Isexit] = check_library(MatName)
% cd data;
%检查是否已经存在的Mat
Isexit = 0;
MyFolderInfo = dir('data\*.mat');
MatName = [MatName,'.mat'];
n = size(MyFolderInfo);
for i = 1:n
  if strcmp(MatName,MyFolderInfo(i).name)
      Isexit = 1;break
  end
end
