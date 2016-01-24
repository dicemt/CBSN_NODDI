%
% Initialization for AMICO
%
% CBSN Tutorial
% 2016 Daisuke MATSUYOSHI
%
% Please replace 'username' to yours

global AMICO_code_path AMICO_data_path CAMINO_path CONFIG
global niiSIGNAL niiMASK
global KERNELS bMATRIX

% Path definition: adapt these to your needs
% ==========================================
AMICO_code_path = '/Users/username/matlab/amico';
AMICO_data_path = '/Users/username/matlab/AMICO_Data';
CAMINO_path     = '/Users/username/camino';
NODDI_path      = '/Users/username/matlab/NODDI_toolbox_v0.9';
SPAMS_path      = '/Users/username/matlab/spams';

if ~isdeployed
    addpath( genpath(NODDI_path) )
    addpath( fullfile(SPAMS_path,'build') )
    addpath( fullfile(AMICO_code_path,'kernels') )
    addpath( fullfile(AMICO_code_path,'models') )
    addpath( fullfile(AMICO_code_path,'optimization') )
    addpath( fullfile(AMICO_code_path,'other') )
    addpath( fullfile(AMICO_code_path,'vendor','NIFTI') )
end
