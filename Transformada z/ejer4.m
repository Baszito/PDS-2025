#Ejercicio4
#H(s) con s=jw, evaluo H(jw)
#Obtengo el max de |H(jw)|
#Obtengo donde decrece 3db desde la maxima potencia
#Fm = 4*ese decrecimiento
clc;
clear all;
clf;
H=@(s) 12500.*s./(44.*s.^2 +60625.*s+625*10^4);
w=0:0.01:1000*pi;
jw=w.*j;
h_jw=H(jw);
mag_hjw=abs(h_jw);
plot(w,mag_hjw)
xlabel('w');
ylabel('|H(jw)|');
grid on;
hold on;
#----------Ploteo de freqz--------------#
figure
freqz_plot(w,h_jw,'true')
#----------OBTENCION DE T---------------#
#Obtengo el h_max
h_max=max(mag_hjw);
#Obtenemos las caidas en decibeles entre la maxima y el resto
h_db_caidas=20*log10(mag_hjw/h_max);
#Revisando las caidas, se ve que la caida de -3 esta en el indice 147113
f_caida=147113;
w_corte = w(f_caida);           # Frecuencia angular de corte
f_corte = w_corte / (2*pi);          # Frecuencia de corte en Hz
fm = 4 * f_corte;               # Frecuencia de muestreo
T = 1 / fm;                # Período de muestreo

#----------Transformacion de Euler---------------#
H_euler_num=[12500/T -12500/T];
H_euler_denom=[(44/T^2)+(625*10^4)+60625/T -(88/T^2)-(60625/T) 44/T^2 ];
figure
freqz(H_euler_num,H_euler_denom,3140,fm)

#----------Transformacion de Bilineal---------------#
H_bili_num=[12500*T 0 -12500*T];
H_bili_denom=[(3125000*T^2)+(60625*T)+88 (6250000*T^2)-176 (3125000*T^2)-60625*T+88];
figure
freqz(H_bili_num,H_bili_denom,3140,fm)



