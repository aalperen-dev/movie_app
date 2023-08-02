import 'package:flutter/material.dart';

import '../model/movie.dart';
import '../widget/horizontal_list.dart';
import '../widget/toprated_list.dart';
import '../widget/vertical_list.dart';

class DasboardScreen extends StatelessWidget {
  const DasboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie App'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ilk sıra
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recommended',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View All",
                    ),
                  ),
                ],
              ),
            ),
            // ikinci sıra
            Container(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movieList.length,
                itemBuilder: (context, index) {
                  return HorizontalListItem(index);
                },
              ),
            ),
            const SizedBox(height: 20),
            // üçüncü sıra
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Best of 2023',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "ViewAll",
                    ),
                  ),
                ],
              ),
            ),
            // dördüncü sıra
            Container(
              height: 500,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: bestMovieList.length,
                itemBuilder: (context, index) {
                  return VerticalListItem(index);
                },
              ),
            ),
            // beşinci sıra
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Top Rated Movies',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "ViewAll",
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: topRatedMovieList.length,
                itemBuilder: (context, index) {
                  return TopRatedItem(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
