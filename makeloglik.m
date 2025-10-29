function ll = makeloglik(x1,x2,y)
ll = @loglik;

    function [yy, J] = loglik(theta)

        m = size(x1,2);

        gamma = theta(1,1:m);
        beta = theta(1,m+1:size(theta,2));

        lambda = exp(x1*gamma')./(1+exp(x1*gamma'));
        mu = exp(x2*beta');

        n = size(y,1);

        l1 = zeros(n,1);
        l2 = zeros(n,1);
        a = zeros(n,1);
        c = zeros(n,1);

        for i = 1:n

            if(y(i,1)==0)

                l1(i,1) = log(lambda(i,1));
                a(i,1) = 1./lambda(i,1);
                c(i,1) = 0;
            else
                l1(i,1) = log(1-lambda(i,1));
                l2(i,1) = log(pi/2)+log(y(i,1))-log(mu(i,1).^2)-(pi.*y(i,1).^2)./(4.*(mu(i,1).^2));
                a(i,1) = (-1)./(1-lambda(i,1));
                c(i,1) = ((pi.*(y(i,1).^2))./(2.*(mu(i,1).^3))-(2)./(mu(i,1)));
            end
 

        end


        yy = double(sum(sum(-(l1+l2))));

        T1 = 1./(lambda.*(1-lambda));
        %T1 = -1./log(lambda);
        %T2 = 1./mu;

        %a2 = ((pi.*(y.^2))./(2.*(mu.^3))-(2)./(mu));

        J1 = -(x1' * diag(1./T1) * a)';

        J2= -(x2' * diag(mu) * c)';

        %[yy J1 J2]

        J = double([J1 J2]);

    end

end