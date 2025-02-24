import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  List<String> categories = ["All", "Action", "Comedy", "Thriller"];
  String selectedCategory = "All"; // Default active category

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Categories Title and "See More" Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text("See More", style: TextStyle(color: Colors.blueAccent)),
              ),
            ],
          ),
          SizedBox(height: 10),

          // Categories List
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: categories.map((category) {
              bool isActive = selectedCategory == category;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCategory = category;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: isActive ? Colors.red : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white54),
                  ),
                  child: Text(
                    category,
                    style: TextStyle(
                      color: isActive ? Colors.white : Colors.white54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),

          SizedBox(height: 20),

          // Third Column: Image Section
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage("assets/images/home.png"), // Replace with your image
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
