% Mac NODDI - Multi-Core
addpath(genpath('/Users/username/matlab/NODDI_toolbox_v0.9'));
addpath(genpath('/Users/username/matlab/niftimatlib-1.2'));
cd '/Users/username/matlab/NODDI_example_dataset'
CreateROI('NODDI_DWI.hdr', 'brain_mask.hdr', 'NODDI_roi.mat');
protocol = FSL2Protocol('NODDI_protocol.bval', 'NODDI_protocol.bvec');
noddi = MakeModel('WatsonSHStickTortIsoV_B0');
batch_fitting('NODDI_roi.mat', protocol, noddi, 'FittedParams.mat', 2);
SaveParamsAsNIfTI('FittedParams.mat', 'NODDI_roi.mat', 'brain_mask.hdr', 'example');