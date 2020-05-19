<<<<<<< HEAD
mode(0);
clear importdata; 
 
function [header, data] = importdata(filename) 
    header = mgetl(filename, 1); 
    header = csvTextScan(header, ",", ".", "string"); 
    data = csvRead(filename, ",", ".", "string", [], [], [], 1); 
endfunction
=======
mode(0);
clear importdata; 
 
function [header, data] = importdata(filename) 
    header = mgetl(filename, 1); 
    header = csvTextScan(header, ",", ".", "string"); 
    data = csvRead(filename, ",", ".", "string", [], [], [], 1); 
endfunction
>>>>>>> f5f0f79b5fe39324d4b435f3c4c4c7b89f108a8b
