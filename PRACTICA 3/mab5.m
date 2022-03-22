%DAVID SEIJAS PEREZ
%PRACTICA 3
%Ejercicio 5: Metodo de Adams bathfor de 5 pasos

function[t,x]=mab5(f,intervalo,x0,N)

h = (intervalo(2)-intervalo(1))/N;
t = intervalo(1):h:intervalo(2);
pasos = 5;
inter = [t(1), t(pasos)];
[~,x] = mrk4(f,inter,x0,pasos-1);
x = x.';

for i=1:pasos
    y(:,i) = f(t(i),x(:,i));
end

for i=1:N-(pasos-1)
    x(:,i+5) = x(:,i+4) + (h/720)*(1901*y(:,5) - 2774*y(:,4) + 2616*y(:,3) - 1274*y(:,2) + 251*y(:,1));
	for k=1:(pasos-1)
		y(:,k) = y(:,k+1);
	end
    y(:,pasos) = f(t(i+pasos),x(:,i+pasos));
end

x = x.';
t = t(:);