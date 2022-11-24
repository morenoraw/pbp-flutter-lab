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

## Tugas 8

# Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.

Perbedaan yang dimiliki dua method tersebut adalah method `push()` pada widget navigator akan menambahkan route(page/screen) baru ke dalam stack route yang diatur oleh Navigator. Method `pushReplacment()` akan mengganti route lama (route yang berada pada top of the stack) dengan route baru.

# Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

- `Form`, sebagai container untuk mengelompokkan widget form field lainnya
- `Expanded`, untuk membuat child widgetnya mengisi ruang pada mainaxis
- `TextFormField`, untuk membuat Form Field yang berisikan TextField
- `DropdownButtonFormField`, untuk membuat Form yang berisikan data dari List
- `SizedBox`, Membuat kotak dengan ukuran tetap.

# Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).

- onHover
- onSaved
- onFocusChange
- onLongPress
- onPressed
- onTap
- onClick
- onChanged

# Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

Navigator cara kerjanya seperti struktur data Stack yang berarti berprinsip LIFO (Last In First Out). Halaman yang sedang ditampilkan akan berada di paling atas. Sesuai dengan Stack, Navigator akan melakukan operasi seperti `push` dan `pop`. Operasi `push` akan menambahkan rute baru kedalam stack sehingga halaman baru akan ditampilkan. Operasi `pop` akan menghilangkan route yang berada pada top of stack sehingga halaman yang sedang ditampilkan berubah menjadi halaman sebelumnya.

# Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

1. Membuat drawer serta routing pada widget drawer
2. Membuat model untuk budget
3. Membuat halaman Tambah Budget
4. Membuah halaman yang menampilkan Data Budget
5. Me-*refactor* atau membuat widget Drawer menjadi berada di file terpisah 

## Tugas 9

# Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Ya, kita dapat mengambil data JSON tanpa membuat model di flutter, tetapi lebih baik membuat model terlebih dahulu. Karena dengan model kita tahu persis jenis data apa yang ingin kita ambil dan tertata rapih.

# Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

1. FutureBuilder(), sebuah widget untuk membantu program menjalankan fungsi secara asynchronous dan akan memperbarui UI berdasarkan snapshot terbaru dari interaksi dengan Future.
2. ListView(), digunakan untuk membuat widget array linier yang dapat digulir.
3. GestureDetector(), widget non-visual yang digunakan untuk mendeteksi gestur pengguna.


# Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.

Data JSON diambil dengan membuat sebuah fungsi yang mengirim HTTP GET request ke Heroku. Respon dari heroku tersebut kemudian diproses dan digunakan untuk menginisialisasi model yang telah didefinisikan sebelumnya.

# Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

1. Menambahkan tombol navigasi pada drawer/hamburger untuk ke halaman mywatchlist, saya menambahkan di widget drawer.dart
2. Membuat satu file dart yang berisi model mywatchlist, saya membuatnya didalam folder models dengan nama modelwatchlist.dart
3. Menambahkan halaman mywatchlist yang berisi semua watch list yang ada pada endpoint JSON di Django yang telah kamu deploy ke Heroku sebelumnya (Tugas 3). Pada bagian ini, kamu cukup menampilkan judul dari setiap mywatchlist yang ada, saya melakukannya di watchlist.dart
4. Membuat navigasi dari setiap judul watch list ke halaman detail, saya menggunakan OnTap jadi ketika dipencet akan bisa merefer ke detail.
5. Menambahkan halaman detail untuk setiap mywatchlist yang ada pada daftar tersebut. Halaman ini menampilkan judul, release date, rating, review, dan status (sudah ditonton/belum). Saya membuat page baru yaitu detailwatchlist.dart
6. Menambahkan tombol untuk kembali ke daftar mywatchlist, saya menggunakan TextButton yang berada di SizedBox