function varargout = conway(varargin)
    gui_Singleton = 1;
    gui_State = struct('gui_Name',       mfilename, ...
                       'gui_Singleton',  gui_Singleton, ...
                       'gui_OpeningFcn', @conway_OpeningFcn, ...
                       'gui_OutputFcn',  @conway_OutputFcn, ...
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

function conway_OpeningFcn(hObject, eventdata, handles, varargin)
    handles.output = hObject;
    handles.space = [];
    handles.shouldDraw = 0;
    
    set(handles.start_btn, 'String', 'New');
    guidata(hObject, handles);
    loadRules(hObject);
    set(gca, 'XTick', []);
    set(gca, 'YTick', []);

function loadRules(hObject)
    

function mainConway(hObject)
    handles = guidata(hObject);
    generationCount = 0;
    while handles.shouldDraw == 1
        generationCount = generationCount+1;
        set(handles.generationCounter,'string',num2str(generationCount));
        neighbours_array = createNeighboursArray(hObject);
        updateArrayWithNeighbours(hObject, neighbours_array);
        handles = guidata(hObject);
        
        handles.pic = imagesc(handles.space);
       
        colormap(gray);
        set(gca, 'XTick', []);
        set(gca, 'YTick', []);
%         set(handles.pic, 'Parent', handles.gamebox);
        drawnow;
%         guidata(hObject, handles);
        pause(max(0.001, get(handles.slider1, 'Value')));
    end
    
function [neighbours_array] = createNeighboursArray(hObject)
% Creates the array of living neighbours
    handles = guidata(hObject);
    neighbours_array = zeros(size(handles.space));

    for i = 1:size(handles.space, 1)
        for j = 1:size(handles.space, 2)
            start_i = max(i - 1, 1);
            end_i =  min(i + 1, size(handles.space, 1));

            start_j = max(j - 1, 1);
            end_j = min(j + 1, size(handles.space, 2));

            temp = handles.space(start_i:end_i, start_j:end_j);
            neighbours_array(i, j) = sum(sum(temp)) - handles.space(i, j);
        end
    end

function updateArrayWithNeighbours(hObject, neighbours_array)
    handles = guidata(hObject);
    
    if ~isempty(handles.space)
        for i = 1:size(handles.space, 1)
            for j = 1:size(handles.space, 2)
                if handles.space(i, j) == 1
                    handles.space(i, j) = handles.lifeRule(neighbours_array(i, j) + 1);
                else
                    handles.space(i, j) = handles.deadRule(neighbours_array(i, j) + 1);
                end
            end
        end
    else
        handles.space = randi([0 1], 100, 100);
    end
    guidata(hObject, handles);
    
function varargout = conway_OutputFcn(hObject, eventdata, handles) 
    varargout{1} = handles.output;

function start_btn_Callback(hObject, eventdata, handles)
    if handles.shouldDraw == 1
        set(hObject, 'String', 'Resume');
        handles.shouldDraw = 0;
        guidata(hObject, handles);
    else
        set(hObject, 'String', 'Pause');
        handles.shouldDraw = 1;
        guidata(hObject, handles);
        mainConway(hObject);
    end
    disp(handles.shouldDraw);

function stop_btn_Callback(hObject, eventdata, handles)
    handles.shouldDraw = 0;
    set(handles.start_btn, 'String', 'New');
    handles.space = [];
    guidata(hObject, handles);



function slider1_Callback(hObject, eventdata, handles)


function slider1_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function listbox1_Callback(hObject, eventdata, handles)
handles = guidata(hObject);
    
    ruleIndex = get(handles.listbox1,'Value');
    ruleMatrix = lifeRules(ruleIndex);
    handles.deadRule = ruleMatrix(1,:);
    handles.lifeRule = ruleMatrix(2,:);
    
    guidata(hObject, handles);
% ruleIndex = get(handles.listbox1,'Value');
% set(handles.text3,'string',ruleIndex);


function listbox1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
