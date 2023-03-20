import 'dart:ffi';

class MobileLegend {
  final String nama;
  final String role;
  final String rank;
  final String total_skin;
  final String banner;
  final String deskripsi;
  final List galery;

  MobileLegend(
      {required this.nama,
      required this.role,
      required this.rank,
      required this.total_skin,
      required this.banner,
      required this.deskripsi,
      required this.galery});
}

var mobileLegend = [
  MobileLegend(
    nama: 'Eudora',
    role: 'Mage',
    rank: 'A',
    total_skin: '6 Skin',
    banner: 'assets/images/minggu4/eudora-banner.png',
    deskripsi:
        'Eudora adalah salah satu hero Mage di Mobile Legends yang mendapatkan revamp di update project NEXT. Hero yang sebelum nya bisa dibilang terlupakan ini akhirnya pada meta sekarang banyak digunakan kembali setelah mendapatkan revamp. Perlu kalian ketahui bahwa ada 7 skin terbaik Eudora Mobile Legends yang telah diberikan Moonton kepada Eudora.',
    galery: [
      'assets/images/minggu4/eudora-skin-1.jpeg',
      'assets/images/minggu4/eudora-skin-2.jpeg',
      'assets/images/minggu4/eudora-skin-3.jpeg',
      'assets/images/minggu4/eudora-skin-4.jpeg',
    ],
  ),
  MobileLegend(
    nama: 'Selena',
    role: 'Assasin/Mage',
    rank: 'S',
    total_skin: '9 Skin',
    banner: 'assets/images/minggu4/selena-banner.jpg',
    deskripsi:
        'Selena harus dapat memaksimal kan setiap skill nya dengan baik. Penggunaan skill satu dengan skill dua nya bisa memberikan efek stun sekaligus tambahan damage yang dihasilkan dari abyssal trap nya. Setelah musuh terkena arrow kalian maka langsung serang dia menggunakan mode abyssal nya.',
    galery: [
      'assets/images/minggu4/selena-skin-1.jpg',
      'assets/images/minggu4/selena-skin-2.jpeg',
      'assets/images/minggu4/selena-skin-3.jpeg',
      'assets/images/minggu4/selena-skin-4.jpg',
    ],
  ),
  MobileLegend(
    nama: 'Gusion',
    role: 'Assasin/Mage',
    rank: 'SS',
    total_skin: '9 Skin',
    banner: 'assets/images/minggu4/gusion-banner.jpg',
    deskripsi:
        'Gusion sebaiknya kalian memahami dulu setiap skill yang dimilikinya dan sebisa mungkin untuk menaikkan level secepatnya. Karena Gusion ini termasuk hero yang kuat saat di early game, kalian bisa langsung bermain secara agresif untuk menyerang musuh. Pastikan untuk selalu memanfaatkan skill nya dengan maksimal ya!',
    galery: [
      'assets/images/minggu4/gusion-skin-1.jpeg',
      'assets/images/minggu4/gusion-skin-2.jpg',
      'assets/images/minggu4/gusion-skin-3.jpeg',
      'assets/images/minggu4/gusion-skin-4.jpeg',
    ],
  ),
  MobileLegend(
    nama: 'Fanny',
    role: 'Assasin',
    rank: 'SSS',
    total_skin: '11 Skin',
    banner: 'assets/images/minggu4/fany-banner.jpg',
    deskripsi:
        'Fanny sendiri walau cukup banyak difavorite kan oleh para player pada kenyataan nya untuk bermain hero ini cukup sulit. Jika kalian ingin menggunakan fanny dengan baik pastikan untuk menguasai penggunaan skill kabel nya terlebih dahulu. Jika sudah kalian kuasai bisa dijamin akan sangat mudah ketika menggunakannya dalam suatu gameplay.',
    galery: [
      'assets/images/minggu4/fany-skin-1.jpeg',
      'assets/images/minggu4/fany-skin-2.jpeg',
      'assets/images/minggu4/fany-skin-3.jpeg',
      'assets/images/minggu4/fany-skin-4.jpeg',
    ],
  ),
  MobileLegend(
    nama: 'Wanwan',
    role: 'Marksman',
    rank: 'SSS',
    total_skin: '7 Skin',
    banner: 'assets/images/minggu4/wanwan-banner.jpg',
    deskripsi:
        'Wanwan merupakan hero Marksman yang terkesan kuat, lalu mempunyai Attack speed dan serangan yang begitu lincah. Tidak heran kalau ada yang jago pake hero tersebut, kalian kalian akan merasa sulit untuk menangkap dan mengalahkannya karena itu.',
    galery: [
      'assets/images/minggu4/wanwan-skin-1.jpg',
      'assets/images/minggu4/wanwan-skin-2.jpg',
      'assets/images/minggu4/wanwan-skin-3.jpg',
      'assets/images/minggu4/wanwan-skin-4.jpg',
    ],
  ),
];
