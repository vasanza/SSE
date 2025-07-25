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
    fileID = fopen(filename,'w'); %Crear un archivo y abrirlo
    for i=1:1:size(Data, 1)%lenght
        v1=Data(i,1);
        v2=Data(i,2);
        v3=Data(i,3);
        v4=Data(i,4);
        fprintf(fileID,'%.6f , %.6f , %.6f, %.6f \n',v1,v2,v3,v4);%escribir linea a linea
    end
    fclose(fileID);%cerrar el archivo
end