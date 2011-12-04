function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

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

% =============================================================

end
