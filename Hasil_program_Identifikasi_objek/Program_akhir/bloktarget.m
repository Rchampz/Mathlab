function [targetblok]=bloktarget(f,T)
%   F = citra akusiisi;
%   T = obyek yang dicari
%   1 = Tabung
%   2 = Balok
%   3 = Kubus
%   4 = Prisma
 

load citrablok;

if T==1
    TO='Tabung';
elseif T==2
    TO='Balok';
elseif T==3
    TO='Kubus';
else
    TO='Prisma';
end

[kelas,K,koordinat,ciri, LI]=identifikasi(f,T);

figure(3), imshow(f);
hold on;
idtarget=find(K==1);
Itarget=logical(zeros(240,320));
pxltarget=round(koordinat);
for i=1:length(idtarget)
    hold on;
    plot(koordinat(1,idtarget(i)),koordinat(2,idtarget(i)),...
        '*r');
    Itarget(pxltarget(2,idtarget(i)),pxltarget(1,idtarget(i)))=1;
end
title(strcat('Target objek: ',TO));

% penentuan blok target
targetblok=zeros(1,16);
for blk=1:16
    csum=Itarget&citrablok(:,:,blk);
    if sum(sum(csum))>=1
        targetblok(blk)=targetblok(blk)+1;
    end
end 