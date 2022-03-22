%DAVID SEIJAS PEREZ
%PRACTICA 3
%Ejercicio 4: Metodo de Adams bathfor de 4 pasos

function[t,x]=mab4(f,intervalo,x0,N)

h = (intervalo(2)-intervalo(1))/N;
t = intervalo(1):h:intervalo(2);
pasos = 4;
inter = [t(1), t(pasos)];
[~,x] = mrk3(f,inter,x0,pasos-1);
x = x.';

for i=1:pasos
    y(:,i) = f(t(i),x(:,i));
end

for i=1:N-(pasos-1)
    x(:,i+4) = x(:,i+3) + (h/24)*(55*y(:,4) - 59*y(:,3) + 37*y(:,2) -9*y(:,1));
	for k=1:(pasos-1)
		y(:,k) = y(:,k+1);
	end
    y(:,pasos) = f(t(i+pasos),x(:,i+pasos));
end

x = x.';
t = t(:);