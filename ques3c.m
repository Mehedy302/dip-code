clc;
clear all;
a=imread('test20.jpg');
a = rgb2gray(a);
a = imnoise(a,'gaussian');
 
a=double(a);
 
 
[m n]=size(a);
 
 
for i=2:1:m-1
    for j=2:1:n-1
r(i,j)=(a(i-1,j-1)*a(i-1,j)*  a(i-1,j+1)* a(i,j-1)* a(i,j)*  a(i,j+1)*  a(i+1,j-1)*  a(i+1,j)*  a(i+1,j+1) )^(1/9) ;
    end
end
subplot(2,2,1)
imshow(uint8(a));
title('Original Image')
 
subplot(2,2,2)
imshow(uint8(r));
title('Geometric mean filtered Image ') 


for i=2:1:m-1
    for j=2:1:n-1
r(i,j)=9/( (1/a(i-1,j-1))+(1/a(i-1,j))+  (1/a(i-1,j+1))+(1/a(i,j-1))+( 1/a(i,j))+  (1/a(i,j+1))+ (1/ a(i+1,j-1))+ (1/a(i+1,j))+(1/ a(i+1,j+1)) ) ;
    end
end
 
subplot(2,2,3)
imshow(uint8(r));
title('Harmonic mean filtered Image ') 