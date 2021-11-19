%Mathlab
##program untuk pengolahan citra atau gambar atau image processing yang digunakan untuk mendeteksi objek

###1.Pengolahan citra ([disini](https://github.com/Rchampz/Mathlab/tree/main/Pengolahan_citra))
   Dalam pengolahan citra operasi yang dilakukan antara lain
      1. CROP 
         Membuat gambar menjadi ukkuran persegi agar lebih mudah diproses 
         menggunakan perintah *imcrop*
      2. Opening
         Membuat gambar lebih jelas yang digunakan untuk dapat membedakan antara mana objek dan mana background 
         menggunakan perintah *imopen*
      3. Grayscalling
         membuat gambar menjadi hitam dan putih agar nilai RGBnya dapat dibedakan mana objek dan bakcground
         menggunakan perintah*if numberOfColorBands >1
                            Igray = Iopen(:,:,2);
                          else
                            Igray = Iopen
                          end*
      4. Binarize image
         Membuat angka RGB dalam format binari u tuk pemrosesan selanjutnya
      5. Menghilangkan noise
         dengan perintah *bwareaopen(binaryImage,100);*
      6. mengisi lubang dalam objek
         Agar objek menjadi lebih solid menggunakan perintah *imfill (binaryImage)*

###2. Pendeteksian objek menggunakan jaringan syaraf tiruan([disini](Jaringan_syaraf_tiruan))
