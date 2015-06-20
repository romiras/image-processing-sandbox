
hsv = rgb2hsv(I);

% SatMax = 1.0;   % 1.0 for double, 255 for uint8
% ValMax = 1.0;   % 1.0 for double, 255 for uint8

[x,y,z]=size(hsv);
Hist=reshape(hsv,1,x*y,z);
clear hsv;
histind=zeros(1,x*y);

hi = 0; % index from start of histind
vi = x*y+1; % index from end of histind

% Cluster color according to Hue, Saturation channels
for i = 1:x*y
  s = Hist(1,i,2);
  v = Hist(1,i,3);
%   ThSat = 1.0 - 0.8*s; %/SatMax;
  if (s < 0.18) || (v < 0.2) %|| (v > 0.92)
%   if (s > ThSat)
    vi = vi - 1;
    histind(vi) = i;
  else             % Hue
    hi = hi + 1;
    histind(hi) = i;
  end
end

hv=zeros(1,x*y,z);
hv(1,:,:)=Hist(1,histind(:),:); % Apply indices for clustering into h,v vectors
clear histind i ThSat Hist

[temp,ind] = sort(hv(:, 1:hi, 1));
Hue = hv(:, ind, :); % sorted values by Hue component

tempI=hv(1, vi:x*y, :);
[temp,ind] = sort(tempI(:,:,3));
Val = tempI(:, ind, :); % sorted values by Val component
clear tempI temp ind hv hi vi x y z
clear s v
