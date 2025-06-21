function git_sse(miRespaldo)
    % Mombre de la carpeta de la Actividad en el repositorio
    nombreCarpeta = string(split(cd, filesep));
    nombreCarpeta = nombreCarpeta(end) % Nombre de la carpeta

    % repositorio -> respaldo
    origen = cd;
    destino = fullfile(miRespaldo, nombreCarpeta); % Ruta completa a la carpeta destino
    if exist(destino, 'dir') && ~isempty(dir(fullfile(destino, '*')))
        warning('La carpeta "%s" ya existe y no está vacía. No se copió nada.', destino);
    else
        copyfile(origen, destino)  % Copiar la carpeta
        fprintf('Copia completada en: %s\n', destino);
    end
    cd(destino); %cambiar el "current folder" -> respaldo
    edit('main') %abrir archivo main en respaldo
end
