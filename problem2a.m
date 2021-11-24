clear;
clc;
Img = imread('test20.jpg');
Img = rgb2gray(Img);
Img = imresize(Img,[512 512]);

[m, n] = size(Img);
prompt = 'What is the intensity value? ';
inten = input(prompt);
prompt = 'What is the range? ';
x = input(prompt);
y = input('');
ImgB=Img;
figure
for i=1:m
    for j=1:n
        %ImgB(i,j)=Img(i,j)+inten;
        if Img(i,j)>=x & Img(i,j)<=y
            ImgB(i,j)=Img(i,j)+inten;
        end
    end
end
#Normalization
tem_image = ImgB - min(ImgB(:));
output_img = double(tem_image)./double(max(tem_image(:)));
subplot(2,1,1);
imshow(Img);
title('Orginal')
subplot(2,1,2);
imshow(output_img);
title('Bright');
