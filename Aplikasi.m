function varargout = Aplikasi(varargin)
% APLIKASI MATLAB code for Aplikasi.fig
%      APLIKASI, by itself, creates a new APLIKASI or raises the existing
%      singleton*.
%
%      H = APLIKASI returns the handle to a new APLIKASI or the handle to
%      the existing singleton*.
%
%      APLIKASI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in APLIKASI.M with the given input arguments.
%
%      APLIKASI('Property','Value',...) creates a new APLIKASI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Aplikasi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Aplikasi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Aplikasi

% Last Modified by GUIDE v2.5 28-Oct-2019 07:21:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Aplikasi_OpeningFcn, ...
                   'gui_OutputFcn',  @Aplikasi_OutputFcn, ...
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


% --- Executes just before Aplikasi is made visible.
function Aplikasi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Aplikasi (see VARARGIN)

% Choose default command line output for Aplikasi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);



% UIWAIT makes Aplikasi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Aplikasi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btn_browse.
function btn_browse_Callback(hObject, eventdata, handles)
% hObject    handle to btn_browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file_name,file_path] = uigetfile( ...
    {'*.bmp;*.jpg;*.tif','Files of type (*.bmp,*.jpg,*.tif)';
    '*.bmp','File Bitmap (*.bmp)';...
    '*.jpg','File jpeg (*.jpg)';
    '*.tif','File Tif (*.tif)';
    '*.*','All Files (*.*)'},...
    'Open Image');

%jika file terpilih
if ~isequal(file_name,0)
    handles.gambar_mobil = imread(fullfile(file_path,file_name));
    mobil_rgb = handles.gambar_mobil;
    guidata(hObject,handles);
    axes(handles.img);
    imshow(mobil_rgb);
    

    thold = 120;
    test = threshold(grayscale(mobil_rgb),thold);
    ayla = zeros(75,100,5);
    ayla(:,:,1) = threshold(grayscale(imread ('datamobil/ayla/ayla-1.jpg')),thold);
    ayla(:,:,2) = threshold(grayscale(imread ('datamobil/ayla/ayla-2.jpg')),thold);
    ayla(:,:,3) = threshold(grayscale(imread ('datamobil/ayla/ayla-3.jpg')),thold);
    ayla(:,:,4) = threshold(grayscale(imread ('datamobil/ayla/ayla-4.jpg')),thold);
    ayla(:,:,5) = threshold(grayscale(imread ('datamobil/ayla/ayla-5.jpg')),thold);

    xenia = zeros(75,100,5);
    xenia(:,:,1) = threshold(grayscale(imread ('datamobil/xenia/xenia-1.jpg')),thold);
    xenia(:,:,2) = threshold(grayscale(imread ('datamobil/xenia/xenia-2.jpg')),thold);
    xenia(:,:,3) = threshold(grayscale(imread ('datamobil/xenia/xenia-3.jpg')),thold);
    xenia(:,:,4) = threshold(grayscale(imread ('datamobil/xenia/xenia-4.jpg')),thold);
    xenia(:,:,5) = threshold(grayscale(imread ('datamobil/xenia/xenia-5.jpg')),thold);
    
    angkot = zeros(75,100,5);
    angkot(:,:,1) = threshold(grayscale(imread ('datamobil/angkot/angkot-1.jpg')),thold);
    angkot(:,:,2) = threshold(grayscale(imread ('datamobil/angkot/angkot-2.jpg')),thold);
    angkot(:,:,3) = threshold(grayscale(imread ('datamobil/angkot/angkot-3.jpg')),thold);
    angkot(:,:,4) = threshold(grayscale(imread ('datamobil/angkot/angkot-4.jpg')),thold);
    angkot(:,:,5) = threshold(grayscale(imread ('datamobil/angkot/angkot-5.jpg')),thold);
    
    panther = zeros(75,100,5);
    panther(:,:,1) = threshold(grayscale(imread ('datamobil/panther/panther-1.jpg')),thold);
    panther(:,:,2) = threshold(grayscale(imread ('datamobil/panther/panther-2.jpg')),thold);
    panther(:,:,3) = threshold(grayscale(imread ('datamobil/panther/panther-3.jpg')),thold);
    panther(:,:,4) = threshold(grayscale(imread ('datamobil/panther/panther-4.jpg')),thold);
    panther(:,:,5) = threshold(grayscale(imread ('datamobil/panther/panther-5.jpg')),thold);


    crv = zeros(75,100,5);
    crv(:,:,1) = threshold(grayscale(imread ('datamobil/crv/crv-1.jpg')),thold);
    crv(:,:,2) = threshold(grayscale(imread ('datamobil/crv/crv-2.jpg')),thold);
    crv(:,:,3) = threshold(grayscale(imread ('datamobil/crv/crv-3.jpg')),thold);
    crv(:,:,4) = threshold(grayscale(imread ('datamobil/crv/crv-4.jpg')),thold);
    crv(:,:,5) = threshold(grayscale(imread ('datamobil/crv/crv-5.jpg')),thold);

    result_ayla = compare(test, ayla);
    result_xenia =  compare(test, xenia);
    result_angkot =  compare(test, angkot);
    result_panther =  compare(test, panther);
    result_crv =  compare(test, crv);
   
    hasil = [result_ayla, result_xenia, result_angkot,result_panther, result_crv];
   
    hasil_sorted = Sort(hasil);

        if (hasil_sorted(1) == result_ayla )
            set(handles.txt_hasil, 'String', "Ayla");
        elseif(hasil_sorted(1) == result_xenia )
            set(handles.txt_hasil, 'String', "Xenia");
        elseif(hasil_sorted(1) == result_angkot )
            set(handles.txt_hasil, 'String', "Angkot");
        elseif(hasil_sorted(1) == result_panther )
            set(handles.txt_hasil, 'String', "Panther");
        elseif(hasil_sorted(1) == result_crv )
            set(handles.txt_hasil, 'String', "CR-V");
        else
           set(handles.txt_hasil, 'String', "Error");
        end

    else

    return;
end


% --- Executes on button press in btn_train.
function btn_train_Callback(hObject, eventdata, handles)
% hObject    handle to btn_train (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function input_train_Callback(hObject, eventdata, handles)
% hObject    handle to input_train (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_train as text
%        str2double(get(hObject,'String')) returns contents of input_train as a double


% --- Executes during object creation, after setting all properties.
function input_train_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_train (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
