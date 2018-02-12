%function[] = RCF()
clc;

%Power
for i=1:nb_files_value
    for j=1:nb_sheets_value(i)
        for k=1:nb_exp_value(i,j)
            filename = file_names(1,i);
            sheet=j;
            Time_range(i,j,k)=sprintf('A%s:A%s',start_time_value(i,j,k),end_time_value(i,j,k));
            Time(i,j,k) = xlsread(filename,sheet,Time_range);

            LP1_range(i,j,k)=sprintf('D%s:D%s',start_time_value(i,j,k),end_time_value(i,j,k));
            LP1(i,j,k) = xlsread(filename,sheet,LP1_range);

            LP2_range(i,j,k)=sprintf('E%s:E%s',start_time_value(i,j,k),end_time_value(i,j,k));
            LP2(i,j,k) = xlsread(filename,sheet,LP2_range);

            PP2_range(i,j,k)=sprintf('H%s:H%s',start_time_value(i,j,k),end_time_value(i,j,k));
            PP2(i,j,k) = xlsread(filename,sheet,PP2_range);

            T1_range(i,j,k)=sprintf('J%s:J%s',start_time_value(i,j,k),end_time_value(i,j,k));
            T1(i,j,k) = xlsread(filename,sheet,T1_range);

            T2_range(i,j,k)=sprintf('K%s:K%s',start_time_value(i,j,k),end_time_value(i,j,k));
            T2(i,j,k) = xlsread(filename,sheet,T2_range);

            T3_range(i,j,k)=sprintf('L%s:L%s',start_time_value(i,j,k),end_time_value(i,j,k));
            T3(i,j,k) = xlsread(filename,sheet,T3_range);

            T_mean(i,j,k)=(T1+T2+T3)/3;

            % Time formated from 0 to number of seconds
            n=numel(Time(i,j,k));
                for j=1:n
                    Time=j-1;    
                end
        end
   end
end
