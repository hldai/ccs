function [U, S, V] = sketching(C, R, W)
%SKETCHING Summary of this function goes here
%   Detailed explanation goes here

[Uw, Sw, Vw] = svd(W);
CV = C * Vw;
UR = Uw' * R;
Nc = diag(1 ./ vecnorm(CV));
Nr = diag(1 ./ vecnorm(UR'));

% disp(CV);
% disp(Nc);
% disp(UR);
% disp(Nr);

U = CV * Nc;
V = (Nr * UR)';

[m, ~] = size(C);
[k, n] = size(R);
scale_val = sqrt(m * n / k / k);
S = Sw * scale_val;

end

