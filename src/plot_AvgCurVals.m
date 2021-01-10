% =========================================================
% Visualise feature importance using the averge Curvature
% ---------------------------------------------------------
% INPUT:
%   sum_cur_vals: the summation of curvature values
%   n_R         : number of rows (i.e. instances)
%   attr_names  : attribute names of the BTDS dataset
%   xlabel_text : a string text display along the x-axis
%   title_text  : a string text of the figure
% ---------------------------------------------------------
% Author: Zheming Zuo
% Date  : 10 Jan 2021
% =========================================================
function plot_AvgCurVals(sum_cur_vals, n_R, attr_names, xlabel_text, title_text)

figure

avg_cur_vals = sum_cur_vals / (n_R-2);
bar(avg_cur_vals);
title('Averaged Curvature Value for Each Attribution using CFS');
xticklabels(attr_names);
xlabel(xlabel_text);
ylabel('Average Curvature Value');
title(title_text);
grid on;

end