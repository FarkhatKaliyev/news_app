import 'package:get/get.dart';
import 'package:news_app/conrollers/controllers.dart';

class MainScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainScreenController>(() => MainScreenController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AccountController>(() => AccountController());
    Get.lazyPut<PostsController>(() => PostsController(search: 'Russia'));
  }
}
