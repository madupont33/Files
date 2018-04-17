%User_input and data import

clear;
clc;



% nb of files
nb_files_value=1;
file_name=strings(1,nb_files_value);

%  nb of spreadsheets
for i=1:nb_files_value
    file_name(i)='All data 2017';
    nb_sheets_value(i)=11;
end

experiment_date_value(1,1)=062917;
experiment_date_value(1,2)=071817;
experiment_date_value(1,3)=071917;
experiment_date_value(1,4)=082817;
experiment_date_value(1,5)=101817;
experiment_date_value(1,6)=102017;
experiment_date_value(1,7)=102517;
experiment_date_value(1,8)=102717;
experiment_date_value(1,9)=111417;
experiment_date_value(1,10)=112217;
experiment_date_value(1,11)=121217;

nb_exp_value(1,1)=4;
nb_exp_value(1,2)=8;
nb_exp_value(1,3)=6;
nb_exp_value(1,4)=5;
nb_exp_value(1,5)=3;
nb_exp_value(1,6)=9;
nb_exp_value(1,7)=16;
nb_exp_value(1,8)=9;
nb_exp_value(1,9)=17;
nb_exp_value(1,10)=13;
nb_exp_value(1,11)=13;

% user inputs start/end row number and type of experiments
nb_RER=41;
nb_MTF=4;
nb_TST=43;
nb_DF=15;
nb_exp_tot=103;

experiment_type_value(1,1,1)=1;
experiment_type_value(1,1,2)=1;
experiment_type_value(1,1,3)=3;
experiment_type_value(1,1,4)=2;
experiment_type_value(1,2,1)=3;
experiment_type_value(1,2,2)=3;
experiment_type_value(1,2,3)=3;
experiment_type_value(1,2,4)=3;
experiment_type_value(1,2,5)=3;
experiment_type_value(1,2,6)=3;
experiment_type_value(1,2,7)=3;
experiment_type_value(1,2,8)=3;
experiment_type_value(1,3,1)=1;
experiment_type_value(1,3,2)=1;
experiment_type_value(1,3,3)=1;
experiment_type_value(1,3,4)=1;
experiment_type_value(1,3,5)=1;
experiment_type_value(1,3,6)=1;
experiment_type_value(1,4,1)=3;
experiment_type_value(1,4,2)=3;
experiment_type_value(1,4,3)=2;
experiment_type_value(1,4,4)=3;
experiment_type_value(1,4,5)=2;
experiment_type_value(1,5,1)=1;
experiment_type_value(1,5,2)=3;
experiment_type_value(1,5,3)=3;
experiment_type_value(1,6,1)=3;
experiment_type_value(1,6,2)=3;
experiment_type_value(1,6,3)=3;
experiment_type_value(1,6,4)=3;
experiment_type_value(1,6,5)=3;
experiment_type_value(1,6,6)=3;
experiment_type_value(1,6,7)=3;
experiment_type_value(1,6,8)=3;
experiment_type_value(1,6,9)=3;
experiment_type_value(1,7,1)=1;
experiment_type_value(1,7,2)=3;
experiment_type_value(1,7,3)=3;
experiment_type_value(1,7,4)=3;
experiment_type_value(1,7,5)=3;
experiment_type_value(1,7,6)=3;
experiment_type_value(1,7,7)=3;
experiment_type_value(1,7,8)=3;
experiment_type_value(1,7,9)=3;
experiment_type_value(1,7,10)=3;
experiment_type_value(1,7,11)=3;
experiment_type_value(1,7,12)=3;
experiment_type_value(1,7,13)=3;
experiment_type_value(1,7,14)=1;
experiment_type_value(1,7,15)=1;
experiment_type_value(1,7,16)=1;
experiment_type_value(1,8,1)=1;
experiment_type_value(1,8,2)=1;
experiment_type_value(1,8,3)=1;
experiment_type_value(1,8,4)=1;
experiment_type_value(1,8,5)=1;
experiment_type_value(1,8,6)=1;
experiment_type_value(1,8,7)=1;
experiment_type_value(1,8,8)=1;
experiment_type_value(1,8,9)=1;
experiment_type_value(1,9,1)=1;
experiment_type_value(1,9,2)=3;
experiment_type_value(1,9,3)=3;
experiment_type_value(1,9,4)=3;
experiment_type_value(1,9,5)=3;
experiment_type_value(1,9,6)=3;
experiment_type_value(1,9,7)=3;
experiment_type_value(1,9,8)=3;
experiment_type_value(1,9,9)=4;
experiment_type_value(1,9,10)=4;
experiment_type_value(1,9,11)=4;
experiment_type_value(1,9,12)=4;
experiment_type_value(1,9,13)=4;
experiment_type_value(1,9,14)=1;
experiment_type_value(1,9,15)=4;
experiment_type_value(1,9,16)=4;
experiment_type_value(1,9,17)=4;
experiment_type_value(1,10,1)=1;
experiment_type_value(1,10,2)=4;
experiment_type_value(1,10,3)=4;
experiment_type_value(1,10,4)=4;
experiment_type_value(1,10,5)=4;
experiment_type_value(1,10,6)=4;
experiment_type_value(1,10,7)=1;
experiment_type_value(1,10,8)=4;
experiment_type_value(1,10,9)=4;
experiment_type_value(1,10,10)=1;
experiment_type_value(1,10,11)=1;
experiment_type_value(1,10,12)=1;
experiment_type_value(1,10,13)=1;
experiment_type_value(1,11,1)=1;
experiment_type_value(1,11,2)=1;
experiment_type_value(1,11,3)=1;
experiment_type_value(1,11,4)=1;
experiment_type_value(1,11,5)=1;
experiment_type_value(1,11,6)=1;
experiment_type_value(1,11,7)=1;
experiment_type_value(1,11,8)=1;
experiment_type_value(1,11,9)=1;
experiment_type_value(1,11,10)=1;
experiment_type_value(1,11,11)=3;
experiment_type_value(1,11,12)=1;
experiment_type_value(1,11,13)=3;

experiment_core_value(1,1,1)=	407	;
experiment_core_value(1,1,2)=	407	;
experiment_core_value(1,1,3)=	408	;
experiment_core_value(1,1,4)=	408	;
experiment_core_value(1,2,1)=	408	;
experiment_core_value(1,2,2)=	408	;
experiment_core_value(1,2,3)=	408	;
experiment_core_value(1,2,4)=	408	;
experiment_core_value(1,2,5)=	408	;
experiment_core_value(1,2,6)=	408	;
experiment_core_value(1,2,7)=	408	;
experiment_core_value(1,2,8)=	408	;
experiment_core_value(1,3,1)=	408	;
experiment_core_value(1,3,2)=	408	;
experiment_core_value(1,3,3)=	408	;
experiment_core_value(1,3,4)=	408	;
experiment_core_value(1,3,5)=	408	;
experiment_core_value(1,3,6)=	408	;
experiment_core_value(1,4,1)=	408	;
experiment_core_value(1,4,2)=	408	;
experiment_core_value(1,4,3)=	408	;
experiment_core_value(1,4,4)=	408	;
experiment_core_value(1,4,5)=	408	;
experiment_core_value(1,5,1)=	408	;
experiment_core_value(1,5,2)=	408	;
experiment_core_value(1,5,3)=	408	;
experiment_core_value(1,6,1)=	408	;
experiment_core_value(1,6,2)=	408	;
experiment_core_value(1,6,3)=	408	;
experiment_core_value(1,6,4)=	408	;
experiment_core_value(1,6,5)=	408	;
experiment_core_value(1,6,6)=	408	;
experiment_core_value(1,6,7)=	408	;
experiment_core_value(1,6,8)=	408	;
experiment_core_value(1,6,9)=	408	;
experiment_core_value(1,7,1)=	408	;
experiment_core_value(1,7,2)=	408	;
experiment_core_value(1,7,3)=	408	;
experiment_core_value(1,7,4)=	408	;
experiment_core_value(1,7,5)=	408	;
experiment_core_value(1,7,6)=	408	;
experiment_core_value(1,7,7)=	408	;
experiment_core_value(1,7,8)=	408	;
experiment_core_value(1,7,9)=	408	;
experiment_core_value(1,7,10)=	408	;
experiment_core_value(1,7,11)=	408	;
experiment_core_value(1,7,12)=	408	;
experiment_core_value(1,7,13)=	408	;
experiment_core_value(1,7,14)=	408	;
experiment_core_value(1,7,15)=	407	;
experiment_core_value(1,7,16)=	408	;
experiment_core_value(1,8,1)=	408	;
experiment_core_value(1,8,2)=	408	;
experiment_core_value(1,8,3)=	408	;
experiment_core_value(1,8,4)=	408	;
experiment_core_value(1,8,5)=	408	;
experiment_core_value(1,8,6)=	408	;
experiment_core_value(1,8,7)=	408	;
experiment_core_value(1,8,8)=	408	;
experiment_core_value(1,8,9)=	408	;
experiment_core_value(1,9,1)=	408	;
experiment_core_value(1,9,2)=	408	;
experiment_core_value(1,9,3)=	408	;
experiment_core_value(1,9,4)=	408	;
experiment_core_value(1,9,5)=	408	;
experiment_core_value(1,9,6)=	408	;
experiment_core_value(1,9,7)=	408	;
experiment_core_value(1,9,8)=	408	;
experiment_core_value(1,9,9)=	408	;
experiment_core_value(1,9,10)=	408	;
experiment_core_value(1,9,11)=	408	;
experiment_core_value(1,9,12)=	408	;
experiment_core_value(1,9,13)=	408	;
experiment_core_value(1,9,14)=	408	;
experiment_core_value(1,9,15)=	408	;
experiment_core_value(1,9,16)=	408	;
experiment_core_value(1,9,17)=	408	;
experiment_core_value(1,10,1)=	408	;
experiment_core_value(1,10,2)=	408	;
experiment_core_value(1,10,3)=	408	;
experiment_core_value(1,10,4)=	408	;
experiment_core_value(1,10,5)=	408	;
experiment_core_value(1,10,6)=	408	;
experiment_core_value(1,10,7)=	408	;
experiment_core_value(1,10,8)=	408	;
experiment_core_value(1,10,9)=	408	;
experiment_core_value(1,10,10)=	408	;
experiment_core_value(1,10,11)=	408	;
experiment_core_value(1,10,12)=	408	;
experiment_core_value(1,10,13)=	408	;
experiment_core_value(1,11,1)=	408	;
experiment_core_value(1,11,2)=	408	;
experiment_core_value(1,11,3)=	408	;
experiment_core_value(1,11,4)=	408	;
experiment_core_value(1,11,5)=	408	;
experiment_core_value(1,11,6)=	408	;
experiment_core_value(1,11,7)=	408	;
experiment_core_value(1,11,8)=	408	;
experiment_core_value(1,11,9)=	408	;
experiment_core_value(1,11,10)=	408	;
experiment_core_value(1,11,11)=	408	;
experiment_core_value(1,11,12)=	408	;
experiment_core_value(1,11,13)=	408	;

start_time_value(1,1,1)=	8667	;
start_time_value(1,1,2)=	10968	;
start_time_value(1,1,3)=	18155	;
start_time_value(1,1,4)=	20450	;
start_time_value(1,2,1)=	8556	;
start_time_value(1,2,2)=	10020	;
start_time_value(1,2,3)=	10897	;
start_time_value(1,2,4)=	12015	;
start_time_value(1,2,5)=	13083	;
start_time_value(1,2,6)=	14239	;
start_time_value(1,2,7)=	15371	;
start_time_value(1,2,8)=	16830	;
start_time_value(1,3,1)=	1207	;
start_time_value(1,3,2)=	2124	;
start_time_value(1,3,3)=	3252	;
start_time_value(1,3,4)=	4185	;
start_time_value(1,3,5)=	5433	;
start_time_value(1,3,6)=	6480	;
start_time_value(1,4,1)=	1502	;
start_time_value(1,4,2)=	4339	;
start_time_value(1,4,3)=	4668	;
start_time_value(1,4,4)=	6352	;
start_time_value(1,4,5)=	6551	;
start_time_value(1,5,1)=	5558	;
start_time_value(1,5,2)=	5558	;
start_time_value(1,5,3)=	14066	;
start_time_value(1,6,1)=	4154	;
start_time_value(1,6,2)=	5000	;
start_time_value(1,6,3)=	6900	;
start_time_value(1,6,4)=	7590	;
start_time_value(1,6,5)=	9210	;
start_time_value(1,6,6)=	10060	;
start_time_value(1,6,7)=	11166	;
start_time_value(1,6,8)=	13980	;
start_time_value(1,6,9)=	14680	;
start_time_value(1,7,1)=	775	;
start_time_value(1,7,2)=	2500	;
start_time_value(1,7,3)=	3680	;
start_time_value(1,7,4)=	4820	;
start_time_value(1,7,5)=	6715	;
start_time_value(1,7,6)=	7500	;
start_time_value(1,7,7)=	7980	;
start_time_value(1,7,8)=	10235	;
start_time_value(1,7,9)=	10670	;
start_time_value(1,7,10)=	10894	;
start_time_value(1,7,11)=	12572	;
start_time_value(1,7,12)=	12920	;
start_time_value(1,7,13)=	13134	;
start_time_value(1,7,14)=	17241	;
start_time_value(1,7,15)=	19729	;
start_time_value(1,7,16)=	25797	;
start_time_value(1,8,1)=	816	;
start_time_value(1,8,2)=	2100	;
start_time_value(1,8,3)=	3277	;
start_time_value(1,8,4)=	4477	;
start_time_value(1,8,5)=	5646	;
start_time_value(1,8,6)=	6890	;
start_time_value(1,8,7)=	8044	;
start_time_value(1,8,8)=	9426	;
start_time_value(1,8,9)=	10540	;
start_time_value(1,9,1)=	1070	;
start_time_value(1,9,2)=	2610	;
start_time_value(1,9,3)=	3114	;
start_time_value(1,9,4)=	3477	;
start_time_value(1,9,5)=	7400	;
start_time_value(1,9,6)=	7511	;
start_time_value(1,9,7)=	7560	;
start_time_value(1,9,8)=	7605	;
start_time_value(1,9,9)=	8895	;
start_time_value(1,9,10)=	10796	;
start_time_value(1,9,11)=	12903	;
start_time_value(1,9,12)=	16169	;
start_time_value(1,9,13)=	17432	;
start_time_value(1,9,14)=	22276	;
start_time_value(1,9,15)=	23463	;
start_time_value(1,9,16)=	24531	;
start_time_value(1,9,17)=	25562	;
start_time_value(1,10,1)=	1106	;
start_time_value(1,10,2)=	2428	;
start_time_value(1,10,3)=	3805	;
start_time_value(1,10,4)=	5256	;
start_time_value(1,10,5)=	6402	;
start_time_value(1,10,6)=	7133	;
start_time_value(1,10,7)=	9199	;
start_time_value(1,10,8)=	11095	;
start_time_value(1,10,9)=	14208	;
start_time_value(1,10,10)=	15932	;
start_time_value(1,10,11)=	17291	;
start_time_value(1,10,12)=	18744	;
start_time_value(1,10,13)=	20584	;
start_time_value(1,11,1)=	1212	;
start_time_value(1,11,2)=	3807	;
start_time_value(1,11,3)=	6026	;
start_time_value(1,11,4)=	7960	;
start_time_value(1,11,5)=	9828	;
start_time_value(1,11,6)=	11857	;
start_time_value(1,11,7)=	14119	;
start_time_value(1,11,8)=	16230	;
start_time_value(1,11,9)=	18763	;
start_time_value(1,11,10)=	21024	;
start_time_value(1,11,11)=	21193	;
start_time_value(1,11,12)=	24414	;
start_time_value(1,11,13)=	24532	;

end_time_value(1,1,1)=		8828	;
end_time_value(1,1,2)=		11158	;
end_time_value(1,1,3)=		20400	;
end_time_value(1,1,4)=		21644	;
end_time_value(1,2,1)=		8729	;
end_time_value(1,2,2)=		10096	;
end_time_value(1,2,3)=		11060	;
end_time_value(1,2,4)=		12179	;
end_time_value(1,2,5)=		13255	;
end_time_value(1,2,6)=		14431	;
end_time_value(1,2,7)=		15581	;
end_time_value(1,2,8)=		19245	;
end_time_value(1,3,1)=		1326	;
end_time_value(1,3,2)=		2354	;
end_time_value(1,3,3)=		3367	;
end_time_value(1,3,4)=		4380	;
end_time_value(1,3,5)=		5618	;
end_time_value(1,3,6)=		6598	;
end_time_value(1,4,1)=		1895	;
end_time_value(1,4,2)=		4655	;
end_time_value(1,4,3)=		5535	;
end_time_value(1,4,4)=		6542	;
end_time_value(1,4,5)=		6910	;
end_time_value(1,5,1)=		5785	;
end_time_value(1,5,2)=		5785	;
end_time_value(1,5,3)=		14953	;
end_time_value(1,6,1)=		4645	;
end_time_value(1,6,2)=		5643	;
end_time_value(1,6,3)=		7379	;
end_time_value(1,6,4)=		8057	;
end_time_value(1,6,5)=		9510	;
end_time_value(1,6,6)=		10260	;
end_time_value(1,6,7)=		11437	;
end_time_value(1,6,8)=		14239	;
end_time_value(1,6,9)=		14927	;
end_time_value(1,7,1)=		875	;
end_time_value(1,7,2)=		3500	;
end_time_value(1,7,3)=		4650	;
end_time_value(1,7,4)=		5450	;
end_time_value(1,7,5)=		7335	;
end_time_value(1,7,6)=		7840	;
end_time_value(1,7,7)=		8230	;
end_time_value(1,7,8)=		10570	;
end_time_value(1,7,9)=		10845	;
end_time_value(1,7,10)=		11078	;
end_time_value(1,7,11)=		12896	;
end_time_value(1,7,12)=		13094	;
end_time_value(1,7,13)=		13357	;
end_time_value(1,7,14)=		17338	;
end_time_value(1,7,15)=		19982	;
end_time_value(1,7,16)=		26010	;
end_time_value(1,8,1)=		1077	;
end_time_value(1,8,2)=		2346	;
end_time_value(1,8,3)=		3518	;
end_time_value(1,8,4)=		4720	;
end_time_value(1,8,5)=		5876	;
end_time_value(1,8,6)=		7123	;
end_time_value(1,8,7)=		8266	;
end_time_value(1,8,8)=		9644	;
end_time_value(1,8,9)=		10759	;
end_time_value(1,9,1)=		1312	;
end_time_value(1,9,2)=		3026	;
end_time_value(1,9,3)=		3375	;
end_time_value(1,9,4)=		3789	;
end_time_value(1,9,5)=		7490	;
end_time_value(1,9,6)=		7549	;
end_time_value(1,9,7)=		7595	;
end_time_value(1,9,8)=		7687	;
end_time_value(1,9,9)=		9228	;
end_time_value(1,9,10)=		11197	;
end_time_value(1,9,11)=		13142	;
end_time_value(1,9,12)=		16456	;
end_time_value(1,9,13)=		17925	;
end_time_value(1,9,14)=		22555	;
end_time_value(1,9,15)=		23677	;
end_time_value(1,9,16)=		24845	;
end_time_value(1,9,17)=		25913	;
end_time_value(1,10,1)=		1424	;
end_time_value(1,10,2)=		2836	;
end_time_value(1,10,3)=		4382	;
end_time_value(1,10,4)=		5811	;
end_time_value(1,10,5)=		6876	;
end_time_value(1,10,6)=		7632	;
end_time_value(1,10,7)=		9592	;
end_time_value(1,10,8)=		11685	;
end_time_value(1,10,9)=		15151	;
end_time_value(1,10,10)=		16218	;
end_time_value(1,10,11)=		17567	;
end_time_value(1,10,12)=		19016	;
end_time_value(1,10,13)=		20846	;
end_time_value(1,11,1)=		1519	;
end_time_value(1,11,2)=		4053	;
end_time_value(1,11,3)=		6270	;
end_time_value(1,11,4)=		8219	;
end_time_value(1,11,5)=		10063	;
end_time_value(1,11,6)=		12107	;
end_time_value(1,11,7)=		14374	;
end_time_value(1,11,8)=		16480	;
end_time_value(1,11,9)=		19015	;
end_time_value(1,11,10)=		21095	;
end_time_value(1,11,11)=		21317	;
end_time_value(1,11,12)=		24480	;
end_time_value(1,11,13)=24959	;

%Time, power (3 channels) and temperatures/pressure import

%Execution timer
tic;

%Variables size declaration
Time{1,11,17}=zeros(1,11,17);
LP1{1,11,17}=zeros(1,11,17);
LP2{1,11,17}=zeros(1,11,17);
PP2{1,11,17}=zeros(1,11,17);
T_M1{1,11,17}=zeros(1,11,17);
T_M2{1,11,17}=zeros(1,11,17);
T_M3{1,11,17}=zeros(1,11,17);
T_TS1{1,11,17}=zeros(1,11,17);
T_TS2{1,11,17}=zeros(1,11,17);
T_TS3{1,11,17}=zeros(1,11,17);
T_TS4{1,11,17}=zeros(1,11,17);
P{1,11,17}=zeros(1,11,17);

%Excel data import
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
            %Output when 1 exp is imported
            fprintf(' Experiment %d of Spreadsheet %d import finished.\n', k,j);
        end
   end
end

%Output when all exp are imported
fprintf('Experiments import finished.\n');

%Re organization of database from X(i,j,k) == variable(file,sheet,exp_nb)
%to X_Y(i) == exp type_variable(exp_nb from type)

%Variables initialization
l=1;
m=1;
n=1;
o=1;

%Data re organization
fprintf('Data re organization is started.\n');
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
                RER_date(l)=experiment_date_value(i,j);
                RER_core(l)=experiment_core_value(i,j);
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
                MTF_date(m)=experiment_date_value(i,j);
                MTF_core(m)=experiment_core_value(i,j);
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
                TST_date(n)=experiment_date_value(i,j);
                TST_core(n)=experiment_core_value(i,j);
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
                DF_date(o)=experiment_date_value(i,j);
                DF_core(o)=experiment_core_value(i,j);
                o=o+1;                       
            end
        end
   end
end
%}

fprintf('Data re organization is finished.\n');

%Variable save separated by experiment type
if nb_RER>0
    save('RER-2017.mat','RER_Time','RER_LP1','RER_LP2','RER_PP2','RER_T_M1','RER_T_M2','RER_T_M3','RER_T_S1','RER_T_S2','RER_T_S3','RER_T_S4','RER_P','nb_RER','RER_date','RER_core')
end

if nb_MTF>0
    save('MTF-2017.mat','MTF_Time','MTF_LP1','MTF_LP2','MTF_PP2','MTF_T_M1','MTF_T_M2','MTF_T_M3','MTF_T_S1','MTF_T_S2','MTF_T_S3','MTF_T_S4','MTF_P','nb_MTF','MTF_date','MTF_core')
end

if nb_TST>0
    save('TST-2017.mat','TST_Time','TST_LP1','TST_LP2','TST_PP2','TST_T_M1','TST_T_M2','TST_T_M3','TST_T_S1','TST_T_S2','TST_T_S3','TST_T_S4','TST_P','nb_TST','TST_date','TST_core')
end

if nb_DF>0
    save('DF-2017.mat','DF_Time','DF_LP1','DF_LP2','DF_PP2','DF_T_M1','DF_T_M2','DF_T_M3','DF_T_S1','DF_T_S2','DF_T_S3','DF_T_S4','DF_P','nb_DF','DF_date','DF_core')
end

fprintf('.mat files are saved.\n');

%Execution timer ends
toc;
