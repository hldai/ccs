function [P, Q] = als(X, k, lambda, num_iter)
%ALS_ Summary of this function goes here
%   Detailed explanation goes here
[m, n] = size(X);

X_t = X';

P = rand(m, k);
Q = rand(n, k);

lambda_eye = lambda * eye(k);
lambda_eye(k, k) = 0;
% disp(lambda_eye);

X_approx = approx_with_bias(P, Q);
% rmse_val = rmse(X, X_approx);
% fprintf("RMSE: %f\n", rmse_val);
re_val = relative_error(X, X_approx);
fprintf("RE: %f\n", re_val);

for i = 1:num_iter
    [P, Q] = update_latent(X, P, Q, lambda_eye);
    [Q, P] = update_latent(X_t, Q, P, lambda_eye);
    
    X_approx = approx_with_bias(P, Q);
    % rmse_val = rmse(X, X_approx);
    % fprintf("RMSE: %f\n", rmse_val);
    re_val = relative_error(X, X_approx);
    fprintf("RE: %f\n", re_val);
end

end

