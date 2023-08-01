// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../model/movie.dart';

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
      child: Column(
        children: [
          Card(
            elevation: 10,
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
    );
  }
}
