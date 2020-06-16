function fx=rec_01(x,denominador)
    if denominador == x then 
        return fx
    end
    fx=((x^denominador)/(denominador))+rec_01(x,denominador+1)
endfunction
