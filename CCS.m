function [U, S, V] = CCS(A, k)
%CCS Summary of this function goes here
%   Detailed explanation goes here

[P, Q] = pilotapprox(A, k);
% re = relative_error(A, P * Q');
re = relative_error_sparse(A, P * Q');
fprintf("relative error after pilot: %f\n", re);

Ir = weighted_kmeans(P, k);
Ic = weighted_kmeans(Q, k);

% disp(Ir);
% disp(Ic);

C = A(:, Ic);
R = A(Ir, :);
W = A(Ir, Ic);

[U, S, V] = sketching(C, R, W);
% re = relative_error(A, U * S * V');
re = relative_error_sparse(A, U * S * V');
fprintf("relative error after CCS: %f\n", re);
end

