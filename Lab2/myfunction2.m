function [NDGout] = myfunction2(NDGin)
NDGout = uint8(sqrt(double(NDGin-73))*16);
end