% %given y signal, y is size 433
% 
% %part a 
% %make 2 1D Gaussian filters with diff sigma 
% 
figure; 
plot(y); 

% 
sigma = 11; 
size = 67; 
value = linspace(-size / 2, size/2, size); 
% %use Gaussian function 
filter1 = 1/(sqrt(2*pi*sigma ^2)) * exp(- value.^ 2 / (2*sigma ^2)); 
% 
% %plot 1st filter 
figure; 
plot(value, filter1); 

filtered1 = conv(y, filter1, 'same'); 
figure; 
%plot resulting signal 
plot(filtered1); 
% 
% %The original signal y is very noisy. After applying the first Gaussian
% %filter, there is noticeably less noise, with the resulting signal having a
% %peak at around 150 and a slightly smaller peak at 225. This was reflected
% %in the original signal y as it had high peaks from about 150 to 225. 
% 
% 
%2nd filter 
sigma = 7; 
size = 43; 
value = linspace(-size / 2, size/2, size); 
filter2 = 1/(sqrt(2*pi* sigma ^2)) * exp(- value.^ 2 / (2*sigma ^2));

%plot 2nd filter 
figure; 
plot(value, filter2); 

%apply filter
filtered2= conv(y, filter2, 'same');

%plot resulting signal 
figure; 
plot(filtered2); 

%In comparison with the first Gaussian filter, the second one reuslted in a
%signal that had a few more peaks (4) , with the peaks starting in the
%range of 125 to 250. Because the second filter had a smaller sigma, there
%was less smoothing of the signal and so there was more noise than the
%resulting signal from the first filter. 

%part b 
%create 2 1D filters w/ derivative of Gaussian and diff sigma 


sigma = 7; 
size = 43; 
value = linspace(-size / 2, size/2, size); 
%use derivative of Gaussian function 
derivfilter1 = (- value / sigma^2) .* (1/(sqrt(2*pi*sigma ^2)) * exp(- value.^ 2 / (2*sigma ^2))); 

figure; 
plot(value, derivfilter1); 

derivfiltered1= conv(y, derivfilter1, 'same');
figure; 
plot(derivfiltered1); 

%This resulting signal was created using the derivative of the Gaussian, 
% hence the peaks represent any sudden changes from the original signal. In
% particular, there is a sharp peak at around 100, representing the sudden
% jump that occurs around 100 in the original signal. There is another jump 
% at around 250, where the original signal jumps back down. 
% In the areas where the original signal had no significant change 
% (0-100 and 280-450), the resulting signal had a few tiny peaks but mainly
% constant. 


%2nd derivfilter 

sigma = 11; 
size = 67; 
value = linspace(-size / 2, size/2, size); 
%use derivative of Gaussian function 
derivfilter2 = (- value / sigma^2) .* (1/(sqrt(2*pi*sigma ^2)) * exp(- value.^ 2 / (2*sigma ^2))); 

figure; 
plot(value, derivfilter2); 

derivfiltered2= conv(y, derivfilter2, 'same');
figure; 
plot(derivfiltered2); 

%Similar to the other resulting signal from the 1st filter from the
%derivative of the Gaussian, any sudden peaks and jumps are representative
%of big changes in the original signal. In the resulting signal, there is a
% large peak at around 100 and the other one is around 250 in the other 
% direction. This directly represents the big jump up that occurs around
% 100 and the jump down around 250 in the original signal. Because the
% sigma is bigger, it is more sensitive to changes and therefore, the rest
% of the signal is very constant, more constant than the previous
% resulting signal. 






