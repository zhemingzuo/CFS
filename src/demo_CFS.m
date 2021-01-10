% ===================================================
% A demo for Curvature-based Feature Selection method
% ---------------------------------------------------
% Author: Zheming Zuo
% Date  : 10 Jan 2021
% ===================================================
clear all
clc

%% Load dataset and assign attribute names

% Load your dataset (see the following function for further instructions)
raw_data = do_DataLoading();

% Change values when you use dataset other than 'BTDS' (employed in our work)
attr_names = {'I0', 'PA500', 'HFS', 'DA', 'Area', 'A/DA', 'Max IP', 'DR', 'P'};

%% Normalise the raw data

% Use min-max normalisation method as default
norm_data = do_MinMaxNorm(raw_data);

%% Perform CFS

[n_R, n_C] = size(norm_data);
cur_vals = zeros(n_R, n_C);
cur_vals(:, 1)= norm_data(:, 1);
cur_vals(:, n_C) = norm_data(:, n_C);

% Calculate menger curvature
for i = 2 : (n_C-1)
    [cum_arc_len, cur_rad, cur_vec] = do_MengerCurvature([norm_data(:,1), norm_data(:,i)], i);
    cur_vals(:,i) = 1 ./ cur_rad;
end

% Feature ranking
[sum_cur_vals, idx_sorted] = do_FeatureRanking(cur_vals);
disp('The indexes of ranked features on BTDS (high to low):');
disp(idx_sorted);
disp('Feature importance ranking on BTDS (high to low):');
disp(attr_names(idx_sorted));

%% Feature ranking visualisation

% Visualise the accumulated curvature values for each attributes
plot_CumCurVals(n_C, cur_vals, sum_cur_vals,attr_names);

% Visualise the average curvature with corresponding attribute names (i.e. feature importance)
xlabel_text = 'Attribute names of Breast Tissue Data Set (BTDS)';
title_text = 'Feature importance ranking using average curvature value on BTDS';
plot_AvgCurVals(sum_cur_vals, n_R, attr_names, xlabel_text, title_text);