import 'package:flutter/material.dart';
import 'package:priver_movie/helper/app_colors.dart';
import 'package:priver_movie/helper/app_text_style.dart';
import 'package:priver_movie/helper/ratio_calculator.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: ratioCalculator.calculateHeight(36),
                left: ratioCalculator.calculateWidth(24),
                bottom: ratioCalculator.calculateHeight(20),
              ),
              child: Text(
                "Find Movies, Tv series,\nand more..",
                style: AppTextStyle.text24W500TextStyle,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: ratioCalculator.calculateWidth(24),
              ),
              width: ratioCalculator.calculateWidth(327),
              height: ratioCalculator.calculateHeight(48),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: AppColors.barraBusquedaColor,
                  filled: true,
                  hintStyle: AppTextStyle.text14W500TextStyle3,
                  hintText: 'Buscar...',
                  prefixIcon: Icon(Icons.search, color: AppColors.labelTitleColor,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}































// import 'package:flutter/material.dart';
// import 'package:priver_movie/api_service.dart';

// class DiscoverPage extends StatefulWidget {
//   const DiscoverPage({super.key});

//   @override
//   State<DiscoverPage> createState() => _DiscoverPageState();
// }

// class _DiscoverPageState extends State<DiscoverPage> {
//   List<dynamic>? movies;
//   static const String BASE_URL_IMAGE = 'https://image.tmdb.org/t/p/w300';

//   @override
//   void initState() {
//     super.initState();
//     //_getTrendingMovies();
//   }

//   void _getTrendingMovies() async {
//     try {
//       final results = await ApiService.getTrendingMovies();
//       final moviesList = results['results'] as List<dynamic>;
//       setState(() {
//         movies = moviesList;
//       });
//     } catch (error) {
//       print(error);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: movies != null ? _buildMovieList() : _buildLoading(),
//     );
//   }

//   Widget _buildLoading() {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () {
//           _getTrendingMovies();
//         },
//         child: Text("Mostrar Peliculas"),
//       ),
//     );
//   }

//   Widget _buildMovieList() {
//     return ListView.builder(
//       itemCount: movies!.length,
//       itemBuilder: (context, index) {
//         final movie = movies![index];
//         final String pathImage = "${BASE_URL_IMAGE}${movie['poster_path']}";
//         return Card(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 Text(movie['title']),
//                 Text('Lenguaje: ${movie['original_language']}'),
//                 // Text(movie['id']),
//                 Text('Descripcion: ${movie['overview']}'),
//                 Text('Fecha: ${movie['release_date']}'),
//                 Image.network(pathImage),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }