clc;
clear;
a = imread('test20.jpg');
L = 256;
a = imresize(a,[512 512]);
a = rgb2gray(a);
b = a;
a = im2double(a);
[m,n] = size(a);
pImg= zeros(m,n);
invImg= zeros(m,n);

g = input('value of gamma:');
c =1 ;
for i = 1:m
    for j =1:n
        pImg(i,j) = c*a(i,j)^g;
    end
end
 
log_I = uint8(log(double(b)+1) .* ((L - 1)/log(L)));
exp_I = uint8((exp(double(b)) .^ (log(L) / (L-1))) - 1);
subplot(2,2,1);
imshow(a);
title('originalImage');
subplot(2,2,2);
imshow(pImg);
title('powerlaWImage');
subplot(2,2,3);
imshow(log_I);
title(' LogImage');
subplot(2,2,4);
imshow(exp_I);
title('Inv Log Image');
