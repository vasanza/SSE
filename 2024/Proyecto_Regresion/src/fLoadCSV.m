% Function that returns allData from data folder
% input (path): address of the folder where the data is .CSV
% input (filenames): names of all files .CSV
% output (AllData): Concatenated all files .CSV
% Example: 
%   datapath=fullfile('./data/');
%   filenames=FindCSV(datapath);
%   AllData = fLoadCSV(filenames,datapath);
% Requirements:
%   FindCSV.m
% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/
function [AllData] = fLoadCSV(filenames,datapath)
    AllData=[];
    for i=1:1:length(filenames)
        %Leer un archivo csv y lo carga como una tabla
        Dataset=readtable(fullfile(datapath,filenames(i).name));
        %Convertir la tabla en una matrix de valores
        Dataset=table2array(Dataset);
        AllData=[AllData;Dataset];
    end
end