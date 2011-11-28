function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

A = zeros ([1, 64]);
B = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];

for i = 1:8
	for j = 1:8
		C = B(i);
		sigma = B(j);
		model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
		predict = svmPredict(model, Xval);
		A(8 * (i - 1) + j) = mean(double(predict ~= yval));
	end
end

[C,I] = min(A);
C = B(mod(I, 8) + 1);
sigma = B(rem (I, 8));



end