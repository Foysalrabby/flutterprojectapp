import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/widget/Category.dart';
import 'package:project/widget/Searchbar.dart';
import 'package:project/widget/Trandingmovie.dart';

class Homescreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExtendHomescreen();
  }
}

class ExtendHomescreen extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align text to left
                    children: [
                      Text(
                        "Hello Rafsan",
                        style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Let's celebrate holiday",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),

                  // Right Side: Logo or Icon
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/sports.png"), //
                    radius: 24, //
                  ),
                ],
              ),
              SizedBox(height: 10,),
              SearchWidget(),
              CategoryWidget(),
              SizedBox(height: 10,),
              TrendingMovieWidget()

            ],


          ),
        ),
      ),
    );
  }
}
