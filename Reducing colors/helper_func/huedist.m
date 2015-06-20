%% Distribution of chroma

% Input:
% * hsv - HSV image, X x Y x 3
% Output:
% * rho - chroma, saturation
% * theta - hue
function [rho, theta] = huedist(hsv)

theta = hsv(:,:,1);
rho = hsv(:,:,2);
