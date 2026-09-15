clear; clc;

function fxy = fxy(x, y)
fxy = 5*y*x^3 - 2*y;
%fxy = y*x^2 - 1.1*y;
end

% Método de Euler
t1 = 1; h = 0.1; c = 1; x = 0; y = c;
x1 = 0; xf = 2; n = (xf - x1)/h;
for i = 1:n+1
    t1(1, i) = x;
    k = fxy(x, y);
    x = x + h;
    t1(2, i) = y;
    y = y + h * k;
    t1(3, i) = k;
end
t1'

% Método de Heun
t2 = 1; h = 0.2; c = 1; x = 0; y = c; yp = y;
x1 = 0; xf = 2; n = (xf - x1)/h;
for i = 1:n+1
    t2(1, i) = x;
    k1 = fxy(x, y);
    x = x + h;
    t2(2, i) = y;
    yp = y + h * k1;
    t2(3, i) = k1;
    k2 = fxy(x, yp);
    t2(4, i) = k2;
    y = y + h * (k1 + k2)/2;
end
t2'

% Método de Runge-Kutta
t3 = 1; h = 0.25; c = 1; x = 0; y = c; yp = y;
x1 = 0; xf = 2; n = (xf - x1)/h;
for i = 1:n+1
    t3(1, i) = x;
    t3(2, i) = y; 
    k1 = fxy(x, y);
    t3(3, i) = k1;
    xp1 = x + h/2; yp1 = y + (h*k1)/2; k2 = fxy(xp1, yp1);
    t3(4, i) = k2;
    xp2 = xp1; yp2 = y + (h*k2)/2; k3 = fxy(xp2, yp2);
    t3(5, i) = k3;
    xp3 = x + h; yp3 = y + h*k3; k4 = fxy(xp3, yp3);
    t3(6, i) = k4;
    x = x + h; y = y + ((k1+2*k2+2*k3+k4)*h)/6;
end
t3'

plot(t1(1, :), t1(2, :), 'r.-')
hold on
plot(t2(1, :), t2(2, :), 'b.-')
plot(t3(1, :), t3(2, :), 'm.-')
xlim([0 1]) % limitar x para evitar divergencia en gráfico
hold off
legend('Euler', 'Heun', 'Runge-Kutta')
title('Solución con los 3 métodos usando')
