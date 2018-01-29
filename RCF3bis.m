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
xlrange5='K:K';
time = xlsread(filename,xlrange1);
power = xlsread(filename,xlrange2);
temp = xlsread(filename,xlrange3);
logpower=xlsread(filename,xlrange4);
time10=xlsread(filename,xlrange5);

logpower_poly=polyfit(time,logpower,3);
logpower_poly_values=polyval(logpower_poly,time);
logpower_poly_values_separate=reshape(logpower_poly_values,10,37);
time_move=reshape(time,10,37);

for i=1:37
    polyfit_derivative_logpower{i}=polyfit(time10,logpower_poly_values_separate(1:10,i),3);
    coef_derivative_logpower{i}=polyder(polyfit_derivative_logpower{i});
    polyval_coef_derivative_logpower{i}=polyval(coef_derivative_logpower{i},time_move(1:10,i));
end
values_matrix=cell2mat(polyval_coef_derivative_logpower);
values_column=values_matrix(:);

for i=1:370
    T(i)=1/values_column(i);
end
l=1.22e-4;
Beff=0.00765;

Bieff=[0.041,0.115,0.396,0.196,0.219,0.033];
L=[3.01,1.14,0.301,0.111,0.0305,0.0124];
B=zeros(1,6);

for k=1:6
    B(k)=Beff*Bieff(k);
end


for j=1:370
    summ=0;
    for k=1:6
        summ=summ+B(k)/(1+(T(j)*L(k)));
    end
    rho(j)=(((l/T(j))+ summ)*100)/Beff;
end
Trho=transpose(rho);
%{
%}


