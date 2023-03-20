import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/minggu3_controller.dart';

class Minggu3View extends GetView<Minggu3Controller> {
  const Minggu3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Hero Mobile Legend'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: Container(
                  width: 100,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/images/minggu3/fany-banner.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text('Hero Fany'),
                subtitle: Text('Hero Assassin Terbaik Gesek nya'),
                onTap: () {
                  Get.toNamed(
                    '/detailhero',
                    arguments: {
                      'nama': 'Fanny',
                      'role': 'Assasin',
                      'rank': 'SSS',
                      'total_skin': '11 Skin',
                      'banner': 'assets/images/minggu3/fany-banner.jpg',
                      'deskripsi':
                          'Fanny sendiri walau cukup banyak difavorite kan oleh para player pada kenyataan nya untuk bermain hero ini cukup sulit. Jika kalian ingin menggunakan fanny dengan baik pastikan untuk menguasai penggunaan skill kabel nya terlebih dahulu. Jika sudah kalian kuasai bisa dijamin akan sangat mudah ketika menggunakannya dalam suatu gameplay.',
                      'galery': [
                        'assets/images/minggu3/fany-skin-1.jpeg',
                        'assets/images/minggu3/fany-skin-2.jpeg',
                        'assets/images/minggu3/fany-skin-3.jpeg',
                        'assets/images/minggu3/fany-skin-4.jpeg',
                      ],
                    },
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Container(
                  width: 100,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/images/minggu3/gusion-banner.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text('Hero Gusion'),
                subtitle: Text('Hero Mage Terbaik'),
                onTap: () {
                  Get.toNamed(
                    '/detailhero',
                    arguments: {
                      'nama': 'Gusion',
                      'role': 'Assasin/Mage',
                      'rank': 'SS',
                      'total_skin': '9 Skin',
                      'banner': 'assets/images/minggu3/gusion-banner.jpg',
                      'deskripsi':
                          'Gusion sebaiknya kalian memahami dulu setiap skill yang dimilikinya dan sebisa mungkin untuk menaikkan level secepatnya. Karena Gusion ini termasuk hero yang kuat saat di early game, kalian bisa langsung bermain secara agresif untuk menyerang musuh. Pastikan untuk selalu memanfaatkan skill nya dengan maksimal ya!',
                      'galery': [
                        'assets/images/minggu3/gusion-skin-1.jpeg',
                        'assets/images/minggu3/gusion-skin-2.jpg',
                        'assets/images/minggu3/gusion-skin-3.jpeg',
                        'assets/images/minggu3/gusion-skin-4.jpeg',
                      ],
                    },
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Container(
                  width: 100,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/images/minggu3/eudora-banner.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text('Hero Eudora'),
                subtitle: Text('Hero Mage Tersakit'),
                onTap: () {
                  Get.toNamed(
                    '/detailhero',
                    arguments: {
                      'nama': 'Eudora',
                      'role': 'Mage',
                      'rank': 'A',
                      'total_skin': '6 Skin',
                      'banner': 'assets/images/minggu3/eudora-banner.png',
                      'deskripsi':
                          'Eudora adalah salah satu hero Mage di Mobile Legends yang mendapatkan revamp di update project NEXT. Hero yang sebelum nya bisa dibilang terlupakan ini akhirnya pada meta sekarang banyak digunakan kembali setelah mendapatkan revamp. Perlu kalian ketahui bahwa ada 7 skin terbaik Eudora Mobile Legends yang telah diberikan Moonton kepada Eudora.',
                      'galery': [
                        'assets/images/minggu3/eudora-skin-1.jpeg',
                        'assets/images/minggu3/eudora-skin-2.jpeg',
                        'assets/images/minggu3/eudora-skin-3.jpeg',
                        'assets/images/minggu3/eudora-skin-4.jpeg',
                      ],
                    },
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Container(
                  width: 100,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/images/minggu3/selena-banner.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text('Hero Selena'),
                subtitle: Text('Hero Asasin Mage Tersakit'),
                onTap: () {
                  Get.toNamed(
                    '/detailhero',
                    arguments: {
                      'nama': 'Selena',
                      'role': 'Assasin/Mage',
                      'rank': 'S',
                      'total_skin': '9 Skin',
                      'banner': 'assets/images/minggu3/selena-banner.jpg',
                      'deskripsi':
                          'Selena harus dapat memaksimal kan setiap skill nya dengan baik. Penggunaan skill satu dengan skill dua nya bisa memberikan efek stun sekaligus tambahan damage yang dihasilkan dari abyssal trap nya. Setelah musuh terkena arrow kalian maka langsung serang dia menggunakan mode abyssal nya.',
                      'galery': [
                        'assets/images/minggu3/selena-skin-1.jpg',
                        'assets/images/minggu3/selena-skin-2.jpeg',
                        'assets/images/minggu3/selena-skin-3.jpeg',
                        'assets/images/minggu3/selena-skin-4.jpg',
                      ],
                    },
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Container(
                  width: 100,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/images/minggu3/wanwan-banner.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text('Hero Wanwan'),
                subtitle: Text('Hero Marksman Tersakit'),
                onTap: () {
                  Get.toNamed(
                    '/detailhero',
                    arguments: {
                      'nama': 'Wanwan',
                      'role': 'Marksman',
                      'rank': 'SSS',
                      'total_skin': '7 Skin',
                      'banner': 'assets/images/minggu3/wanwan-banner.jpg',
                      'deskripsi':
                          'Wanwan merupakan hero Marksman yang terkesan kuat, lalu mempunyai Attack speed dan serangan yang begitu lincah. Tidak heran kalau ada yang jago pake hero tersebut, kalian kalian akan merasa sulit untuk menangkap dan mengalahkannya karena itu.',
                      'galery': [
                        'assets/images/minggu3/wanwan-skin-1.jpg',
                        'assets/images/minggu3/wanwan-skin-2.jpg',
                        'assets/images/minggu3/wanwan-skin-3.jpg',
                        'assets/images/minggu3/wanwan-skin-4.jpg',
                      ],
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
