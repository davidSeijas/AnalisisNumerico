%DAVID SEIJAS PEREZ
%PRACTICA 3
%Ejercicio 1: Metodo del punto medio
function[t,x] = puntomedio(f,intervalo,x0,N)

h = (intervalo(2)-intervalo(1))/N;
t = intervalo(1):h:intervalo(2);
x(:,1) = x0(:);
%Lo inicializamos con el metodo de euler (al ser solo una iter vale con
%esto). Si ponemos [t,x]=meuler(args) estamos aproximando los valores de t
%y x y aqui solo necesitamos el valor de las primeras columnas (aqui solo
%es una iter asi que no  hace ni falta). Para mayor numoer de pasos haremos
%[t,x]=meuler(f, intervalo', x0, N'). Si queremos x1,x2,x3 ponemos [t1,t3]
%de intervalo y N=2
x(:,2) = x(:,1) + h*f(t(1),x(:,1));

%Para indicar que en t no necesiamos devolver nada, ponemos ~ en vez de t, 
%lo que signifaica que ahi va una variable pero que no vamos a utilizar.

for i=1:N-1
    x(:,i+2) = x(:,i) + 2*h*f(t(i+1),x(:,i+1));  
end

x = x.';
t = t(:);







