function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
	##GRADIENTDESCENT Performs gradient descent to learn theta
	##   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
	##   taking num_iters gradient steps with learning rate alpha

	## Initialize some useful values
	J_history = zeros(num_iters, 1);
	m = length(y);

	for iter = 1:num_iters

		J_history(iter) = computeCost(X, y, theta);
		theta -= alpha * X' * (X * theta - y) / m;

	endfor

endfunction
