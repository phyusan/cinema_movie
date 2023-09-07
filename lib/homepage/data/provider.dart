import 'package:cinema_movie/homepage/model/movie_list_model.dart';
import 'package:cinema_movie/homepage/data/api.dart';
import 'package:riverpod/riverpod.dart';

final mov = FutureProvider<List<MovieList>>((ref) async {
  return ref.watch(getmovProvider).list();
});
