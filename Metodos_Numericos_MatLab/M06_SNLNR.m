% Método de Newton-Raphson para sistemas de ecuaciones no lineales

function fx = fx(x)
fx(1, 1) = (x(1)-4)^2 + (x(2)-4)^4 - 5;
fx(2, 1) = x(1)^2 + x(2)^2 -16;
end

function jac = jac(x)
jac(1, 1) = 2*(x(1)-4);
jac(1, 2) = 4*(x(2)-4)^3;
jac(2, 1) = 2*x(1);
jac(2, 2) = 2*x(2);
end

clc; clear; % Limpiamos la zona de trabajo
x=[2 ; 4]; % Proponemos valores
t(:, 1) = x; % Creamos la tabla.
for cont = 2:1:8 % Repetimos proceso de solución
    x = x - inv(jac(x))*fx(x);
    t(:, cont)=x;
end
t % Imprimimos la tabla
