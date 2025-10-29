function y = rr(n,mu,lambda) % metodo da inversao

u = rand(n,1);

y = zeros(n,1);

for i = 1:n

    if(u(i,1) <= lambda(i,1))

        y(i,1) = 0;

    end

    if(u(i,1) > lambda(i,1))

        alpha = (u(i,1)-lambda(i,1))./(1-lambda(i,1));

        y(i,1) =  sqrt(-4.*(mu(i,1).^2).*log(1-alpha)/pi);
    end
end



end


