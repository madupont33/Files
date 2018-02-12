clear;
clc;

% user inputs nb of files
nb_files_input='Number of files to analyze:';
nb_files_value=input(nb_files_input);
file_names=strings(1,nb_files_value);

% user inputs nb of spreadsheets
for i=1:nb_files_value
    fprintf(' File %d :\n', i);
    file_name_input='Name of file:';
    file_names(1,i)=input(file_name_input,'s');
    nb_sheets_input='Number of spreadsheets:';
    nb_sheets_value(i)=input(nb_sheets_input);
end

% user input nb of measurements file by file and spreadsheet by spreadsheet
for i=1:nb_files_value
    for j=1:nb_sheets_value(i)
        fprintf(' File %d :\n', i);
        fprintf(' Spreadsheet %d :\n', j); 
        nb_exp_input='Number of experiments:' ;
        nb_exp_value(i,j)=input(nb_exp_input);
    end
end

% user inputs start/end time and type of experiments
for i=1:nb_files_value
    for j=1:nb_sheets_value(i)
        for k=1:nb_exp_value(i,j)
            fprintf(' File %d :\n', i);
            fprintf(' Spreadsheet %d :\n', j);
            fprintf(' Experiment %d :\n', k);
            experiment_type_input='Select experiment type : \n Reactor excess reactivity(1)\n Moderator_temperature_feedback(2)\n Test_section_temperature_profile(3)\n Dynamic_flowrate (4)' ;
            experiment_types_value(i,j,k) = input(experiment_type_input);
            start_time_hour_input='Select start time row number:' ;
            start_time_hour_value(i,j,k) = input(start_time_hour_input);
            end_time_hour_input='Select end time row number:' ;
            end_time_hour_value(i,j,k) = input(end_time_hour_input);
        end
    end
end

%}



