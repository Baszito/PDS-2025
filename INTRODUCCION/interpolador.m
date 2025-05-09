##Funcion interpoladora para hacer sobremuestreo.
function [xn,tn]=interpolador(fm_o,fm_n,x,t,fs,TIPO)
  T=1/fm_o;#Periodo original
  Ti=1/fm_n;#Periodo nuevo
  tn=t(1):Ti:t(end)+T;
  xn=zeros(length(tn),1);
  if(TIPO =="sync")
    for i=1:length(tn)
      xsum=0;
      for j=1:length(t)
        Ts=(Ti*i-T*j)/(T);
        xsum+=(x(j)*sync_t(Ts,fs));
      endfor
      xn(i)=xsum;
   endfor
   elseif (TIPO=='esca')
    for i=1:length(tn)
      xsum=0;
      for j=1:length(t)
        Ts=(Ti*i)/T-j;
        Te=(Ts>=0) && (Ts < 1);
        xsum+=(x(j)*Te);
      endfor
      xn(i)=xsum;
    endfor
   elseif (TIPO=='line')
      for i=1:length(tn)
      xsum=0;
      for j=1:length(t)
        Ts=(Ti*i-T*j)/(T);
        Tt=0;
        for k=1:length(Ts)
          if(abs(Ts)<1)
            Tt=1-abs(Ts);
          else
            Tt(k)=0;
          endif
        endfor
        xsum+=(x(j)*Tt);
      endfor
      xn(i)=xsum;
    endfor
   else (printd('Error en tipo de interpolacion'));
   endif
 endfunction
