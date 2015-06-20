%% Color Segmentation

% Clustering by Hue component
clustHColors = zeros(1,Hclusters,3);
SegHue = Hue;

[idx,C] = kmeans(Hue(:,:,1)', Hclusters,'emptyaction','drop');%,'start','uniform'
% [idx,C] = kmeans(X,Hclusters);

for clustnum = 1:Hclusters
    cluster = find(idx == clustnum);
    f =fix((mean(cluster)));%     f =fix((max(cluster)+min(cluster))/2);

    fd=f-2:f+2;
    clustHColors(1,clustnum,1) = mean(Hue(:,fd,1));
    clustHColors(1,clustnum,2) = mean(Hue(:,fd,2));
    clustHColors(1,clustnum,3) = mean(Hue(:,fd,3));
%     clustHColors(1,clustnum,:) = Hue(:,f,:);
    SegHue(:,cluster,1) = clustHColors(1,clustnum,1)*ones(1,length(cluster),1);
    SegHue(:,cluster,2) = clustHColors(1,clustnum,2)*ones(1,length(cluster),1);
    SegHue(:,cluster,3) = clustHColors(1,clustnum,3)*ones(1,length(cluster),1);
end
