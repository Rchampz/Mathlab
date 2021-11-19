function [kelas, K, koordinat, ciri, LI]=identifikasi(I,T)
% fungsi identifikasi obyek
% Input:
% I = citra input dari kamera
% T = obyek yang dicari
%       1 = Tabung
%       2 = Balok
%       3 = Kubus
%       4 = Prisma
% 
% K = vector kelas obyek yang sesuai target;
% kelas = vektor obyek dan identifikasinya


% imask=imbinarize(rgb2gray(imread('masking.jpg')));
imask=imread('blokmask.bmp');
% convert grayscale
Ig=rgb2gray(I);
SE= strel('square',3);
Iopen = imopen(Ig,SE);
Ibin=imbinarize(Iopen);
Imorf1 =bwareaopen(Ibin,100);
Imorf=Imorf1&imask; %%citra di and kan dengan masiking(area kerja)


%ekstraksi ciri
[LI, N] = bwlabel(Imorf); 
blobMeasurements = regionprops(LI,...
'Perimeter', 'Area', 'FilledArea', 'Solidity', 'Centroid',...
'MajorAxisLength','MinorAxisLength');

perimeters = [blobMeasurements.Perimeter];
areas = [blobMeasurements.Area];
filledAreas = [blobMeasurements.FilledArea];
solidities = [blobMeasurements.Solidity];
MajorAxisLength = [blobMeasurements.MajorAxisLength];
MinorAxisLength =  [blobMeasurements.MinorAxisLength];
koord = [blobMeasurements.Centroid];


% merubah susunan matrik koordinat
koordinat=zeros(2,N);
koordinat(1,:)=koord(1:2:end);
koordinat(2,:)=koord(2:2:end);

ciri=[areas;perimeters;solidities;filledAreas;...
    MinorAxisLength;MajorAxisLength];

load net92.mat;
y=net(ciri);

kelas=zeros(1,N);
K=kelas;
for i=1:N
    kelas(i)=find(y(:,i)==max(y(:,i)));
end
K(find(kelas==T))=1;