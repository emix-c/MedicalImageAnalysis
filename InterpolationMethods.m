low = imread('/Users/Emix/Downloads/brainL.jpg'); 
high = imread('/Users/Emix/Downloads/brainH .jpeg'); 

%resize low to 256 x 256 

%nearest neighbor 

via_nn = imresize(low, [256,256], Method ='nearest'); 
figure; 
imshow(via_nn); 


%bilinear 
bilinear= imresize(low, [256,256], Method ='bilinear'); 
figure; 
imshow(bilinear); 

%bicubic 

bicubic= imresize(low, [256,256]); 
figure; 
imshow(bicubic); 


%Bicubic and bilinear interpolation result in the best-looking, smoother images. 

