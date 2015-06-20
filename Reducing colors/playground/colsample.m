
% Generate (x,y) pair
% ceil(1+(y-1)*rand(1)) -- 1..y
% ceil(1+(x-1)*rand(1)) -- 1..x

A=zeros(6,8,3);
for i=1:6
    for j=1:8
        A(i, j, :) = HV(1, ceil(1+(x*y-1)*rand), :);
    end
end
figure,imshow(hsv2rgb(A))
