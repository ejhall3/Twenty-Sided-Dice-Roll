%% 20 Sided-Die

% Let X count the outcomes of rolling a 20-sided die
% That is, X follows a discrete uniform distribution
% X ~ unif{1,20}
% Thus the pmf of X, P(X = x) = 1/(20-1+1) = 1/20

% Using randi(20) in MATLAB we can generate a random integer
% that follows the discrete uniorm distrubtion we desire!

% Now we can calculate the experimental probability of the average
% dice roll by running the experiment 100 times

N = 100;

outcome = randi(20, 1, N); % creates 1xN vector of random ints between 1 and 20

% By taking the mean of outcome, we have the experimental average dice
% roll, lets call this xbar
xbar = mean(outcome);

% The standard deviation of our experiments is how much we would
% expect a given roll to differ from the mean, lets call this
% sdxbar
sdxbar = std(outcome);

% Now we can calculate the theoretical mean, or the expectation, or mu
% This is essentially the mean as N tends to infinity

% Given the pmf for our rv X, and given the definition of expectation
% We know mu = 1*1/20 + 2*1/20 + ... + 20*1/120
% ==> mu = 1/20(1 + 2 + ... + 20)
% Using Gauss' equation for the sum of the first n integers
% 1 + 2 + ... + 20 = 20(20+1)/2 
% Subbing this back into our equation we obtain
% mu = 1/20 * (20*(21)/2) = 21/2 = 10.5
% Using code, we could write this as:

mu = sum(1:20)/20;

% Now, to find the theoretical standard deviation, we can use the
% handy formula: sd = E[X^2] - E^2[X], again using the defintion
% of expectation and our derivation for mu = E[X] as earlier we obtain
% sd = sum(x^2 f(x)) - (10.5)^2 where f(x) is the pmf for X
% ==> sd = 1^2 * 1/20 + 2^2 * 1/20 + ... + 20^2 *1/20 - (10.5)^2
% ==> sd = 1/20(1^2 + 2^2 + ... + 20^2) - 10.5^2
% Again, there is a derivation for the sum of the first n squares
% but for convenience, we can make MATLAB calculate this

sd = sum((1:20).^2)/20 - 10.5^2




    
