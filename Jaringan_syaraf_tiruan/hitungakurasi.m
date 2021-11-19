function [A, CM, IND, PER] = hitungakurasi(target, output)
% fungsi untuk menghitung akurasi dari hasil klasifikasi
% [A, CM, IND, PER] = hitungakurasi(target, output)
% target = adalah target dari kelas (M x N) M adalah identitas kelas, dan N
% adalah jumlah sample.
% output = keluaran kalsifikasi (M x N)
% A = nilai akurasi
% CM = confusion matrix
% PER = presentasi hasil, utk menghitung sensitifitas dan spesifisitas
% sensitivitas = PER(:,3);
% spesifisitas = PER(:,4);

[rt, ct]=size(target);
[ro, co]=size(output);
if (rt==1 | ro==1)
    Nc = max(target);
    target = ubahbentuktarget(target,Nc);
    output = ubahbentuktarget(output,Nc);
end
[c, cm, IND, PER]=confusion(target,output);
A = 1-c;
CM = cm;