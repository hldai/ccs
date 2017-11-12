function [X_approx] = approx_with_bias(P, Q)
%APPROX_WITH_BIAS Summary of this function goes here
%   Detailed explanation goes here
[m, k] = size(P);
[n, k] = size(Q);
P_tmp = ones([m, k + 1]);
Q_tmp = ones([n, k + 1]);
P_tmp(:, 1:k) = P;
Q_tmp(:, 1:k - 1) = Q(:, 1:k - 1);
Q_tmp(:, k + 1) = Q(:, k);

% disp(P);
% disp(P_tmp);
% disp(Q);
% disp(Q_tmp);

X_approx = P_tmp * Q_tmp';
end

