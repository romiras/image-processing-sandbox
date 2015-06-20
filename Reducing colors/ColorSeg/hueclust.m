%% Clustering of Hue values

% load huedata
m=17;
% p=6; % number of color partitions we want separate
theta=Hue(:,:,1);
[yr,n]=size(theta);
d=1/m;
% Colors(:,:,3)=ones(1,m)*0.8; %V
% Colors(:,:,2)=ones(1,m)*0.8; %S
% Colors(:,:,1)=[d/2:d:d*m];    %H
[Q,xout]=hist(ceil(theta/d),m); % building histogram of  `m` color sectors in Hue circle

Q2=Q/norm(Q);
% Qk=cat(2,Q2',xout');

% figure,plot(Q2,'x-'),xlabel('sector')
figure,polar(xout*d*2*pi,Q2)

% figure
% subplot(2,1,1),bar(xout,Q2),title('Hue histogram')
% subplot(2,1,2),image(hsv2rgb(Colors)),axis auto

% figure,image(hsv2rgb(Hue))

% u=unique(theta);
% [Q,xout]=hist(ceil(u/d),m);
% figure,plot(Q/n,'x-'),xlabel('sector')
