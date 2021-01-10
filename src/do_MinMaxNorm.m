% ============================
% Simple Min-Max normalisation
% ----------------------------
% Author: Zheming Zuo
% Date  : 10 Jan 2021
% ============================
function [normalised_data] = do_MinMaxNorm(raw_data)

[n_R, n_C] = size (raw_data);
normalised_data = zeros (n_R, n_C);
normalised_data(:, 1) = raw_data(:, 1);
normalised_data(:, n_C) = raw_data(:, n_C);

for i = 2 : (n_C-1)
    normalised_data(:,i) = (raw_data(:,i) - min(raw_data(:,i))) ./ ((max(raw_data(:,i)) - min(raw_data(:,i))));
end

end