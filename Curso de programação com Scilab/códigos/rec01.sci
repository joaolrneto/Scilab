function rec01(fx,x,denominador)
    if denominador == x then 
        fx=return(fx)
    end
    ((x^denominador)/(denominador))+rec01(fx,x,denominador+1)
endfunction
