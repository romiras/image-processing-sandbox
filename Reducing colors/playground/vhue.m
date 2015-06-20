temp = Hue(:,:,1);
[y x] = size(temp);
% p = zeros(1,x);
p = zeros(1,x,3);
for i=1:x
    %p(i) = Hue(1,i,1) / Hue(1,i,2);  % Hue/Saturation ratio
    H = temp(i)*2*pi;
    p(1,i,1) = cos(H/2)^2;
    p(1,i,2) = cos(H/2-pi/3)^2;
    p(1,i,3) = cos(H/2-2*pi/3)^2;
end
% image(p)
image(temp .* (2*pi));

colormap(jet)