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
xbar = mean(outcome)

% The standard deviation of our experiments is how much we would
% expect a given roll to differ from the mean, lets call this
% sdxbar
sdxbar = std(outcome)

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

mu = sum(1:20)/20

% Now, to find the theoretical standard deviation, we can use the
% handy formula: var = E[X^2] - E^2[X], again using the defintion
% of expectation and our derivation for mu = E[X] we obtain
% var = sum(x^2 f(x)) - (10.5)^2 where f(x) is the pmf for X
% ==> var = 1^2 * 1/20 + 2^2 * 1/20 + ... + 20^2 *1/20 - (10.5)^2
% ==> var = 1/20(1^2 + 2^2 + ... + 20^2) - 10.5^2
% Again, there is a derivation for the sum of the first n squares
% This is left as an exercise to the reader (:
% but for convenience, we can make MATLAB calculate this

var = sum((1:20).^2)/20 - 10.5^2;
sd = sqrt(var)

% This is a wonderful exercise, but often times, it
% may be easier in practice to recognize the distribution
% and look up the general formula for its variance
% By identifying that X follows a discrete uniform distribution
% from 1 to 20, we can use the following formula for variance
% var = [(b-a+1)^2 - 1]/12, which yields the same result!
% (using b=20, a=1)

%% Final Results

% From running this file we obtain:
% xbar = 10.1400, sdxbar = 5.7208

% This means, in an experiment with 100 trials, 
% the mean of all 100 samples was equal to 10.1400
% This is the sample mean, an estimator for mu, the population mean
% sdxbar = 5.7208 means that we would expect each dice roll
% to, on average, vary within about plus or minus 5.7208 from the mean
% of 10.14

% mu = 10.5, sd = 5.7663

% This means the theoretical mean is 10.5, that is to say,
% as N tends to infinity, the sample mean will approach 10.5.
% This is the true population mean for the average dice roll
% of a 20-sided die
% sd = 5.7663 is the population standard deviation, this means,
% we would expect a dice roll to vary within about plus or minus
% 5.7663 for all samples as N tends to infinity

% xbar != mu and sdxbar != sd because xbar is an estimate for mu
% and sdxbar is an estimate for sd

% Note: For a sample of N = 1, or a single dice roll
% xbar will be a random value from 1 to 20 and
% sdxbar will always be 0 because the only sample
% point is the mean, and that sample point varies
% 0 from the mean, thus sdxbar = 0

% Note: xbar and sdxbar will vary from random sample to random
% sample since they are dependent on those N values
% However, mu and sd are theoretically fixed and will never changed




    

