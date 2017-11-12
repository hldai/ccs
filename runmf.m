% X_val = randi([0, 1], [5, 6]);
% disp(X_val);
% X = sparse(X_val);

X = fea;

k = 3;
lambda = 0.1;
num_iter = 5;

[m, n] = size(X);
fprintf("M: %d, N: %d\n", m, n);

[P, Q] = als(X, k, lambda, num_iter);
