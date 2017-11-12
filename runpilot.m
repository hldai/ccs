X = randi([0, 6], [5, 6]);
disp(X);
k = 3;

[P, Q] = pilotapprox(X, k);
disp(P * Q');

% [m, n] = size(X);
% 
% 
% c_idxs = sort(randperm(n, k));
% r_idxs = sort(randperm(m, k));
% C = X(:, c_idxs);
% R = X(r_idxs, :);
% W = X(r_idxs, c_idxs);
% 
% [U, S, V] = sketching(C, R, W);
% P = U * sqrt(S);
% Q = V * sqrt(S);
