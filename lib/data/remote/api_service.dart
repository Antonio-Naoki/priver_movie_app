import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:priver_movie/domain/either/either.dart';

class ApiService {
  static const String apiKey = 'abaab63f95db96063d0cb378cfea8f87';
  static const String baseUrl = 'https://api.themoviedb.org/3';

  final headers = {
    'Accept': 'application/json',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhYmFhYjYzZjk1ZGI5NjA2M2QwY2IzNzhjZmVhOGY4NyIsInN1YiI6IjY1ZDRjMTcyNDE0MjkxMDE3Y2EyZjZhNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.V7JNwRDnJ65EqeZX00V5rGsSsOX3IWie4ig6BkoGiuM',
  };

// funcion para traer los datos de la api como json... conexion con la api. Conexion a Treding Movies
  Future<Either<Exception, Map<String, dynamic>>> getTrendingMovies() async {
    final url = Uri.parse('$baseUrl/trending/movie/day');
    final response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      return Either.right(jsonDecode(response.body));
    } else {
      return Either.left(Exception(
          'Error al obtener datos: ${response.reasonPhrase} code: ${response.statusCode}'));
    }
  }

  // funcion para traer los datos de la api como json... conexion con la api. Conexion a Popular Movies
  Future<Either<Exception, Map<String, dynamic>>> getPopularMovies() async {
    final url = Uri.parse('$baseUrl/tv/popular');
    final response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      return Either.right(jsonDecode(response.body));
    } else {
      return Either.left(Exception(
          'Error al obtener datos: ${response.reasonPhrase} code: ${response.statusCode}'));
    }
  }
}
