import 'dart:convert';
import 'package:cinema_movie/homepage/model/movie_detail_model.dart';
import 'package:cinema_movie/homepage/model/movie_list_model.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod/riverpod.dart';

class ApiService {
  Future<List<MovieList>> list() async {
    final List<MovieList> movlist = [];
    var response = await http.get(Uri.parse(
        'https://showtimetestapi.azurewebsites.net/api/movie/getlist'));
    print(response.statusCode);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      for (var i = 0; i < data.length; i++) {
        movlist.add(MovieList.fromJson(data[i]));
      }
    } else {
      throw Exception(response.reasonPhrase);
    }
    return movlist;
  }

  Future<List<DetailMovie>> movDet(String id) async {
    final List<DetailMovie> movieDetail = [];
    var response = await http.get(Uri.parse(
        'https://showtimetestapi.azurewebsites.net/api/movie/detail?uniqueID=$id'));

    print('response-------$id');

    print(response.statusCode);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      movieDetail.add(DetailMovie.fromJson(data));
    } else {
      throw Exception(response.reasonPhrase);
    }
    return movieDetail;
  }
}

final getmovProvider = Provider<ApiService>((ref) => ApiService());
