function [d] = angdist(ang1,ang2)
d=abs(ang1-ang2);
if (d>pi)
    d=d-pi;
end
