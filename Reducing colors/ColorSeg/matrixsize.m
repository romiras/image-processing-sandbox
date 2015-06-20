function [h,w] = matrixsize (Nc, ratio)
%
%   {x * y = Nc;
%    x = ratio * y;}
%
y = sqrt (double(Nc) / ratio);
x = y * ratio;

w = ceil (x);
h = ceil (y);
