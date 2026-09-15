clc; clear;
% Datos, donde 'X' son tus datos y 'Y' son tus funciones a encontrar
x = [20 30 40 50 60 70]; y = [11 20 35 58 91 140]; 
t = 1; n = length(x); 
x1 = 22; % x a interpolar

for i = 1:n
    t(i, 1) = i-1; % numeramos las posiciones desde 0
    t(i, 2) = x(i); % segunda columna = x
    t(i, 3) = y(i); % tercer columna = y
end

% Crea la pirámide de constantes Beta_i con t(1, n+1)
% siendo t(1, 3) = Beta_0, t(1, 4) = Beta_1, etc...
for j = 1:(n-1) 
    for i = 1:(n-j)
        t(i, j+3) = (t(i+1, j+2)-t(i, j+2))/(t(i+j, 2)-t(i, 2));
    end
end

sum = t(1, 3); % Declara la suma comenzando de Beta_0 

% Función que expresa todos los ordenes del polinomio hasta (n-1) datos
for contS = 1:(n-1)
    mult = 1;
    for contM = 1:contS
        mult = (x1-x(contM))*mult;
    end
    % Mostramos el orden del Polinomio y su valor
    disp(['Polinomio de Newton grado: ', num2str(contS)])
    sum = sum + mult*t(1, contS+3)
end
