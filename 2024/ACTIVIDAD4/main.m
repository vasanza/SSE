% Actividad #4

% Objetivos:
% - Aprender a crear funciones, una para escibir archivos
% - Programacion estructura

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

% Este es el codigo que usaremos para crear la funcion
v1=Dataset(:,1);
v2=Dataset(:,2);

fileID = fopen('Data2.csv','w'); %Crear un archivo y abrirlo
for i=1:1:length(Dataset)
    fprintf(fileID,'%d %d\n','v1','v2');%escribir linea a linea
end
fclose(fileID);%cerrar el archivo


%clear