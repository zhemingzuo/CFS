% =========================================================
% Rank the calculated Menger Curvature
% ---------------------------------------------------------
% INPUT:
%   cur_vals: the calculated Menger curvature values
% ---------------------------------------------------------
% OUTPUT:
%   sum_cur_vals : the summation of curvature values
%   idx_sorted   : the sorted feature ranking (index)
% ---------------------------------------------------------
% Author: Zheming Zuo
% Date  : 10 Jan 2021
% =========================================================
function [sum_cur_vals, idx_sorted] = do_FeatureRanking(cur_vals)

cur_vals(isnan(cur_vals)) = 0;
sum_cur_vals = sum(cur_vals);
sum_cur_vals = sum_cur_vals(:, 2:size(cur_vals,2)-1);
[~, idx_sorted] = sort(sum_cur_vals,'descend');

end