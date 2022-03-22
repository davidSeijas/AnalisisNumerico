function [t,x]=meuler(f,intervalo,x0,N)

% La función meuler resuelve un problema de valor inicial de la forma
% x'(t)=f(t,x(t)) en [t0,T]
% x(t0)=x0,
% con x0 en R^n, mediante el método de Euler (explícito).
%
% ENTRADA:
% f: nombre de la función (definida en formato anónimo o como fichero de tipo función de Matlab)
% del problema que se quiere resolver, con dos argumentos de entrada: el primero es un
% número real y el segundo es un vector columna de tipo (n,1) o un vector fila de tipo (1,n)
% intervalo: [t0,T], donde está planteado el sistema de ecuaciones diferenciales
% x0: vector inicial de tipo (1,n)
% N: número de subintervalos
%
% SALIDA:
% t: vector columna de abscisas donde se va a aproximar la solución de tipo (N+1,1)
% x: matriz de ordenadas de la solución aproximada de tipo (N+1,n)
%
%con el comando help meuler nos sale los comentarios por consola (los
%comentarios tienen que estar despues de fuction)

%DAVID SEIJAS PEREZ
%PRACTICA 2
%EJERCICIO 2

h = (intervalo(2) - intervalo(1)) / N;
t = intervalo(1):h:intervalo(2);
%Otra forma: linspace(intervalo(1), intervalo(2), N+1);
%Queremos ir deade un punto a otro con N+1 puntos equispaciados
x(:,1) = x0(:); 
%Inicializamos la primera columna de x con x0 (las distinas columnas 
%seran las distintas iteraciones x_i de x)

%Tenemos N+1 columnas porque tenemos x_0,..., x_N
for i=1:N 
    x(:,i+1) = x(:,i) + h*f(t(i),x(:,i));
    %x_i+1 = x_i+h*f(t_i,x_i)
end
%x calcula la aproximacion de la sol de la 1ª componente en la 1ª fila y
%de la 2ª en la 2ª fila

t = t(:); %Convertimos t en vector columna del tipo(N+1,1)
x = x.'; %Trasponemos la matriz a una del tipo (N+1,n)
%Para que saque la salida como el ode45 tenemos que trasponer la solución
%porque ode lo saca por columnas y no por filas 
%Si ponemos solo x' hacemos la traspuesta y tambien la conjugada, aunque 
%en este caso da igual tener cuidado cuando tengamos numeros complejos,
%(para asegurarnos que solo trasponemos ponemos x.')


