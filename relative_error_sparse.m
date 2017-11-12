function [re] = relative_error_sparse(X, X_approx)
%RELATIVE_ERROR_SPARSE Summary of this function goes here
%   Detailed explanation goes here
X_approx(X == 0) = 0;
re = relative_error(X, X_approx);
end

