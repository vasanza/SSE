% Funcion que grafica una señal
% Input: Vector Muestras de valores, valor de Amplitud de la señal
% Ouput: Grafica con titulo, labels y legend

function [] = Seno2num(Amplitud,Muestras)
    B=Amplitud*sin(Muestras);
    figure
    plot(B,'r--');
    title('Grafica de una función seno');
    xlabel('Muestras');
    ylabel('Amplitud');
    grid on
    legend('Seno(x)');
end