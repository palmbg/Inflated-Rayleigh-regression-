function ll = logliknull(y)
ll = @loglik;

    function [yy] = loglik(theta)

        gama = theta(1,1);
        beta = theta(1,2);
       
        lambda = gama;
        mu = beta;

        n = size(y,1);

        l1 = zeros(n,1);
        l2 = zeros(n,1);

        for i = 1:n


            if(y(i,1)==0)

                l1(i,1) = log(lambda);               
            else
                l1(i,1) = log(1-lambda);
                l2(i,1) = log(pi/2)+log(y(i,1))-log(mu.^2)-(pi.*y(i,1).^2)./(4.*(mu.^2));
            end


        end

        yy = double(sum(sum(-(l1+l2))));

       

    end

end