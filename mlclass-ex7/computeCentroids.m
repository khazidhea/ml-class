function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

% Iterate over all centroids
for k = 1:size(X, 1)
	% m shows how many examples that are assigned to centroid k
	% s is sum of examples that are assigned to centroid k
	m = 0;
	s = zeros(1, n);
	for i = 1:size(X, 1)
		if (idx(i) == k)
			m += 1;
			s += X(i, :);
		end
	end
	if (m != 0)
		centroids(k, :) = s ./ m;
	end
end

% =============================================================


end

