function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
lengThe = length(theta);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    
    hypothesis = X * theta;
    error = (hypothesis - y);
    % errorMat = repmat(error, 1, lengThe);
    
    theta = theta - (alpha / m) * (X' * error);
    % ============================================================

    % Save the cost J in every iteration    
    J = computeCost(X, y, theta);
    % printf("%f\n" ,J);
    J_history(iter) = J;

end

end
