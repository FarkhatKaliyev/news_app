import 'package:get/get.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/models/post.dart';
import 'package:news_app/service/api_service.dart';

class AlertsController extends GetxController {}

class HomeController extends GetxController {}

class AccountController extends GetxController {
  var counter = 0.obs;

  void increaseCounter() {
    counter.value += 1;
  }
}

class MainScreenController extends GetxController {
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}

class PostsController extends GetxController {
  Post posts = Post();
  List<Articles> postsList = [];
  String search;

  PostsController({required this.search});

  @override
  void onInit() async {
    await initState();
    super.onInit();
  }

  void updateNews() async {
    await initState();
  }

  Future initState() async {
    await getNews();
    update();
  }

  Future getNews() async {
    postsList = await NewsService.getNews(search);
    return postsList;
  }
}
