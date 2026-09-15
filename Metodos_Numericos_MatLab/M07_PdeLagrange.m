clc; clear;
% Datos, donde 'X' son tus datos y 'Y' son tus funciones a encontrar
x = [20 30 40 50 60 70]; y = [11 20 35 58 91 140]; 
t = 1; n = length(x); 
x1 = 22; % x a interpolar
sum = 0;

% Función que repite el proceso para obtener los n grados de los polinomios
for gradP = 1:n
    sum = 0;
    % Función que genera el polinomio de lagrange de orden gradP
    for i = 1:gradP
        mult = 1;
        for j = 1:gradP
            if j ~= i
                mult = mult * (x1 - x(j)) / (x(i) - x(j));
            end
        end
        sum = sum + mult * y(i);
    end
% Mostramos el orden del polinomio comenzando desde el orden 1 y su valor
    if (gradP-1) ~= 0
        disp(['Polinomio de Lagrange grado: ', num2str(gradP-1)])
        sum
    end
end