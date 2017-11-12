% rng(3711);

% X = randi([0, 1], [50, 50]);
% X = zeros(50, 50);
% r_idxs = randi(50, [1, 500]);
% c_idxs = randi(50, [1, 500]);
% idxs = unique(sub2ind(size(X), r_idxs, c_idxs));
% X(idxs) = 1;
% disp(idxs);

% disp(X);

load('d:/data/kddproj/TDT2_all.mat');
X = full(fea);
fprintf("data loaded.\n");

k = 50;

[U, S, V] = CCS(X, k);
