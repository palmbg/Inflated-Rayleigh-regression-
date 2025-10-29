%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% PROGRAM: Auxiliary functions
%
% AUTHORS: Bruna Gregory Palm, Fabio Mariano Bayer and Renato J. Cintra
%
% DATE: 04/2018
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    function y = rr(mu) % metodo da inversao
        
    n = size(mu);
    u = rand(1,n(1,2));
    y = 2.*mu.*sqrt(-log(1-u)/pi); % metodo da inversao
        
    end 
    
    function q = qr(alpha) % quantile function
    
    mu = 1;
    q = 2.*mu.*sqrt((-log(1-alpha))/pi);

    end 
  
   function d = dr(x) % density function
  
   mu = 1;
   d = pi.*x/(2.*mu^2).*exp(-(pi.*x^2)/(4.*mu^2));
  
   end 
  
  function p = pr(x) % cumulative function
  
  mu = 1;
  p = 1- exp((-pi.*x^2)/(4.*mu^2));
 
  end
  
end
  
