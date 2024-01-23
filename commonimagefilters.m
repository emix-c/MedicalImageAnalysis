flower1 = imread('flower1.jpg'); 
flower2 = imread('flower2.jpg'); 


%apply average filter, median filter, Gaussian filter and anisotropic 

%flower1 with filters f1 has gaussian noise 
avgfilter = ones(5,5)/25;   
avgonf1 = imfilter(flower1, avgfilter);  
medonf1 = medfilt2(flower1, [4 4]); 
gausonf1 = imgaussfilt(flower1, 2); 

%estimate parameters for anisotropic b/c default doesn't look great 
[gradThresh, numIter] = imdiffuseest(flower1); 
anisonf1 = imdiffusefilt(flower1, 'GradientThreshold', gradThresh, 'NumberofIterations', numIter); 
figure; 
montage({flower1, avgonf1, medonf1, gausonf1, anisonf1}); 

%As seen by above images, the anisotropic diffusion filter worked the best
%to enhance the image, even though there is still a little bit of noise.
%With the other filters, the noise was smoothed out but the overall image
%became very blurry. With anisotropic, there was no bluriness and the
%flower's shape and edges are clear. 


%flower2 with filters 
%f2 has salt and pepper noise 
newfilter = ones(6,6)/36; 
avgonf2 = imfilter(flower2, newfilter); 
medonf2 = medfilt2(flower2); 
gausonf2 = imgaussfilt(flower2, 2); 

%estimate parameters for anisotropic b/c default doesn't look great 
[gradThresh, numIter] = imdiffuseest(flower2); 
anisonf2 = imdiffusefilt(flower2, 'GradientThreshold', gradThresh, 'NumberofIterations', numIter); 

figure; 
montage({flower2, avgonf2, medonf2, gausonf2, anisonf2}); 

%As seen by the above images, the median filter worked the best. The noise
%is completely gone and the flower can be clearly seen. All of the other
%filters resulted in reduction of noise but also overall bluriness of the
%flower. 
