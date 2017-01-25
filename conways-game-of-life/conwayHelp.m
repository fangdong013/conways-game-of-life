function varargout = conwayHelp(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @conwayHelp_OpeningFcn, ...
                   'gui_OutputFcn',  @conwayHelp_OutputFcn, ...
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

function conwayHelp_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = conwayHelp_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function rulesList_Callback(hObject, eventdata, handles)
handles = guidata(hObject);

ruleIndex = get(hObject,'Value');
rules = ruleString(ruleIndex);
set(handles.helpText,'String', rules{1});

guidata(hObject, handles);


function rulesList_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
