import 'package:flutter/material.dart';
import 'package:project/Common/utils.dart';
import 'package:project/widget/Moviecard.dart';



class TrendingMovieWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Trending Movies Title & "See More"
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Trending Movies",
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text("See More", style: TextStyle(color: Colors.blueAccent)),
              ),
            ],
          ),
          SizedBox(height: 10),

          // Movie Cards in a Horizontal Scroll View
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: trendingMovies.length,
              itemBuilder: (context, index) {
                return MovieCard(
                  title: trendingMovies[index]["title"]!,
                  imagePath: trendingMovies[index]["image"]!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
