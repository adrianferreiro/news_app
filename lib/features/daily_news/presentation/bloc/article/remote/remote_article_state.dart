import 'package:equatable/equatable.dart';
import 'package:news_app/features/daily_news/domain/entities/article.dart';
import 'package:dio/dio.dart';

abstract class RemoteArticlesState extends Equatable {
  //parámetros
  final List<ArticleEntity>? articles;
  final DioException? error;
  const RemoteArticlesState({this.articles, this.error});
}

//estados
//cargando
class RemoteArticlesLoading extends RemoteArticlesState {
  const RemoteArticlesLoading();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

//recibimos los datos
class RemoteArticlesDone extends RemoteArticlesState {
  const RemoteArticlesDone(List<ArticleEntity> article)
      : super(articles: article);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

//problema al recibir los datos
class RemoteArticlesError extends RemoteArticlesState {
  const RemoteArticlesError(DioException error) : super(error: error);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
