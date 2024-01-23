%detect edges of Im1 and Im2

%Sobel, Prewitt, Roberts, Laplacian of Gaussian, Canny 

%for Im1 
sobel1 = edge(Im1, "sobel"); 
prewitt1 = edge(Im1, "prewitt"); 
roberts1 = edge(Im1, "roberts"); 
loG1 = edge(Im1, "log"); 
canny1 = edge(Im1, "canny"); 

figure; 
montage({Im1, sobel1, prewitt1, roberts1, loG1, canny1}); 


%for Im2 
sobel2 = edge(Im2, "sobel"); 
prewitt2 = edge(Im2, "prewitt"); 
roberts2 = edge(Im2, "roberts"); 
loG2 = edge(Im2, "log"); 
canny2 = edge(Im2, "canny"); 

figure; 
montage({Im2, sobel2, prewitt2, roberts2, loG2, canny2}); 


%Using the different edge detection methods, the Canny method detects the
%most edges, as it also detects the weaker edges. The Laplacian of Gaussian
%also detects the stronger edges and some of the weak ones. The other
%methods: Sobel, Prewitt and Roberts were only able to detect a few
%stronger edges. 
