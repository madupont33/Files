clear;
clc;

%Time, power (3 channels) and temperatures/pressure import
for i=1:nb_files_value
    for j=1:nb_sheets_value(i)
        for k=1:nb_exp_value(i,j)
            filename = file_name(i);
            sheet=j;
            %Time
            start_time=num2str(start_time_value(i,j,k));
            end_time=num2str(end_time_value(i,j,k));
            Time_range=sprintf('A%s:A%s',start_time,end_time);
            Time{i,j,k} = xlsread(filename,sheet,Time_range);
            %Power channel 1:LP1
            LP1_range=sprintf('D%s:D%s',start_time,end_time);
            LP1{i,j,k} = xlsread(filename,sheet,LP1_range);
            %Power channel 2:LP2
            LP2_range=sprintf('E%s:E%s',start_time,end_time);
            LP2{i,j,k} = xlsread(filename,sheet,LP2_range);
            %Power channel 3:PP2
            PP2_range=sprintf('H%s:H%s',start_time,end_time);
            PP2{i,j,k} = xlsread(filename,sheet,PP2_range);
            %Moderator temperature TC 1
            T_M1_range=sprintf('J%s:J%s',start_time,end_time);
            T_M1{i,j,k} = xlsread(filename,sheet,T_M1_range);
            %Moderator temperature TC 2
            T_M2_range=sprintf('K%s:K%s',start_time,end_time);
            T_M2{i,j,k} = xlsread(filename,sheet,T_M2_range);
            %Moderator temperature TC 3
            T_M3_range=sprintf('L%s:L%s',start_time,end_time);
            T_M3{i,j,k} = xlsread(filename,sheet,T_M3_range);
            %Test section temperature Inlet top 1 : deepest
            T_TS1_range=sprintf('O%s:O%s',start_time,end_time);
            T_TS1{i,j,k} = xlsread(filename,sheet,T_TS1_range);
            %Test section temperature Inlet top 2 : medium depth
            T_TS2_range=sprintf('R%s:R%s',start_time,end_time);
            T_TS2{i,j,k} = xlsread(filename,sheet,T_TS2_range);
            %Test section temperature Inlet top 3 : edge
            T_TS3_range=sprintf('Q%s:Q%s',start_time,end_time);
            T_TS3{i,j,k} = xlsread(filename,sheet,T_TS3_range);
            %Test section temperature Outlet
            T_TS4_range=sprintf('P%s:P%s',start_time,end_time);
            T_TS4{i,j,k} = xlsread(filename,sheet,T_TS4_range);
            %Pressure
            P_range=sprintf('S%s:S%s',start_time,end_time);
            P{i,j,k} = xlsread(filename,sheet,P_range);
        end
   end
end

%Re organization of database from X(i,j,k) == variable(file,sheet,exp_nb)
%to X_Y(i) == exp type_variable(exp_nb from type)
l=1;
m=1;
n=1;
o=1;

for i=1:nb_files_value
    for j=1:nb_sheets_value(i)
        for k=1:nb_exp_value(i,j)
            if experiment_type_value(i,j,k)==1
                RER_Time(l)=Time(i,j,k);
                RER_LP1(l)=LP1(i,j,k);
                RER_LP2(l)=LP2(i,j,k);
                RER_PP2(l)=PP2(i,j,k);
                RER_T_M1(l)=T_M1(i,j,k);
                RER_T_M2(l)=T_M2(i,j,k);
                RER_T_M3(l)=T_M3(i,j,k);
                RER_T_S1(l)=T_TS1(i,j,k);
                RER_T_S2(l)=T_TS2(i,j,k);
                RER_T_S3(l)=T_TS3(i,j,k);
                RER_T_S4(l)=T_TS4(i,j,k);
                RER_P(l)=P(i,j,k);
                l=l+1;
            elseif experiment_type_value(i,j,k)==2
                MTF_Time(m)=Time(i,j,k);
                MTF_LP1(m)=LP1(i,j,k);
                MTF_LP2(m)=LP2(i,j,k);
                MTF_PP2(m)=PP2(i,j,k);
                MTF_T_M1(m)=T_M1(i,j,k);
                MTF_T_M2(m)=T_M2(i,j,k);
                MTF_T_M3(m)=T_M3(i,j,k);
                MTF_T_S1(m)=T_TS1(i,j,k);
                MTF_T_S2(m)=T_TS2(i,j,k);
                MTF_T_S3(m)=T_TS3(i,j,k);
                MTF_T_S4(m)=T_TS4(i,j,k);
                MTF_P(m)=P(i,j,k);
                m=m+1;    
            elseif experiment_type_value(i,j,k)==3
                TST_Time(n)=Time(i,j,k);
                TST_LP1(n)=LP1(i,j,k);
                TST_LP2(n)=LP2(i,j,k);
                TST_PP2(n)=PP2(i,j,k);
                TST_T_M1(n)=T_M1(i,j,k);
                TST_T_M2(n)=T_M2(i,j,k);
                TST_T_M3(n)=T_M3(i,j,k);
                TST_T_S1(n)=T_TS1(i,j,k);
                TST_T_S2(n)=T_TS2(i,j,k);
                TST_T_S3(n)=T_TS3(i,j,k);
                TST_T_S4(n)=T_TS4(i,j,k);
                TST_P(n)=P(i,j,k);
                n=n+1;   
            else
                DF_Time(o)=Time(i,j,k);
                DF_LP1(o)=LP1(i,j,k);
                DF_LP2(o)=LP2(i,j,k);
                DF_PP2(o)=PP2(i,j,k);
                DF_T_M1(o)=T_M1(i,j,k);
                DF_T_M2(o)=T_M2(i,j,k);
                DF_T_M3(o)=T_M3(i,j,k);
                DF_T_S1(o)=T_TS1(i,j,k);
                DF_T_S2(o)=T_TS2(i,j,k);
                DF_T_S3(o)=T_TS3(i,j,k);
                DF_T_S4(o)=T_TS4(i,j,k);
                DF_P(o)=P(i,j,k);
                o=o+1;                       
            end
        end
   end
end
