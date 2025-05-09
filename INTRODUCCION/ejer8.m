##Ejercicio 8
clc
clear all
#Patrones iniciales =
fs=10;
fm=1000;
T=1/fm;
t=0:T:1-T;

senal_seno=sin(2*pi*fs*t);
senal_ruido=randn(1,length(t));
subplot(3,1,1)
plot(t,senal_seno)
title('Seno');
grid on

subplot(3,1,2)
plot(t,senal_ruido)
title('Ruido')
grid on


subplot(3,1,3)
senal_sucia=senal_seno+senal_ruido;
plot(t,senal_sucia)
title('Sumatoria');
grid on

##Potencia de la señal original
[Po,PoDb]=potencia(senal_seno);
disp(['Potencia de la señal original : ',num2str(Po),'W (',num2str(PoDb),' DB )'])

##Potencia de la señal Ruido
[Pr,PrDb]=potencia(senal_ruido);
disp(['Potencia del ruido : ',num2str(Pr),'W (',num2str(PrDb),' DB )'])

#Relacion SEÑAL RUIDO original
SNR=Po/Pr;
SNRDB=10*log10(Po/Pr);
disp(['Relacion Señal Ruido: ',num2str(SNR),'W (',num2str(SNRDB),' DB )'])

#Relacion SEÑAL RUIDO con constante
constante=5;
senal_ruido_c=5*senal_ruido;
[Pr_c,PrcDb]=potencia(senal_ruido_c);
SNR_C=Po/Pr_c;
SNRDB_C=10*log10(Po/Pr_c);
disp(['Relacion Señal Ruido MOD: ',num2str(SNR_C),'W (',num2str(SNRDB_C),' DB )'])

##Despeje
senal_ruido_D=sqrt(Po/Pr)*senal_ruido;
[Pr,PrDb]=potencia(senal_ruido_D);
SNR=Po/Pr;
SNRDB=10*log10(Po/Pr);
disp(['Relacion Señal Ruido Despeje: ',num2str(SNR),'W (',num2str(SNRDB),' DB )'])

