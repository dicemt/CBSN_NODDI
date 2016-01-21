cd 'C:\Users\username\matlab\amico'
clearvars, clearvars -global, clc
AMICO_Setup
AMICO_PrecomputeRotationMatrices();
AMICO_SetSubject( 'NoddiTutorial', 'Tutorial' );
CONFIG.dwiFilename    = fullfile( CONFIG.DATA_path, 'NODDI_DWI.hdr' );
CONFIG.maskFilename   = fullfile( CONFIG.DATA_path, 'brain_mask.hdr' );
schemeFilename = fullfile( CONFIG.DATA_path, 'NODDI_DWI.scheme' );
AMICO_fsl2scheme( fullfile( CONFIG.DATA_path, 'NODDI_protocol.bval' ),...
    fullfile( CONFIG.DATA_path, 'NODDI_protocol.bvec' ), schemeFilename);
CONFIG.schemeFilename = schemeFilename;
AMICO_LoadData
AMICO_SetModel( 'NODDI' );
AMICO_GenerateKernels( false );
AMICO_ResampleKernels();
AMICO_Fit()