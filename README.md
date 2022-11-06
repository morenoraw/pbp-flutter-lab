## Tugas 7
#### Moreno Rassya Wibisana
#### 2106752003
 
# Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Widget Stateless adalah Widget yang statusnya tidak dapat diubah setelah dibuat, sementara Widget Stateful adalah Widget yang statusnya dapat diubah setelah dibuat.

Perbedaannya adalah Widget Stateless berguna ketika bagian antarmuka pengguna yang Anda gambarkan tidak bergantung pada apa pun selain informasi konfigurasi dan BuildContext sedangkan Widget Stateful berguna ketika bagian antarmuka pengguna yang Anda gambarkan dapat berubah secara dinamis.

# Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Widget yang saya pakai adalah text GANJIL dan GENAP yang memakai TextStyle blue dan red, lalu Text angka counter, lalu FloatingActionButton Decrement dan Increment yang merupakan tombol plus dan minus counternya. Saya juga memakai Expanded agar tombol-tombolnya bisa rapih di pojok kanan dan kiri.

# Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
`setState()` merupakan salah satu fungsi yang memberi tahu framework bahwa keadaan internal objek ini telah berubah dengan cara yang mungkin berdampak pada interface di subtree. Variabel yang terdampak adalah yang berada didalam fungsi tersebut.

# Jelaskan perbedaan antara const dengan final.
_"const"_ memodifikasi nilai. Kita dapat menggunakannya saat membuat koleksi, seperti const [1, 2, 3], dan saat membuat objek (bukan baru) seperti const Point(2, 3). Di sini, const berarti bahwa seluruh keadaan dalam objek dapat ditentukan seluruhnya pada waktu kompilasi dan bahwa objek akan dibekukan dan sepenuhnya tidak dapat diubah.

_"final"_ berarti tugas tunggal. Variabel atau bidang akhir harus memiliki penginisialisasi. Setelah diberi nilai, nilai variabel akhir tidak dapat diubah. akhir memodifikasi variabel.

# Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuat sebuah program Flutter baru dengan nama counter_7.
<br /> Saya melakukan ini dengan menjalankan `flutter create counter_7` di cmd untuk membuat projek baru.
- Mengubah tampilan program:
<br /> Tampilan saya ubah dengan mengganti title yang berada di MyHomePage menjadi Program Counter.
- Mengimplementasikan logika berikut pada program:
- Tombol + menambahkan angka sebanyak satu satuan.
<br /> Saya memakai fungsi yang sudah ada di template, dengan fungsi _incrementCounter yang menambahkan satu satuan.
- Tombol - mengurangi angka sebanyak satu satuan. Apabila counter bernilai 0, maka tombol - tidak memiliki efek apapun pada counter.
<br /> Lalu, untuk yang ini saya membuat fungsi kebalikan dari increment, lalu memakai if-else.
- Apabila counter bernilai ganjil, maka teks indikator berubah menjadi "GANJIL" dengan warna biru.
<br />Saya membuat widget Text baru yang memakai TextStyle warna biru.
- Apabila counter bernilai genap, maka teks indikator berubah menjadi "GENAP" dengan warna merah.
<br /> Untuk yang ini, saya membuat widget Text baru yang memakai TextStyle warna merah.
- Angka 0 dianggap sebagai angka genap.
<br /> Saya mengimplementasinya memakai modulo, sehingga angka 0 dianggap sebagai angka genap.