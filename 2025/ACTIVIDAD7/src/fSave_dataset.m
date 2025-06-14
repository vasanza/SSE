% fSave_dataset Guarda una tabla en un archivo de texto con formato CSV.
%
% USO:
%   fSave_dataset(filename, Data)
%
% ENTRADAS:
%   - filename: Nombre del archivo (ej. 'datos.csv').
%   - Data: Tabla de MATLAB con datos numéricos, texto o datetime.
%
% FUNCIONES:
%   - Escribe encabezado con nombres de columnas.
%   - Guarda cada fila con valores separados por comas.
%   - Da formato a datetime y números con 6 decimales.
%
% EJEMPLO:
%   fSave_file('salida.csv', miTabla);

function fSave_dataset(filename, Data)
    % Asegúrate de que 'Data' es una tabla
    if ~istable(Data)
        error('Input Data must be a table.');
    end

    % Abrir archivo para escritura
    fileID = fopen(filename, 'w');
    if fileID == -1
        error('No se pudo abrir el archivo para escritura.');
    end

    % Escribir encabezado (nombres de las variables)
    headers = Data.Properties.VariableNames;
    fprintf(fileID, '%s', headers{1});
    for i = 2:length(headers)
        fprintf(fileID, ', %s', headers{i});
    end
    fprintf(fileID, '\n');

    % Convertir tabla a celda para manejo seguro de tipos
    dataCell = table2cell(Data);

    % Escribir fila por fila
    for i = 1:size(dataCell, 1)
        for j = 1:size(dataCell, 2)
            val = dataCell{i, j};

            if isdatetime(val)
                fprintf(fileID, '%s', datestr(val, 'dd-mmm-yyyy HH:MM:SS'));
            elseif isnumeric(val)
                fprintf(fileID, '%.6f', val);
            elseif ischar(val) || isstring(val)
                fprintf(fileID, '%s', string(val));
            else
                fprintf(fileID, '%s', 'NA');  % Tipo no manejado
            end

            if j < size(dataCell, 2)
                fprintf(fileID, ',');
            end
        end
        fprintf(fileID, '\n');  % Nueva línea
    end

    fclose(fileID);
end