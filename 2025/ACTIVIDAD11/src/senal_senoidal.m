% --- SEÑAL SENOIDAL ---
%function [y] = senal_senoidal(frecuencia,amplitud,fase,tiempo,fs)
%
% Parámetros:
% f = 10;         % Frecuencia en Hz
% A = 1;          % Amplitud
% fase1 = 0; fase2 = 10;        % Fase
% T = 1;          % Duración en segundos
% fs = 1000;      % Frecuencia de muestreo en Hz

function [y] = senal_senoidal(frecuencia,amplitud,fase,tiempo,fs)
    % Vector de tiempo
    t = 0:1/fs:tiempo;
    
    % Señal senoidal
    y = amplitud * sin(2 * pi * frecuencia * t + fase);

end