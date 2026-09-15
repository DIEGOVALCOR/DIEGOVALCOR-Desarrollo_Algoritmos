% Varshni parameters for each material
Eg0_Si   = 1.170;    alpha_Si   = 4.73e-4;   beta_Si   = 636;
Eg0_Ge   = 0.744;    alpha_Ge   = 4.774e-4; beta_Ge   = 235;
Eg0_GaAs = 1.515;    alpha_GaAs = 5.405e-4; beta_GaAs = 204;

% Temperature range
T = 100:600;  % desde 100 K hasta 600 K

% Varshni equation: Eg(T) = Eg0 - (alpha * T.^2) ./ (T + beta)
Eg_Si   = Eg0_Si   - (alpha_Si   * T.^2) ./ (T + beta_Si);
Eg_Ge   = Eg0_Ge   - (alpha_Ge   * T.^2) ./ (T + beta_Ge);
Eg_GaAs = Eg0_GaAs - (alpha_GaAs * T.^2) ./ (T + beta_GaAs);

% Plot
figure;
plot(T, Eg_Si,   'r-', 'LineWidth', 2); hold on;
plot(T, Eg_Ge,   'b--', 'LineWidth', 2);
plot(T, Eg_GaAs, 'g-.', 'LineWidth', 2);
hold off;

xlabel('Temperatura T (K)', 'FontSize', 12);
ylabel('Energía de banda prohibida E_g (eV)', 'FontSize', 12);
title('Dependencia de E_g con T (Varshni) para Si, Ge y GaAs', 'FontSize', 14);
legend({'Silicio (Si)', 'Germanio (Ge)', 'GaAs'}, 'Location', 'northeast');
grid on;
