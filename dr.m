function d = dr(x,mu,lambda) % density function

n1 = size(x);
n = n1(1,2);

        f0 = zeros(n,1);
        f1 = zeros(n,1);

        for i = 1:n


            if(y(i,1)==0)

                f0(i,1) = lambda(i,1);
                f1(i,1) = 0;
            else
                f0(i,1) = 0;
                f1(i,1) = (1-lambda(i,1)).*log(pi/2)+log(y(i,1))-log(mu(i,1).^2)-(pi.*y(i,1).^2)./(4.*(mu(i,1).^2));
            end
 

        end

 d = f1 + f2;


end



