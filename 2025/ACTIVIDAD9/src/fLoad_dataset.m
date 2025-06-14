function T = fLoad_dataset(filename)
    % fLoad_dataset Lee un archivo CSV y retorna una tabla de MATLAB.
    %
    % USO:
    %   T = fLoad_dataset('datos.csv')
    %
    % ENTRADA:
    %   - filename: nombre del archivo CSV (ej. 'datos.csv')
    %
    % SALIDA:
    %   - T: tabla de MATLAB con datos importados
    
    % Comprobar existencia del archivo
    if ~isfile(filename)
        error('El archivo "%s" no existe.', filename);
    end

    % Leer el archivo como tabla
    opts = detectImportOptions(filename, 'NumHeaderLines', 0);
    
    % Opcional: especificar formato de columna si se desea precisión
    % opts = setvartype(opts, {'TimeStamp'}, 'datetime');

    T = readtable(filename, opts);
end
