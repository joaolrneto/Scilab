function e=loss1(p, Data)
    e = Data(2,:) - model2(Data(1,:), p);  // vertical distance
endfunction
