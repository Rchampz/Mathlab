function movearm(blok)
% blok = nilai blok.

a = arduino('COM3','Uno','Libraries','Servo');
base = servo(a,'D4');
shoulder = servo(a,'D5');
elbow = servo(a,'D6');


%%BLOK
if (blok==1)
    B=0.1;	
    S=0.8;
    E=0.6;
    disp('blok1')
elseif (blok==2)
    B=0.2;	
    S=0.8;
    E=0.6;
    disp('blok2')
elseif (blok==3)
    B=0.3;	
    S=0.8;
    E=0.6;
    disp('blok3')
elseif (blok==4)
    B=0.4;	
    S=0.8;
    E=0.6;
    disp('blok4')
elseif (blok==5)
    B=0.5;	
    S=0.8;
    E=0.6;
    disp('blok5')
elseif (blok==6)
    B=0.6;	
    S=0.8;
    E=0.6;
    disp('blok6')
elseif (blok==7)
    B=0.7;	
    S=0.8;
    E=0.6;
    disp('blok7')
elseif (blok==8)
    B=0.8;	
    S=0.8;
    E=0.6;
    disp('blok8')
elseif (blok==9)
    B=0.9;	
    S=0.7;
    E=0.6;
    disp('blok9')
elseif (blok==10)
    B=0.15;	
    S=0.55;
    E=0.4;
    disp('blok10')
elseif (blok==11)
    B=0.25;	
    S=0.6;
    E=0.5;
    disp('blok11')
elseif (blok==12)
    B=0.4;	
    S=0.5;
    E=0.5;
    disp('blok12')
elseif (blok==13)
    B=0.5;	
    S=0.5;
    E=0.5;
    disp('blok13')
elseif (blok==14)
    B=0.65;	
    S=0.55;
    E=0.5;
    disp('blok14')
elseif (blok==15)
    B=0.8;	
    S=0.6;
    E=0.5;
    disp('blok15')
elseif (blok==16)
    B=0.9;	
    S=0.55;
    E=0.4;
    disp('blok16')
else
    disp('luar jangkauan')
end

writePosition(base,B);
writePosition(shoulder,S);
writePosition(elbow,E);

pause(2)
%HOME
B1=0.5;
S1=0.4;
E1=0.4;
writePosition(base,B1);
writePosition(shoulder,S1);
writePosition(elbow,E1);
pause(2)


