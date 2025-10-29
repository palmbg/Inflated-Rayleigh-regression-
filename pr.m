  function p = pr(y,lambda,mu) % cumulative function
  
  p0 = lambda;
  py = (1-lambda).*(1- exp((-pi.*(y.^2))./(4.*mu.^2)));
  p = p0 + py;
 
  end


