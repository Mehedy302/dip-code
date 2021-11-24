clc;
close all;
image = imread('test20.jpg');
image = rgb2gray(image);
image = imresize(image,[512,512]);
subplot(3,2,1);
imshow(image);
title('input image');

image_noise=imnoise(image,'salt & pepper');
subplot(3,2,2);
imshow(image_noise);
title('noise image');

averagef = fspecial('average',[3,3]);
spatial_image = imfilter(image_noise,averagef);
subplot(3,2,3);
imshow(spatial_image);
title('after average partial filter by 3*3');

averagef = fspecial('average',[5,5]);
spatial_image = imfilter(image_noise,averagef);
subplot(3,2,4);
imshow(spatial_image);
title('after average partial filter by 5*5');

averagef = fspecial('average',[7,7]);
spatial_image = imfilter(image_noise,averagef);
subplot(3,2,5);
imshow(spatial_image);
title('after average partial filter by 7*7');