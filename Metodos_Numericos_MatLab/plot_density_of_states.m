T = 100:10:600; % Rango de T de 100 a 600
m0 = 9.11e-31;
mn = 1.08*m0;
mp = 0.56*m0;
k = 1.38e-23;
h = 6.626e-34;

% Calculamos las funciones dependientes de la temperatura
Nct = 2e-6 * (2*pi*mn*k*T/h^2).^(3/2);
Nvt = 2e-6 * (2*pi*mp*k*T/h^2).^(3/2);

% Graficamos las funciones en un mismo plot para comparar
figure;
plot(T, Nct, 'r-', 'DisplayName', 'Nct');
hold on;
plot(T, Nvt, 'b-', 'DisplayName', 'Nvt');
xlabel('Temperature (K)');
ylabel('Densidad efectiva de estados');
title('Densidad efectiva de estados vs Temperatura');
legend show;
grid on;