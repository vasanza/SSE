% Function that returns Dataset Table from data folder CSV file
% input (path): address of the folder where the data is .CSV
% input (filenames): names of all files .CSV
% output (Dataset): Dataset in table format
% Example: 
%   datapath=fullfile('./data/');
%   filenames=FindCSV(datapath);
%   AllData = fLoadTableCSV(filename,datapath);
% Requirements:
%   FindCSV.m
% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/
function [Dataset] = fLoadTableCSV(filename,datapath)
    %Leer un archivo csv y lo carga como una tabla
    Dataset=readtable(fullfile(datapath,filename.name));
end