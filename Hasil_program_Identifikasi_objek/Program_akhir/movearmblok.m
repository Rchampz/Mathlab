function movearmblok(targetblok)
% % targetblok = vector berukuran 1x16 yang berisi jumlah target dalam setiap
% blok.

idTB=find(targetblok>=1);
for i=1:length(idTB)
    numTarget=targetblok(idTB(i));
    for j=1:numTarget
        movearm(idTB(i));
    end
end