function [re] = relative_error(X, X_approx)
%RELATIVE_ERROR Summary of this function goes here
%   Detailed explanation goes here
err = norm(X - X_approx, 'fro');
re = err / norm(X, 'fro');
end

