% Parámetros constantes (a 300 K)
Nc_Si = 2.82e19;   Nv_Si = 1.83e19;   Eg_Si = 1.12;
Nc_Ge = 1.02e19;   Nv_Ge = 5.65e18;   Eg_Ge = 0.66;
Nc_GaAs = 4.35e17; Nv_GaAs = 7.57e18; Eg_GaAs = 1.424;

% Constante de Boltzmann (eV/K)
kB = 8.617e-5;

% Rango de temperatura
T = linspace(100, 600, 501);  % desde 100 K hasta 600 K

% Cálculo de ni para cada semiconductor
ni_Si   = sqrt(Nc_Si * Nv_Si) * exp(-Eg_Si ./ (2 * kB * T));
ni_Ge   = sqrt(Nc_Ge * Nv_Ge) * exp(-Eg_Ge ./ (2 * kB * T));
ni_GaAs = sqrt(Nc_GaAs * Nv_GaAs) * exp(-Eg_GaAs ./ (2 * kB * T));

% Gráfico (escala semilogarítmica en y)
figure;
semilogy(T, ni_Si, 'r-', 'LineWidth', 2); hold on;
semilogy(T, ni_Ge, 'b--', 'LineWidth', 2);
semilogy(T, ni_GaAs, 'g-.', 'LineWidth', 2);
hold off;

xlabel('Temperatura T (K)', 'FontSize', 12);
ylabel('Concentración intrínseca n_i (cm^{-3})', 'FontSize', 12);
title('Concentración intrínseca simplificada n_i(T) — Si, Ge y GaAs', 'FontSize', 14);
% legend({'Silicio (Si)', 'Germanio (Ge)', 'GaAs'}, 'Location', 'northeast');
grid on;
