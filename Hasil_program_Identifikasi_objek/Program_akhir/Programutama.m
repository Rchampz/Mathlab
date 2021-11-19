% Program Utama

% load citra (dari kamera)
clear cam; 
cam=webcam(2)
f=snapshot(cam)

% Tentukan target obyek:
% T = obyek yang dicari
%       1 = Tabung
%       2 = Balok
%       3 = Kubus
%       4 = Prisma
T = 3;
[targetblok]=bloktarget(f,T);
movearmblok(targetblok);