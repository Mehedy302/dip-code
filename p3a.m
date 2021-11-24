clc;
close all;
image = imread('test20.jpg');
image = rgb2gray(image);
image = imresize(image,[512,512]);
subplot(2,2,1);
imshow(image);
title('input image');

image_noise=imnoise(image,'salt & pepper',0.02);
subplot(2,2,2);
imshow(image_noise);
title('noise image');

X = double(image);
Y = double(image_noise);
m = sum((X(:)-Y(:)).^2) / prod(size(X));
psnrr = 10*log10(255*255/m);
display("PSNR1 in DB");
display(psnrr);

median_image = medfilt2(image_noise,[3,3]);
subplot(2,2,3);
imshow(median_image);
title('after median image');

 X = double(image_noise);
Y = double(median_image);
m = sum((X(:)-Y(:)).^2) / prod(size(X));
psnrr = 10*log10(255*255/m);
display("PSNR2 in DB");
display(psnrr);

ppsnr=psnr(image_noise,median_image);
display(ppsnr);


averagef = fspecial('average',[5,5]);
spatial_image = imfilter(image_noise,averagef);
subplot(2,2,4);
imshow(spatial_image);
title('after average partial filter');


X = double(image_noise);
Y = double(spatial_image);
m = sum((X(:)-Y(:)).^2) / prod(size(X));
psnrr = 10*log10(255*255/m);
display("PSNR3 in DB");
display(psnrr);