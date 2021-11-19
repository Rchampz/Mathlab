function target = ubahbentuktarget(y,Nc)

% program membuat data target dari bentuk numerik ke biner
% menghasilkan matrik target, baris = kelas, kolom = jumlah data (sample)
% data masukan (y) harus berformat vektor kolom, dimana tiap kolom
% merepresentasikan sample, dan nilai elemen adalah kelas 
% dengan kelas pertama bernilai 1.

% misal: y = [1 1 1 2 2 2 3 3 3 4 4 4 3 3 3 2 2 2 1 1 1];
if nargin<2
    Nc=max(y);
end  

if size(y,1)==1
    k_pos=1;
    N = length(y);
%     Nc = max(y);
    target = zeros(Nc, N);
    for k=1:N
        target(y(k),k)= 1;
    end
else
    target=zeros(1,length(y));
    for k=1:length(y)
        target(k)=find(y(:,k)==max(y(:,k)));
    end
end