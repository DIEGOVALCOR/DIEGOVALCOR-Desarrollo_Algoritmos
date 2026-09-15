% Example #1: Calculation of n, p, W, Qj of a p-n junction
 k=1.38e-23; % [J/K]
 q=1.6e-19; % [C]
 e0=8.85e-14; % [F/cm]
 NA=1e16; % [cm^-3]
 ND=1e15; % [cm^-3]
 ni=9.65e9; % [cm^-3]
 A = 1e-4; % [cm^2]
 k_Si=12;
 e_Si=k_Si*e0;
 T = 300; % [K]
 Vr = 5;
 %
 Vbi=(k*T/q)*log(ND*NA/ni^2)
 xn=sqrt((2*e_Si*Vbi/q)*(NA/ND)*(1/(NA+ND)))
 xp=sqrt((2*e_Si*Vbi/q)*(ND/NA)*(1/(NA+ND)))
 W=xn+xp
 Qj=A*sqrt((2*e_Si*q*((ND*NA/(ND+NA))*Vbi)))
 %
 pp0=NA
 np0=ni^2/pp0
 nn0=ND
 pn0=ni^2/nn0
 % Calculate thevalue of x_n and x_p
 x_n = sqrt((2*e_Si*Vbi/q)*(NA/ND)*(1/(NA+ND)))
 x_p = sqrt((2*e_Si*Vbi/q)*(ND/NA)*(1/(NA+ND)))

 W = sqrt((2*e_Si/q)*((NA+ND)/(NA*ND))*(Vbi+Vr))
