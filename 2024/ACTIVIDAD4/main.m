% Actividad #4

% Objetivos:
% - Aprender a crear funciones, una para escibir archivos

% Nombre: sunombre
% Reposiitory: https://github.com/vasanza/SSE

% Limpiar variables y linea de comandos
clear%para borrar el workspace y liberar memoria RAM
clc %limpiar el command window

%% Generar datos alatorios
% En todo dataset las filas son muestras y las comlumnas son variables
variables=5; %Columnas
vname=["Corriente","Voltaje","variable3","variable4","variable5"];
%Tarea ----------------- modificar el numero de muestras del dataset
muestras=1000; %Filas
Dataset=rand(muestras, variables);
%matriz de muestras (filas) x variables (columnas)

%% Graficar el dataset
figure %no sobrescribe la anterior grafica
plot(Dataset(:,1:4));%
title("Datos aleatorios");
xlabel("muestras");
ylabel("valor");
legend(vname(1:4))

%% Guardar los carchivos VSC en el computador
filename = 'Data3.csv';
fSave_file(filename,Dataset)

%clear