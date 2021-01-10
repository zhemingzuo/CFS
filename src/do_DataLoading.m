% ============================================================
% Load the dataset specified by user
% ------------------------------------------------------------
% INPUT:
%   no input parameter is required
% ------------------------------------------------------------
% OUTPUT:
%   raw_data: a m-by-n matrix in which
%             first column is the index of each data record
%             last column is the record-wise class label
% ------------------------------------------------------------
% NOTICE:
%   1. We support merely the .csv and .mat data formats
%      (example dataset files are located in '$CFS_ROOT/data'
%   2. Make sure your dataset file is organised in accordance
%      with the above 'OUTPUT' descriptions
%   3. Our CFS is a filter-based feature selection method thus
%      the class label is not used in the algorithm execution
% ------------------------------------------------------------
% Author: Zheming Zuo
% Date  : 10 Jan 2021
% ============================================================
function [raw_data] = do_DataLoading()

[file, path] = uigetfile({'*.csv'; '*.mat'; '*.*'},'Select your dataset in either .csv or .mat format');
file_name = strcat(path,file);
[~, ~, file_ext] = fileparts(file_name);

switch lower(file_ext)
    case '.csv'
        raw_data = readmatrix(file_name);
    case '.mat'
        raw_data = importdata(file_name);
    otherwise
        error('Oops, unsupported file format!');
end

end