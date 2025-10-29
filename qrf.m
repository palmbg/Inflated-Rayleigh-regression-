function q = qrf(u,mu) % quantile function

    n = size(mu,1);
    q = zeros(1,n);

    alpha = (u-lambda)./(1-lambda);

    for i = 1:n

        if(alpha(1,i) < lambda(1,i))

            q(1,i) = 0;
        else

            q(1,i) = 2.*mu.*sqrt((-log(1-alpha))/pi);
        end
    end

    end 