clc;
close all;
image = imread('test20.jpg');
image = rgb2gray(image);
image = imresize(image,[512,512]);
subplot(2,2,1);
imshow(image);
title('input image');

image_noise=imnoise(image,'salt & pepper');
image_noise2=imnoise(image,'gaussian');
subplot(2,2,2);
imshow(image_noise);
title('noise image');

m=3;
n=3;

in = im2double(image_noise);
in2 = im2double(image_noise2);

sg=(m*n)./imfilter(1./(in+eps),ones(m,n),'replicate');
gg=(m*n)./imfilter(1./(in2+eps),ones(m,n),'replicate');


subplot(2,2,3);
imshow(sg);
title('harmonic mean for salt and pepper');
subplot(2,2,4);
imshow(gg);
title('harmonic mean for gaussian');
