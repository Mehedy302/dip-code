clear;
Img = imread('test20.jpg');
Img = rgb2gray(Img);
%[m, n] = size(Img);
Img = imresize(Img,[512 512]);

b = [ 1 2 3 4 5 6 7 8];

figure
for t = 1: length(b)
    d = 2^(t);
    img = round(Img/d);
    subplot(2, 4, t);
   
    imshow(img*d);
     title(['bit ', num2str(abs(t-9))]);
end
