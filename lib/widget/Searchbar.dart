import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                hintStyle: TextStyle(color: Colors.white54),
                prefixIcon: Icon(Icons.search, color: Colors.white54),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.white54),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.white54),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2), // Highlighted border
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 10),
              ),
              style: TextStyle(color: Colors.white), // Text color
            ),
          ),

          SizedBox(width: 12), // Space between elements

          // Right Side (Equal-like Icon) - 20%
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white54), // Add a border
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.tune_outlined, color: Colors.white54), // Vertical dots icon
          ),
        ],

    );
  }
}
