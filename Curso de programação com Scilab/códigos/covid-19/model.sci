<<<<<<< HEAD
function Y=model(P, X)
    Y = P(3) * exp(-(X-P(1)).^2 / (2*P(2)*P(2))) + P(4)*X + P(5);
endfunction
=======
function Y=model(P, X)
    Y = P(3) * exp(-(X-P(1)).^2 / (2*P(2)*P(2))) + P(4)*X + P(5);
endfunction
>>>>>>> f5f0f79b5fe39324d4b435f3c4c4c7b89f108a8b
