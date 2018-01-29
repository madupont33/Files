%function[] = RCF2()
clc;
clearvars;
%read each experiment 
filename = 'input2';

AvTemp=zeros(1,5);
T=zeros(1,5);
Tplus=zeros(1,5);
rho=zeros(1,5);
rhoplus=zeros(1,5);
alphaT=zeros(1,4);

%constants for rho calculation
l=1.22e-4;
Beff=0.00765;

Bieff=[0.041,0.115,0.396,0.196,0.219,0.033];
L=[3.01,1.14,0.301,0.111,0.0305,0.0124];
B=zeros(1,6);

for k=1:6
    B(k)=Beff*Bieff(k);
end
    
%i = number of sheets, 1 sheet=1 measurement, pre-treated on Excel file.  must change i manually for each new set of experiments
for i=1:2
    sheet=i;
    xlrange1='A:A';
    xlrange2='B:B';
    xlrange3='C:C';

    time = xlsread(filename,sheet,xlrange1);
    power = xlsread(filename,sheet,xlrange2);
    temp = xlsread(filename,sheet,xlrange3);
    
    AvTemp(i)=mean(temp);
    
    n=numel(time);

    for j=1:n
        time(j)=j-1;    
    end

    format compact
    format long

%non linear least squares fit to get T
    fun = @(x,time)x(1)*exp(time/x(2));
    
%Best parameters I found so far
    x0 = [0.05,200];
    [x,resnorm,residual,exitflag,output,lambda,jacobian] = lsqcurvefit(fun,x0,time,power);
    T(i)=x(2);
    ci = nlparci(x,residual,'jacobian',jacobian);
    Tplus(i)=ci(2,2);
%rho
    sum=0;
    for k=1:6
        sum=sum+B(k)/(1+(T(i)*L(k)));
    end
    rho(i)=(((l/T(i))+ sum)*100)/Beff;
    
    sum2=0;
    for k=1:6
        sum2=sum2+B(k)/(1+(Tplus(i)*L(k)));
    end
    rhoplus(i)=(((l/Tplus(i))+ sum2)*100)/Beff;
end

%Change the i here again
for i=2:4
    alphaT(i)=(rho(i)-rho(i-1))/(AvTemp(i)-AvTemp(i-1));
end

% plot(AvTemp,T,'b-')
% title('Reactor Period (s) VS Temperature (F)')

% plot(AvTemp,rho,'b-')
% title('Reactivity (cents) VS Temperature (F)')

    
