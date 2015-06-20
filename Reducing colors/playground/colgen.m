
A=zeros(6,8,3);
for i=1:6
    for j=1:8
        A(i, j, 1) = m;
        A(i, j, 2) = 0.7;
        A(i, j, 3) = 0.8;
    end
end
figure,imshow(hsv2rgb(A))
