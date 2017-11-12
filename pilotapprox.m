function [P, Q] = pilotapprox(A, k)
%PILOTAPPROX Summary of this function goes here
%   Detailed explanation goes here

[m, n] = size(A);

c_idxs = sort(randperm(n, k));
r_idxs = sort(randperm(m, k));
C = A(:, c_idxs);
R = A(r_idxs, :);
W = A(r_idxs, c_idxs);

[U, S, V] = sketching(C, R, W);
P = U * sqrt(S);
Q = V * sqrt(S);
% disp(P * Q');

csvwrite('d:/data/kddproj/P.txt', P);
csvwrite('d:/data/kddproj/Q.txt', Q);

end

