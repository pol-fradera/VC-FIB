function [NDGout] = myfunction3(NDGin)
x = (NDGin - 0.02)/ 0.25;
NDGout = 1-exp(-x);
end