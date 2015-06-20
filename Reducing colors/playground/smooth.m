
%Nh = size(hh)(:,2); % size of Hue
%Nv = size(vv)(:,2); % size of Intensity

% Hist_w(j)=\sum_{i=j-N}^{i=j+N}{w(i-j) Hist[i]} ;  w(i-j)=2^{-|i-j|}

% Input parameters
Nw       = 4; % Size of smoothing window
MultFctr = 8;
DivFctr  = 16;

Nh = ceil (2 * pi * MultFctr) + 1;
Nv = ceil (ValMax / DivFctr) + 1;
NN = Nh+Nv-1;

for j = 0 : NN
    sum = 0;
    for i = j-Nw : j+Nw
	 if (i < 0)
         k = mod(abs(i), NN); % shift right for Hue
     elseif (i > NN)
         k = NN + 1 - mod(abs(i), NN);   % shift left for Value
     else
         k = i;
     end
     disp(sprintf('j=%d, i=%d, k=%d', j, i, k));
     sum = sum + 2^(-abs(i-j)) * Hist(k+1);
    end
    Histw(j+1) = sum;
end