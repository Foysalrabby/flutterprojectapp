import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String title;
  final String imagePath;

  MovieCard({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: Column(
        children: [
          // Movie Poster
          Container(
            width: 120,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),

          // Movie Title
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
