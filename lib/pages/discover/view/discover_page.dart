import 'package:flutter/material.dart';
import 'package:priver_movie/api_service.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  List<dynamic>? movies;
  static const String BASE_URL_IMAGE = 'https://image.tmdb.org/t/p/w300';

  @override
  void initState() {
    super.initState();
    //_getTrendingMovies();
  }

  void _getTrendingMovies() async {
    try {
      final results = await ApiService.getTrendingMovies();
      final moviesList = results['results'] as List<dynamic>;
      setState(() {
        movies = moviesList;
      });
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: movies != null ? _buildMovieList() : _buildLoading(),
    );
  }

  Widget _buildLoading() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          _getTrendingMovies();
        },
        child: Text("Mostrar Peliculas"),
      ),
    );
  }

  Widget _buildMovieList() {
    return ListView.builder(
      itemCount: movies!.length,
      itemBuilder: (context, index) {
        final movie = movies![index];
        final String pathImage = "${BASE_URL_IMAGE}${movie['poster_path']}";
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(movie['title']),
                Text('Lenguaje: ${movie['original_language']}'),
                // Text(movie['id']),
                Text('Descripcion: ${movie['overview']}'),
                Text('Fecha: ${movie['release_date']}'),
                Image.network(pathImage),
              ],
            ),
          ),
        );
      },
    );
  }
}