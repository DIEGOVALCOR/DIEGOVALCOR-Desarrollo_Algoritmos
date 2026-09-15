clc; clear;
% Variables a modificar: "x" y "y" (si tienes los datos)
% y = [103.8 106.1 108.3 110.5 112.7 114.8 116.9 119 121 123.1 125.1]'; 
% x = 370:8:450; x = x'; % y = f(x)
% n = length(x); h = (x(n)-x(1))/(n-1);

% Crear los datos si tienes las función
 I = @(X) 11*X^2 -5*X; % Para función quad
 x = 0:10; x = x'; % Para función trapz
 y = 11*x.^2 -5*x; % Para trapecios
 n = length(x); h = (x(n)-x(1))/(n-1); % Para trapecios

% Regla de los trapecios

IRT = 0; % Definimos la variable que guarda el resultado
for i = 2:(n-1) % Un for para la sumatoria de todos menos el primero y ultimo
    IRT = IRT + y(i);
end
IRT = 2*IRT; % Mutiplicamos por 2 la sumatoria
IRT = IRT + y(1) + y(n); % Agregamos el primer y el último término
IRT = IRT*(h/2); % Multiplicamos por h/2
disp(['El resultado de la integral por regla de trapecios es: ', num2str(IRT)])
disp(['Usando función trapz: ', num2str(trapz(x, y))])

% Método de Simpson a 1/3

% fds = (x(n)-x(1))/(3*(n-1)); % Declaramos el factor de la suma (b-a)/(3n)
% IMS = 0; % Definimos la variable que guarda el resultado
% S_nones = 0; S_pares = 0; % Obtenemos las sumas individuales de los nones y los pares
% for i = 2:(n-1) 
%     if rem(i, 2) ~= 0 % S_pares (la fórmula comienza en 0, matlab en 1)
%         S_pares = S_pares + y(i);
%     elseif rem(i, 2) == 0 % S_nones
%         S_nones = S_nones + y(i);
%     end
% end
% IMS = y(1) + y(n); % Agregamos el primer y el último término
% IMS = IMS + 4*S_nones + 2*S_pares; % Agregamos 4 veces los nones y 2 los pares
% IMS = IMS*fds; % MUltiplicamos por el factor de la suma
% disp(['El resultado de la integral por Método de Simpson a 1/3 es: ', num2str(IMS)])
% disp(['Usando función quad: ', num2str(quad(I, 4, 28))])

% Funciones a investigar, doc trapz, doc quad