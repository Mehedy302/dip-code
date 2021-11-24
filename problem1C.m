clear all;
clc;
img = imread('test20.jpg');
img = rgb2gray(img);
t = 150;
[m,n] = size(img);
%Img = zeros(m,n);
for  i= 1: m
    for j = 1: n
        if img(i,j)<=t
            Img(i,j) =0;
        else
         Img(i,j)=255;
        end
    end
end

subplot(2,2,1);
imshow(img);
title('originalImage');
subplot(2,2,2);
imhist(img);
title('histogram of  image');
subplot(2,2,3);
imshow(Img);
title('processed');
subplot(2,2,4);
imhist(Img);
title('histogram of  threshold image');
    
