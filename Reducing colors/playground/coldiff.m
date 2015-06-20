
B=zeros(30,40,3);
temp = A(2,4,:);
% temp(1,1,2)=0;
temp(1,1,1)=0.4;
for i=1:30
    for j=1:40
        B(i, j, :) = temp;
    end
end
figure,imshow(hsv2rgb(B))
