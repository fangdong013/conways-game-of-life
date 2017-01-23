function varargout = conwayGUI(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @conwayGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @conwayGUI_OutputFcn, ...
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

function conwayGUI_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;

guidata(hObject, handles);




function varargout = conwayGUI_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

function startButton_Callback(hObject, eventdata, handles)
global flag
    flag = true;
% A is a matrix for testing     
A = randi([0 1], 100, 100);
global B
while flag
   A = conway(A);
   B = conway(A);
%  gridGenerator(A)
%  pause(0.0001)
%  A = nextMat(A, checkMat(A));
%  B = A;
end

function stopButton_Callback(hObject, eventdata, handles)
global flag
    flag = false;

function speedSlider_Callback(hObject, eventdata, handles)

function speedSlider_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function ruleBox_Callback(hObject, eventdata, handles)

function ruleBox_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pauseToggle_Callback(hObject, eventdata, handles)
isPushed = get(hObject, 'Value');
global flag
global B;
    if isPushed
        set(hObject,'String', 'Resume');
        B = conway(B);
        flag = false;
    else
        set(hObject,'String', 'Pause');
        flag = true;
    while flag
        conway(B);
    end
end

