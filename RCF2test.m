%function[] = RCF2()
clc;

%read each experiment 
filename = 'input2';

AvTemp=zeros(1,12);
T=zeros(1,12);
rho=zeros(1,12);
alphaT=zeros(1,11);
%constants for rho calculation

l=1.22e-4;
Beff=0.00765;

Bieff=[0.041,0.115,0.396,0.196,0.219,0.033];
L=[3.01,1.14,0.301,0.111,0.0305,0.0124];
B=zeros(1,6);

for k=1:6
    B(k)=Beff*Bieff(k);
end
    

for i=2:2
    sheet=i;
    xlrange1='A:A';
    xlrange2='B:B';
    xlrange3='C:C';

    time = xlsread(filename,sheet,xlrange1);
    power = xlsread(filename,sheet,xlrange2);
    temp = xlsread(filename,sheet,xlrange3);
    
    AvTemp(i-1)=mean(temp);
    
    n=numel(time);

    for j=1:n
        time(j)=j-1;    
    end

    format compact
    format long

%non linear least squares fit to get T
    fun = @(x,time)x(1)*exp(time/x(2));

    x0 = [1,2500];
    [x,resnorm,residual,exitflag,output,lambda,jacobian] = lsqcurvefit(fun,x0,time,power);
    T(i-1)=x(2);
    ci = nlparci(x,residual,'jacobian',jacobian);
    
%rho
    sum=0;
    for k=1:6
        sum=sum+B(k)/(1+(T(i-1)*L(k)));
    end
    
    rho(i-1)=(((l/T(i-1))+ sum)*100)/Beff;
end

for i=2:2
    alphaT(i)=(rho(i)-rho(i-1))/(AvTemp(i)-AvTemp(i-1));
end

% plot(AvTemp,T,'b-')
% title('Reactor Period (s) VS Temperature (F)')

plot(AvTemp,rho,'b-')
title('Reactivity (cents) VS Temperature (F)')

    
