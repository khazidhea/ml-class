function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% Iterate over all points
for i = 1:size(X, 1)
	% Assume minimal distance to be very large initially
	min = 999999999;
	% Iterate over all the centroids
	for k = 1:K
		% Calculate square distance
		diff = centroids(k, :) - X(i, :);
		sqrd = diff * diff';
		if (sqrd < min)
			% Update minimum and set the value of current closest centroid
			min = sqrd;
			idx(i) = k;
		end
	end
end
