import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/minggu1/views/minggu1_view.dart';
import '../modules/minggu1/bindings/minggu1_binding.dart';
import '../modules/minggu2/views/cekGanjilGenap_view.dart';
import '../modules/minggu2/views/counterNumber_view.dart';
import '../modules/minggu2/views/ganjilKeN_view.dart';
import '../modules/minggu2/views/primaKeN_view.dart';
import '../modules/minggu2/bindings/minggu2_binding.dart';
import '../modules/minggu3/views/latihan3_view.dart';
import '../modules/minggu3/views/tugas3_view.dart';
import '../modules/minggu3/views/detailhero_view.dart';
import '../modules/minggu3/views/minggu3.dart';
import '../modules/minggu3/bindings/minggu3_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MINGGU1,
      page: () => const Minggu1View(),
      binding: Minggu1Binding(),
    ),
    GetPage(
      name: _Paths.CEKGANJILGENAP,
      page: () => const CekGanjilGenap(),
    ),
    GetPage(
      name: _Paths.COUNTERNUMBER,
      page: () => const CounterNumber(),
    ),
    GetPage(
      name: _Paths.GANJILKEN,
      page: () => const GanjilKeN(),
    ),
    GetPage(
      name: _Paths.PRIMAKEN,
      page: () => const PrimaKeN(),
    ),
    GetPage(
      name: _Paths.MINGGU3,
      page: () => const Minggu3View(),
      binding: Minggu3Binding(),
    ),
    GetPage(
      name: _Paths.LATIHAN3,
      page: () => const Latihan3View(),
    ),
    GetPage(
      name: _Paths.TUGAS3,
      page: () => const Tugas3View(),
    ),
    GetPage(
      name: _Paths.DETAILHERO,
      page: () => const DetailHeroView(),
    ),
  ];
}
