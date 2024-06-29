% Function that plots number of variables
% input (Datos): Datos array, cada fila es una variable
% input (VariableName): Array de string, con nonbres de variables
% input (EstilosLinea): Array de string, con estilos y colores de lineas
% output (Grafica): Grafica de variables
% Example: 
%   nfilas=100;
%   nvar=5;
%   Cliente=1;
%   Datos=AllData(1:nfilas,1:nvar,Cliente);
%   VariableName=["Corriente","Voltaje","variable3","variable4","variable5"];
%   EstilosLinea=["--b","-r","-*y","-*y","-ok"];
%   fPlot(Datos,VariableName,EstilosLinea);
% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/

function fPlot(Datos,VariableName,EstilosLinea)
    figure %no sobrescribe la anterior grafica
    nvar=size(Datos,2);
    for i=1:1:nvar %Para acceder a cada variable
        plot(Datos(:,nvar),EstilosLinea(i));
        hold on
    end
    hold off

    title(sprintf("Grafica de Variables"));
    xlabel("muestras");
    ylabel("valor");
    legend(VariableName(1:nvar))
end