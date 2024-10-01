import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/daily_news/domain/usecases/get_article.dart';
import 'package:news_app/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:news_app/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';

class RemoteArticlesBloc
    extends Bloc<RemoteArticlesEvent, RemoteArticlesState> {
  final GetArticleUseCase _getArticleUseCase;
  //debemos espicificar un estado inicial
  RemoteArticlesBloc(this._getArticleUseCase)
      : super(const RemoteArticlesLoading());

  void onGetArticles(GetArticles event, Emitter<RemoteArticlesState> emit) {}
}
