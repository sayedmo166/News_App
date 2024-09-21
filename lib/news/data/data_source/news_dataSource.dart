import 'package:news_app/news/data/models/article.dart';

abstract class NewsDatasource {
  Future<List<Article>> getNews(String sourceId);
}
