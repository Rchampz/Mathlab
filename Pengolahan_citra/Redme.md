#Pengolahan citra yang dilakukan antara lain

##1. CROP
menggunakan perintah *imcrop(nama file image)*
##2. Opening yaitu 
membuat gambar objek menjadi hitam sepenuhnya menggunakan perintah *imopen*
##3. Membaca image jadi array
Dengan menggunakan perintah *[rows, columns, numberOfColorBands] = size(nama hasil pengolahan opening)* 
dimana perintah tersebut menambahkan nomor baris dan kolom yang diisi oleh nilai RGB untuk tiaptiap kolom
##4. Grayscalling
yaitu mengubah image atau citra kedalam warna hitam dan putih menggunakan perintah *Igray*
##5. Binarize image
Mengubah tiap tiap baris dan kolom yang sudah terisi olrh nilai RGB kedalam angka binary menggunakan perintah *binaryImage*
##6. Menghilangkan noise
Menghilangan noise berfungsi untuk menyeleksi manakan yang bukan objek menggunakan perintah *bwareaopen*
