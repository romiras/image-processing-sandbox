function [I] = imreshape (Q, ratio)

[xi,yi,zi] = size(Q);  % size of source image Q
[newy,newx] = matrixsize(xi*yi, ratio);
newQ = zeros(1,newy*newx,zi);
newQ(1, 1:xi*yi, :) = Q(1, 1:xi*yi, :);  % copying first xi*yi values of Q to newQ
I = reshape(newQ,newx,newy,zi);
