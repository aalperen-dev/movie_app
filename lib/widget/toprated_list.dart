import 'package:flutter/material.dart';

import '../model/movie.dart';
import '../screens/movie_detail.dart';

class TopRatedItem extends StatelessWidget {
  final int index;

  const TopRatedItem(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 10,
        left: 10,
        right: 10,
      ),
      width: 160.0,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            MovieDetails.routeName,
            arguments: {
              'id': topRatedMovieList[index].id,
              'title': topRatedMovieList[index].title,
              'imageUrl': topRatedMovieList[index].imageUrl,
              'description': topRatedMovieList[index].description,
              'rating': topRatedMovieList[index].rating,
              'year': topRatedMovieList[index].year,
              'duration': topRatedMovieList[index].duration,
            },
          );
        },
        child: Column(
          children: [
            Card(
              elevation: 10,
              child: Hero(
                tag: topRatedMovieList[index].id,
                child: Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(topRatedMovieList[index].imageUrl),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              topRatedMovieList[index].title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
