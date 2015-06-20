%% Color Segmentation


clusters = 8;
HueVal = [Hue Val];
values = [Hue(:,:,1) Val(:,:,3)];
[idx,C] = kmeans(values', clusters,'distance','sqEuclidean','emptyaction','drop');%,'start','uniform'

clustColors = zeros(1,clusters,3);

for clustnum = 1:clusters
    f = find(idx == clustnum);

    clustColors(1,clustnum,1) = mean(HueVal(:,f,1));  % mean of clustered Hue
    clustColors(1,clustnum,2) = mean(HueVal(:,f,2));  % mean of clustered Sat
    clustColors(1,clustnum,3) = mean(HueVal(:,f,3));  % mean of clustered Val
end

image(hsv2rgb(clustColors))

% clear clustnum C idx f
