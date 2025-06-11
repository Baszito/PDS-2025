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

#Obtengo el h_max
h_max=max(mag_hjw);
#Obtenemos las caidas en decibeles entre la maxima y el resto
h_db_caidas=20*log10(mag_hjw/h_max);
#Revisando las caidas, se ve que la caida de -3 esta en el indice 9656
f_caida=9656;
w_corte = w(f_caida);           # Frecuencia angular de corte
f_corte = w_corte / (2*pi);          # Frecuencia de corte en Hz
fm = 4 * fc;               # Frecuencia de muestreo
T = 1 / fm;                # Período de muestreo







