function [P, Q] = update_latent(X, P, Q, lambda_eye)
%UPDATE_LATENT Summary of this function goes here
%   Detailed explanation goes here
[m, k] = size(P);

bias = Q(:, k)';
Q_tmp = Q;
Q_tmp(:, k) = 1;
% disp(Q);
% disp(Q_tmp);

QQ = Q_tmp' * Q_tmp;
% disp(QQ);
for i = 1:m
    row_vec = full(X(i, :));
    nz_indices = find(X(i, :));
    Q_pos = Q_tmp(nz_indices, :);
    QWQ = QQ + Q_pos' * Q_pos;
    pu = (row_vec - bias) * Q_tmp * inv(QWQ + lambda_eye)';
    P(i, :) = pu;
%     disp(P);
end

end

