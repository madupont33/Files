%function[] = RCF3()
clc;
clearvars;

%read each experiment 
filename = 'input3';

sheet =1;
    
xlrange1='J:J';
xlrange2='B:B';
xlrange3='C:C';
xlrange4='I:I';

time = xlsread(filename,xlrange1);
power = xlsread(filename,xlrange2);
temp = xlsread(filename,xlrange3);
logpower=xlsread(filename,xlrange4);

% dpower = diff([eps;power(:)])/diff([eps;time(:)]);

% fits the logpower to a polynomial
power2=polyfit(time,logpower,3);
% Takes the derivative of the polynomial
powerD=polyder(power2);
% Calculate the derivative value at each t
powerD2=polyval(powerD,time);

TpowerD2=transpose(powerD2);

size=size(time);
size2=size(1,1);

for i=1:size(1,1)
    T(i)=1/TpowerD2(i);
end
l=1.22e-4;
Beff=0.00765;

Bieff=[0.041,0.115,0.396,0.196,0.219,0.033];
L=[3.01,1.14,0.301,0.111,0.0305,0.0124];
B=zeros(1,6);

for k=1:6
    B(k)=Beff*Bieff(k);
end


for j=1:size(1,1)
    summ=0;
    for k=1:6
        summ=summ+B(k)/(1+(T(j)*L(k)));
    end
    rho(j)=(((l/T(j))+ summ)*100)/Beff;
end
Trho=transpose(rho);



