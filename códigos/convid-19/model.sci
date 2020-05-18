function Y=model(P, X)
    Y = P(3) * exp(-(X-P(1)).^2 / (2*P(2)*P(2))) + P(4)*X + P(5);
endfunction
