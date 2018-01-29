clear;
clc;

%{

%Initialization
nb_exp_input='number of experiments:' ; 
nb_exp_value=input(nb_exp_input);
n=1;

% user input nb of measurements and start/end time
for n=1:nb_exp_value
    display=sprintf(' Measurement %d :\n', n);
    disp(display);
    start_time_hour_input='select start time hour:' ;
    start_time_minute_input='select start time minute:' ;
    end_time_hour_input='select end time hour:' ;
    end_time_minute_input='select end time minute:' ;
    start_time_hour_value(n) = input(start_time_hour_input);
    start_time_minute_value(n) = input(start_time_minute_input);
    end_time_hour_value(n) = input(end_time_hour_input);
    end_time_minute_value(n) = input(end_time_minute_input);
end

%}

%data import from Excel file
filename = '20171018.txt';
delimiterIn = ' ';
headerlinesIn = 1000;
A = importdata(filename,delimiterIn,headerlinesIn);

