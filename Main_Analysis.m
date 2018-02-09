clear;
clc;

%{
Main_analysis : Uses functions to analyze RCF raw data and get excess reactivity results 
calculated from power measurements(3 different power channels measurements)-
and thanks to the Inhour Equation for different conditions: core configuration,
moderator/test section temperature profile, static/dynamic experiment

Functions used are:

-user_input : user defines time and type of measurement for each day 

-data_import : raw data from excel files is imported and categorized in
 matlab arrays by experiment type

-Reactor_excess_reactivity: Calculates a single value of reactor period and
 reactivity, for static experiment and constant T° during the measurement time 

-AlphaT: regroups reactivity calculation from "Reactor_excess_reactivity" 
 function for same core configurations, calculates and plot alphaT for a 
 temperature range

-Moderator_temperature_feedback: Calculates the period and the reactivity 
 each second for a static water T° evolution (thermal equilibrium or water
 heating)

-Test_section_temperature_profile : Calculates a single value of reactor 
 period and excess reactivity, for experiments where the test section 
 temperature is not uniform. Different than "Reactor_excess_reactivity"
 function by adding a moderator temperature change coefficient, and giving
 an excess reactivity value for a range of temperatures instead of a single
 temperature value

-Dynamic_flowrate : Calculates the period and reactivity each second for a 
 dynamic evolution of the test section temperature profile. different than
 "moderator_temperature_feedback" by treating an evolution of the test 
 section temperature profile. Profiles are treated by "ramp_up" "ramp_down" and
 "Sinusoidal" functions

%}

%Analysis 

%User_input 
user_input()

%data importation and classification between experiment types
data_import()

%Reactor_excess_reactivity experiments
n=1
while n<nb_RER
    Reactor_excess_reactivity(n)
end    

%AlphaT experiments experiments
n=1
while n<nb_alphaT
    Reactor_excess_reactivity(n)
end    

%Moderator_temperature_feedback experiments
n=1
while n<nb_MTF
    Reactor_excess_reactivity(n)
end    

%Test_section_temperature_profile experiments
n=1
while n<nb_TST
    Reactor_excess_reactivity(n)
end    

%Dynamic_flowrate experiments
n=1
while n<nb_DF
    Reactor_excess_reactivity(n)
end    
