function [J, grad] = costFunction(theta, X, y)
	%COSTFUNCTION Compute cost and gradient for logistic regression
	%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
	%   parameter for logistic regression and the gradient of the cost
	%   w.r.t. to the parameters.

	% Initialize some useful values
	m = length(y); % number of training examples

	grad = zeros(size(theta));

	J = ( (-y)' * log(sigmoid(X * theta)) - (1 - y)' * log(1 - sigmoid(X * theta)) ) / m;

	grad = X' * (sigmoid(X * theta) - y) / m;

end
