I = imread('test-5.jpg'); 
 
subplot(2, 2, 1),  
imshow(I); 
title('Original image'); 
  
% Dilated Image 
se = strel('rectangle',[5,5]);
erode = imerode(I, se); 
output = I-erode;
subplot(2, 2, 2),  
imshow(output); 
title('Boundary of the image'); 
