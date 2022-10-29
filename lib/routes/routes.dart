import 'package:get/get.dart';
import 'package:news_app/bindings/bindings.dart';
import 'package:news_app/screens/mainscreen.dart';

class AppRoutes {
  static const String mainscreen = '/';
}

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.mainscreen,
      page: () => const MainScreen(),
      binding: MainScreenBinding(),
    ),
  ];
}
