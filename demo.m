n = 500;

vgamma = [-0.5,-1];
vbeta = [1,-2];

intercept = ones(n,1);

z = rand(n,1);
x = rand(n,1);

Z = [intercept z];
X = [intercept x];

eta1 = Z * vgamma';
eta2 = X * vbeta';

lambda = exp(eta1)./(1+exp(eta1));
mu = exp(eta2);

y = rr(n,mu,lambda);

rrfit(z,x,y)

