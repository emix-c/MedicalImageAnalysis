%part a 
%1D fourier transform on x and y separately

%on x 

fftx = fft(x); 

%plot amplitude spectrum of x 
%choosing an x range that is appropiate 
%center using fftshift 
freq = linspace(-10,10,numel(fftx)); 
figure; 
plot(freq, fftshift(abs(fftx))); 

%on y 

ffty = fft(y); 

%plot amplitude spectrum of y (fftshift again)

freq = linspace(-10, 10,numel(ffty)); 
figure; 
plot(freq, fftshift(abs(ffty))); 


%part b 
%remove high frequency from both via thresholding 

%experiment with diff threshold value 

threshold = 50; 
fftx(abs(fftx)<threshold)=0; 

ffty(abs(ffty)<threshold)=0; 



%part c 
%apply inverse Fourier 
new_fftx = ifft(fftx); 
new_ffty = ifft(ffty); 
%only real parts 
x1 = uint8(real(new_fftx)); 
y1 = uint8(real(new_ffty));


%part d 
plot(x,y,'b');
hold on
plot(x1,y1,'r');
hold off


%part e 
imshow(img,[]);
hold on
plot(x1,y1,'r');
hold off
% 


%part f 
%First, I looked at both x and y signals and I performed a 1D fourier
%transform on them so that I could see the different frequencies in each signal. 
% I then performed thresholding and inverse fourier transform
% on both. This is to remove any high frequency (noise) and I experimented
% with my threshold to try to remove as much noise as possible without
% interfering with the components that should be kept. 
% I then removed any imaginary parts of the remaining components of each
% signal and then plotted them on top of the given brain image. 
%The result is a smoother boundary curve that highlights the corpus
%callosum and the image is depicted below. 


