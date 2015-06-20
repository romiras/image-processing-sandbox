
hsvmap = hsv2rgb([clustHColors clustVColors]);
% [y x z] = size(hsvmap);
% cmap = zeros (x,3);
% 
% for i=1:x
%     for c=1:3
%         cmap(i,c) = hsvmap(1,i,c);
%     end
% end

imwrite(hsvmap,'data/hsvmap.png')
% clear clustHColors clustVColors hsvmap