X = rand(1000, 2) * 100;
% disp(X);
k = 4;
indices = weighted_kmeans(X, k);
