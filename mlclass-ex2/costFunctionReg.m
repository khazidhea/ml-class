function [J, grad] = costFunctionReg(theta, X, y, lambda)
	%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
	%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
	%   theta as the parameter for regularized logistic regression and the
	%   gradient of the cost w.r.t. to the parameters. 

	% Initialize some useful values
	m = length(y); % number of training examples

	% You need to return the following variables correctly 
	J = 0;
	grad = zeros(size(theta));

	thetar = eye(length(theta));
	thetar(1, 1) = 0;
	thetar = thetar * theta;


	J = ( (-y)' * log(sigmoid(X * theta)) - (1 - y)' * log(1 - sigmoid(X * theta)) ) / m   +   thetar' *theta * lambda / (2*m);

	grad = (X' * (sigmoid(X * theta) - y)   +   thetar * lambda) / m;

end
