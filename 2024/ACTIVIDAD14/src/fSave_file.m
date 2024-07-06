% Function that save files
% input (filename): name of the file .*
% input (Data): variable name of the file .MAT
% output (saved file): NewFile.* as default name
% Example:
%   filename = 'Data3.csv';
%   fSave_file(filename,Dataset)
% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/

function [] = fSave_file(filename,Data)
    v1=Data(:,1);
    v2=Data(:,2);
    v3=Data(:,3);
    v4=Data(:,4);
    v5=Data(:,5);
    
    fileID = fopen(filename,'w'); %Crear un archivo y abrirlo
    for i=1:1:length(Data)
        fprintf(fileID,['%d , %d ,' ...
            ' %d , %d , %d\n'],'v1','v2','v3','v4','v5');%escribir linea a linea
    end
    fclose(fileID);%cerrar el archivo
end