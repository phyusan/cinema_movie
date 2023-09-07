import 'dart:convert';
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
}

final getmovProvider = Provider<ApiService>((ref) => ApiService());
