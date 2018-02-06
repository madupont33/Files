%function[] = RCF()
clc;

%Power
filename = 'inputP';

xlrange1='A:A';
xlrange2='H:H';

time = xlsread(filename,xlrange1);
power = xlsread(filename,xlrange2);

time = time(~isnan(time));
time2 = datestr(time, 'HH:MM:SS');
time3=cellstr(time2);

power = power(~isnan(power));

n=numel(time);

for i=1:n
    time(i)=i-1;
end

%Temp
filename = 'inputT';

xlrange1='D:D';
xlrange2='F:F';
xlrange3='H:H';


temp1 = xlsread(filename,xlrange1);
temp2 = xlsread(filename,xlrange2);
temp3 = xlsread(filename,xlrange3);

m=numel(temp1);

tempAv=zeros(1,m);
tempAv2=zeros(1,n);

for i=1:m
    tempAv(i)=(temp1(i)+temp2(i)+temp3(i))/3;
end


k=1;
j=1;
while j<n
        p=1;
        while p<301
            tempAv2(j)=tempAv(k);
            p=p+1;
            j=j+1;
        end
k=k+1;
end

tempAv3=transpose(tempAv2);

%New file
filename = 'output';

xlrange1='A';
xlrange2='B';
xlrange3='C';
sheet =1;

xlswrite(filename,time3,sheet,xlrange1);
xlswrite(filename,power,sheet,xlrange2);
xlswrite(filename,tempAv3,sheet,xlrange3);

%separating data

o=1;

for i=1:n    
    if power(i)>0.03
      Ntime(o)=time3(i);
      Ndtime(o)=time(i);
      Npower(o)=power(i);
      Ntemp(o)=tempAv3(i);
      o=o+1;
    end
end


Ntime2=transpose(Ntime);
Npower2=transpose(Npower);
Ntemp2=transpose(Ntemp);
Ndtime2=transpose(Ndtime);

i=1;
j=1;
k=1;
for i=1:o-2   
    if Ndtime2(i+1)-Ndtime2(i)>60
       j=j+1;
       k=1;
    else
       Mtime(k,j)=Ntime2(i);
       Mpower(k,j)=Npower2(i);
       Mtemp(k,j)=Ntemp2(i);
       k=k+1;
    end
end
for i=1:j
    Fpower(:,i)=cellstr(num2str(Mpower(:,i)));
    Ftemp(:,i)=cellstr(num2str(Mtemp(:,i)));
end

Exp1(:,1)=Mtime(:,1);
Exp1(:,2)=Fpower(:,1);
Exp1(:,3)=Ftemp(:,1);

MaxPow=zeros(size((Exp1(:,2)),1),size((Exp1(:,2)),2));
MaxPow=str2double(Exp1(:,2));

[Maxpower1,Maxpower1i] = max(MaxPow);

for i=1:Maxpower1i
    FExp1(i,:)=Exp1(i,:);
end

Exp2(:,1)=Mtime(:,2);
Exp2(:,2)=Fpower(:,2);
Exp2(:,3)=Ftemp(:,2);

MaxPow=zeros(size((Exp2(:,2)),1),size((Exp1(:,2)),2));
MaxPow=str2double(Exp2(:,2));

[Maxpower1,Maxpower1i] = max(MaxPow);

for i=1:Maxpower1i
    FExp2(i,:)=Exp2(i,:);
end

Exp3(:,1)=Mtime(:,3);
Exp3(:,2)=Fpower(:,3);
Exp3(:,3)=Ftemp(:,3);

MaxPow=zeros(size((Exp3(:,2)),1),size((Exp3(:,2)),2));
MaxPow=str2double(Exp3(:,2));

[Maxpower1,Maxpower1i] = max(MaxPow);

for i=1:Maxpower1i
    FExp3(i,:)=Exp3(i,:);
end

Exp4(:,1)=Mtime(:,4);
Exp4(:,2)=Fpower(:,4);
Exp4(:,3)=Ftemp(:,4);

MaxPow=zeros(size((Exp4(:,2)),1),size((Exp4(:,2)),2));
MaxPow=str2double(Exp4(:,2));

[Maxpower1,Maxpower1i] = max(MaxPow);

for i=1:Maxpower1i
    FExp4(i,:)=Exp4(i,:);
end

Exp5(:,1)=Mtime(:,5);
Exp5(:,2)=Fpower(:,5);
Exp5(:,3)=Ftemp(:,5);

MaxPow=zeros(size((Exp5(:,2)),1),size((Exp5(:,2)),2));
MaxPow=str2double(Exp5(:,2));

[Maxpower1,Maxpower1i] = max(MaxPow);

for i=1:Maxpower1i
    FExp5(i,:)=Exp5(i,:);
end

Exp6(:,1)=Mtime(:,6);
Exp6(:,2)=Fpower(:,6);
Exp6(:,3)=Ftemp(:,6);

MaxPow=zeros(size((Exp6(:,2)),1),size((Exp6(:,2)),2));
MaxPow=str2double(Exp6(:,2));

[Maxpower1,Maxpower1i] = max(MaxPow);

for i=1:Maxpower1i
    FExp6(i,:)=Exp6(i,:);
end

Exp7(:,1)=Mtime(:,7);
Exp7(:,2)=Fpower(:,7);
Exp7(:,3)=Ftemp(:,7);

MaxPow=zeros(size((Exp7(:,2)),1),size((Exp7(:,2)),2));
MaxPow=str2double(Exp7(:,2));

[Maxpower1,Maxpower1i] = max(MaxPow);

for i=1:Maxpower1i
    FExp7(i,:)=Exp7(i,:);
end

Exp8(:,1)=Mtime(:,8);
Exp8(:,2)=Fpower(:,8);
Exp8(:,3)=Ftemp(:,8);

MaxPow=zeros(size((Exp8(:,2)),1),size((Exp8(:,2)),2));
MaxPow=str2double(Exp8(:,2));

[Maxpower1,Maxpower1i] = max(MaxPow);

for i=1:Maxpower1i
    FExp8(i,:)=Exp8(i,:);
end

Exp9(:,1)=Mtime(:,9);
Exp9(:,2)=Fpower(:,9);
Exp9(:,3)=Ftemp(:,9);

MaxPow=zeros(size((Exp9(:,2)),1),size((Exp9(:,2)),2));
MaxPow=str2double(Exp9(:,2));

[Maxpower1,Maxpower1i] = max(MaxPow);

for i=1:Maxpower1i
    FExp9(i,:)=Exp9(i,:);
end

Exp10(:,1)=Mtime(:,10);
Exp10(:,2)=Fpower(:,10);
Exp10(:,3)=Ftemp(:,10);

MaxPow=zeros(size((Exp10(:,2)),1),size((Exp10(:,2)),2));
MaxPow=str2double(Exp10(:,2));

[Maxpower1,Maxpower1i] = max(MaxPow);

for i=1:Maxpower1i
    FExp10(i,:)=Exp10(i,:);
end

Exp11(:,1)=Mtime(:,11);
Exp11(:,2)=Fpower(:,11);
Exp11(:,3)=Ftemp(:,11);

MaxPow=zeros(size((Exp11(:,2)),1),size((Exp11(:,2)),2));
MaxPow=str2double(Exp11(:,2));

[Maxpower1,Maxpower1i] = max(MaxPow);

for i=1:Maxpower1i
    FExp11(i,:)=Exp11(i,:);
end

Exp12(:,1)=Mtime(:,12);
Exp12(:,2)=Fpower(:,12);
Exp12(:,3)=Ftemp(:,12);

MaxPow=zeros(size((Exp12(:,2)),1),size((Exp12(:,2)),2));
MaxPow=str2double(Exp12(:,2));

[Maxpower1,Maxpower1i] = max(MaxPow);

for i=1:Maxpower1i
    FExp12(i,:)=Exp12(i,:);
end


sheet =2;

xlrange1='A';

xlswrite(filename,FExp1,sheet,xlrange1);

sheet =3;

xlrange1='A';

xlswrite(filename,FExp2,sheet,xlrange1);

sheet =4;

xlrange1='A';

xlswrite(filename,FExp3,sheet,xlrange1);

sheet =5;

xlrange1='A';

xlswrite(filename,FExp4,sheet,xlrange1);

sheet =6;

xlrange1='A';

xlswrite(filename,FExp5,sheet,xlrange1);

sheet =7;

xlrange1='A';

xlswrite(filename,FExp6,sheet,xlrange1);

sheet =8;

xlrange1='A';

xlswrite(filename,FExp7,sheet,xlrange1);

sheet =9;

xlrange1='A';

xlswrite(filename,FExp8,sheet,xlrange1);

sheet =10;

xlrange1='A';

xlswrite(filename,FExp9,sheet,xlrange1);

sheet =11;

xlrange1='A';

xlswrite(filename,FExp10,sheet,xlrange1);

sheet =12;

xlrange1='A';

xlswrite(filename,FExp11,sheet,xlrange1);

sheet =13;

xlrange1='A';

xlswrite(filename,FExp12,sheet,xlrange1);

%Calculating T and rho

% for i=2:13
%     %suppress data not exponential
%     %create exponential
%     %reset t = 0
%     %find T
%     %find rho
% end


    
