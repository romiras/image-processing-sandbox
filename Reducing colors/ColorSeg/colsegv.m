%% Color Segmentation

% Clustering by Val component
clustVColors = zeros(1,Vclusters,3);
SegVal = Val;

% [idx,C] = kmeans(Val(:,:,3)', Vclusters,'start','uniform','emptyaction','drop');
% 
% for clustnum = 1:Vclusters
%     cluster = find(idx == clustnum);
%     f =fix( (max(cluster)+min(cluster))/2);
% 
%     clustVColors(1,clustnum,1) = 0;           % mean of clustered Hue
%     clustVColors(1,clustnum,2) = 0;           % mean of clustered Sat
%     clustVColors(1,clustnum,3) = Val(:,f,3);           % mean of clustered Val
%     SegVal(:,cluster,1) = clustVColors(1,clustnum,1)*ones(1,length(cluster),1);
%     SegVal(:,cluster,2) = clustVColors(1,clustnum,2)*ones(1,length(cluster),1);
%     SegVal(:,cluster,3) = clustVColors(1,clustnum,3)*ones(1,length(cluster),1);
% end

m1=min(Val(:,:,3));
m2=max(Val(:,:,3));
vlen = length(Val(:,:,3));
vals=m1:(m2-m1)/(Vclusters-1):m2; % uniformly distributed values
for clustnum = 1:Vclusters
    valrange = fix(vlen*(clustnum-1)/Vclusters)+1:fix(vlen*clustnum/Vclusters)+1; %uniform distribution of values
    clustVColors(1,clustnum,1) = 0;           % mean of clustered Hue
    clustVColors(1,clustnum,2) = 0;           % mean of clustered Sat
    clustVColors(1,clustnum,3) = vals(clustnum);           % mean of clustered Val
    SegVal(:,valrange,1) = clustVColors(1,clustnum,1)*ones(1,length(valrange),1);
    SegVal(:,valrange,2) = clustVColors(1,clustnum,2)*ones(1,length(valrange),1);
    SegVal(:,valrange,3) = clustVColors(1,clustnum,3)*ones(1,length(valrange),1);
end
