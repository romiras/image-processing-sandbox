I = imread('img/yvs3.jpg');
hsv = rgb2hsv(I);
[y,x,z]=size(hsv);
Hist=reshape(hsv,1,x*y,z);

% image(hsv2rgb(hsv))

for i = 1:x*y
  h = Hist(1,i,1);
  s = Hist(1,i,2);
  if (h > 0.1) && (h < 0.9) %&& (s < 0.8) %(h < 0.05) || 
  % if (h > 0.2) && (h < 0.68)
      Hist(1,i,2) = 0;
      Hist(1,i,3) = 0;
  end
end

I = hsv2rgb(reshape(Hist,y,x,z));
figure, image(I)
imwrite (I, 'data/yvs-mask.jpg')
