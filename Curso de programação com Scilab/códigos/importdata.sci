mode(0);
clear importdata; 
 
function [header, data] = importdata(filename) 
    header = mgetl(filename, 1); 
    header = csvTextScan(header, ",", ".", "string"); 
    data = csvRead(filename, ",", ".", "string", [], [], [], 1); 
endfunction
