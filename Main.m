%% Information (Dual language: English - Bahasa Indonesia)
% The 1-D Bin Packing Problem Optimisation using Bees Algorithm
% If you use this code for your work, please cite:
% Hartono et al., 2022. The 1-D Bin Packing Problem Optimisation using Bees
% Algorithm, Journal Industrial Servicess 

% Jika Anda menggunakan kode ini untuk publikasi, sitasi:
% Hartono et al., 2022. The 1-D Bin Packing Problem Optimisation using Bees
% Algorithm, Journal Industrial Servicess

%% Abbreviation (Singkatan)
% BA = Bees Algorithm
% BPP = Bin Packing Problem

%% How to run experiment (Petunjuk menjalankan Eksperimen)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% click Run
% to use other BPP model, see the BPPModel.m
% Result will be saved as *.mat file with name: 
% Result{number of max iteration]nScoutBee{number of scout bees]
% Inside the mat file: Best(Position, Cost, Sol), ave_time, totaltime
% ave_time is average of time (in seconds)
% totaltime is total run time
% Number of bins in the current best known solution (BKS) is in the BPPModel, you
% can use this information to simulate the best parameter setting to find
% the minimum difference from BKS.

% klik Run
% Jika ingin menggunakan model BPP lainnya, buka file BPPModel.m
% Hasil akan berupa *.mat file dengan nama:
% Result{number of max iteration]nScoutBee{number of scout bees]
% Di dalamnya terdapat Best(Position, Cost, Sol), ave_time, totaltime
% Cara baca: BestSol terdapat nBin yang menunjukan jumlah bin dan B menunjukan isi di bin.
% ave_time adalah rata-rata waktu (dalam detik)
% totaltime adalah total waktu run
% Jumlah bin di Best Known Slution (BKS) ada di BPPModel. Anda bisa
% menggunakan informasi ini untuk mensimulasikan parameter setting terbaik
% untuk mendapatkan minimum selisih dari BKS. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
clc;
clear;
close all;

%% Problem Definition (Definisi masalah)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                 Don't change this (Jangan diubah)                           
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

model = BPPModel();                     % Create the model (membuat model)
CostFunction = @(x) BPPCost(x, model);  % Objective Function (fungsi tujuan)
nVar = 2*model.n-1;                     % Number of Decision Variables (jumlah variabel keputusan)
VarSize = [1 nVar];                     % Decision Variables Matrix Size (ukuran matrix variabel keputusan)

%% Run times
% The run time can be changed (Run time bisa diubah sesuai keinginan)
% In the paper, we use 10 runs (Kami gunakan 10 run di paper kami)

runtimes = 1; %10                          
                                                                       
%% Parameters setting 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The parameters can be changed.                                          
% Stopping Criteria. In the paper we use 3000 iteration.
% Recommendation for BA: n = 40, m = 20, e = 8, nsp = 10, and nep = 40          
% Constrain to change the parameter: (e) must be lower than (m)     

% Parameter boleh diubah
% Kriteria stop algoritma. Di artikel, kami gunakan 3000 iterasi. 
% Rekomendasi untuk BA: n = 40, m = 20, e = 8, nsp = 10, and nep = 40          
% Ketentuan (wajib): (e) harus lebih kecil dari (m)     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

MaxIt=1000;                             % stopping criteria

% Bees Algorithm parameter
nScoutBee = 40;                         % Number of Scout Bees (n)
nBestSite= 20;                          % Number of Best Sites (m)
nEliteSite= 8;                          % Number of Elite Sites(e) 
nBestSiteBee = 10;                      % Number of Recruited Bees for Best Sites (nsp)
nEliteSiteBee= 40;                      % Number of Recruited Bees for Elite Sites (nep)

%% Bees Algorithm
BA;
