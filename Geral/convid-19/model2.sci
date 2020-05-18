function y=model2(x, p)
    y = (p(1)*x + p(2)).*x + p(3)
    //y = (p(1)*x + p(2)) + 1/(1+exp(-x))*p(3)
endfunction
