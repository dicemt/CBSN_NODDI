% MEX cannot find a supported compiler in MATLAB R2015b or earlier 
% after upgrading to Xcode 7
%__________________________________________________________________________
% 2016 Daisuke MATSUYOSHI

defdir = pwd;
disp('Applying a patch for Xcode 7...');
% Delete pre-existing xml settings
cd(prefdir);
xmlist = dir('*.xml');
xmlist = {xmlist.name};
flist = xmlist(~cellfun('isempty',regexp(xmlist,'^mex_(\w|\W)*xml$','match')));
if numel(flist) > 0
    delete(flist{:});
end

% Create new mexopts xml flies
cd(fullfile(matlabroot,'bin','maci64','mexopts'));
mkdir mexoptsContentsOLD
movefile *.xml mexoptsContentsOLD/
unzip('http://www.mathworks.com/matlabcentral/answers/uploaded_files/37858/xcode7_mexopts.zip', pwd)

cd(defdir);

disp('[ DONE ]');
