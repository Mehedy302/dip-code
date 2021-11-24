clc;
clear;
A = imread('test20.jpg');
A = imresize(A,[512 512]);
A = rgb2gray(A);
mask = 224; %11100000 
[m,n] = size(A);
new = bitand(A,mask);
diff = imabsdiff(A,new);
subplot(2,2,1);
imshow(A);
title('originalImage');
subplot(2,2,2);
imshow(new);
title('last 3 msb image');
subplot(2,2,3);
imshow(diff);
title('processed');