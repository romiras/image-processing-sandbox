I = imread('img/parrot.jpg');

% % Desired number of clusters (set manually!)
Hclusters = 3;
Vclusters = 2;

% % Retrieve a histogram of Hue and Value
histogram

figure
subplot(2,1,1),image(hsv2rgb(Hue))
subplot(2,1,2),image(hsv2rgb(Val))

% % Segmentation of Hue colors
colsegh

figure
subplot(4,1,1),image(hsv2rgb(Hue))
subplot(4,1,2),plot(Hue(:,:,1))
subplot(4,1,3),plot(idx,'.')
subplot(4,1,4),image(hsv2rgb(SegHue)) % image(hsv2rgb(clustHColors))

% clear clustnum C idx f cluster Hclusters SegHue %Hue

% % Segmentation of Value colors
colsegv

subplot(2,1,1),image(hsv2rgb(Val))
subplot(2,1,2),image(hsv2rgb(SegVal)) % image(hsv2rgb(clustVColors))

% clear clustnum C idx f cluster Vclusters %Val

% % Save image palette to file and show results
showseg
