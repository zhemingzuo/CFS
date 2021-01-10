% =========================================================
% Calculate Menger Curvature
% ---------------------------------------------------------
% INPUT:
%   norm_data: Normalised data
% ---------------------------------------------------------
% OUTPUT:
%   cum_arc_len: Cumulative arc length
%   cur_rad    : Radius of curvature
%   cur_vec    : Curvature vector
% ---------------------------------------------------------
% Author: Zheming Zuo
% Date  : 10 Jan 2021
% =========================================================
function [cum_arc_len, cur_rad, cur_vec] = do_MengerCurvature(norm_data, var)

[n_R, n_C] = size(norm_data);

if n_C == 2
    norm_data = [norm_data, zeros(n_R,1)];  % Computing in 2-D space
end

cum_arc_len = zeros(n_R, 1);
cur_rad = NaN(n_R, 1);
cur_vec = NaN(n_R, 3);

% Calculate the Menger Curvature
[cum_arc_len, cur_rad, cur_vec] = do_Func(norm_data, cum_arc_len, cur_rad, cur_vec, var);

i = n_R;

cum_arc_len(i) = cum_arc_len(i-1) + norm(norm_data(i,:) - norm_data(i-1,:));
if n_C == 2
    cur_vec = cur_vec(:, 1:2);
end

end