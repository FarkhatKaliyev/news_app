import 'package:news_app/models/post.dart';
import 'package:news_app/service/api_repository.dart';

class NewsService {
  static Future getNews(search) async {
    final response = await ApiRepository.dio
        .get('everything', queryParameters: {'q': search});
    final data = response.data;

    if (response.statusCode == 200) {
      return Post.fromJson(data).articles;
    } else {
      return Future.error(data);
    }
  }
}
