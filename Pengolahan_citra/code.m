clc;
clear all;
workspace;

im = 'pos22_CO.jpg';

%%CROP
I = imread(im);
Ic=imcrop(I,[0.5 0.5 257 228])

%Opening
SE= strel('square',3);
Iopen = imopen(Ic,SE)


%Membaca image jadi array
[rows, columns, numberOfColorBands] = size(Iopen);
%menampilkan image
subplot(2,2,1);
imshow(Iopen,[]);
title('original image')

%%% Grayscalling
if numberOfColorBands >1
    Igray = Iopen(:,:,2);
else
    Igray = Iopen
end

%menampilkan image
subplot(2,2,2)
imshow(Igray,[]);
title('Grayscale Image');

%Binarize image
binaryImage = Igray>100;
subplot(2,2,3);
imshow(binaryImage, []);
title('initial (noisy) binary image');

%Menghilangkan noise
binaryImage =bwareaopen(binaryImage,100);
subplot(2,2,4);
imshow(binaryImage,[]);
title('Cleaned Binary Image');
