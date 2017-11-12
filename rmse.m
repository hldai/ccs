function [rmse] = rmse(X, X_approx)
%RMSE Summary of this function goes here
%   Detailed explanation goes here
[m, n] = size(X);
rmse = norm(X - X_approx, 'fro') / m / n;
end
