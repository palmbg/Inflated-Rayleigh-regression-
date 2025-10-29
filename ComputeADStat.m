function ADStat = ComputeADStat(z,n)
% Compute Anderson-Darling Statistic
% Sort the data and compute the statistic
z = reshape(z,[],1);
z = sort(z);
w = 2*(1:n) - 1;
x1 = (log(z)+ log(1-z(end:-1:1)))./n;
ADStat = -w*x1' - n;