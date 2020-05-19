function r=loss2(P, XY)
    r = XY(2,:) - model(P,XY(1,:))
endfunction
