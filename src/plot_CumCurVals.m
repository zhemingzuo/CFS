% =============================================================
% Visualise the cumulative curvature values for each attribute
% -------------------------------------------------------------
% INPUT:
%   n_C         : number of columns (i.e. attributes)
%   cur_vals    : curvature values for each attribute
%   sum_cur_vals: the summation of curvature values
% -------------------------------------------------------------
% Author: Zheming Zuo
% Date  : 10 Jan 2021
% =============================================================
function plot_CumCurVals(n_C, cur_vals, sum_cur_vals, attr_names)

num_subfigs = length(attr_names);

figure

for i = 2 : (n_C-1)
    subplot(sqrt(num_subfigs), sqrt(num_subfigs), i-1)
    plot(cur_vals(:,i),'LineWidth', 2)
    legend_str = sprintf('Curvature values for %.dth attribute, accumulated:%0.4f',i-1, sum_cur_vals(i-1));
    grid on;
    xlim([1 size(cur_vals,1)]);
    title (legend_str);
end

end