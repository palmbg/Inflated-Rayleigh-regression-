function p = pr1(y, mu) % cumulative function

n = max(size(y));
xx = sum(sum(y==0));
lambda = xx./n;
y2 = [];
for i = 1:n
    if(y(1,i) ~= 0)
        y2 = [y2 y(1,i)];

    end
end

p11 = 1- exp((-pi.*(y2.^2))./(4.*mu.^2));

p = [lambda.*xx  (1-lambda)*p11];


end