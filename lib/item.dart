import 'package:flutter/material.dart';

Widget item(String name, String category, String imgUrl, String price){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Image(
            image: NetworkImage(imgUrl),
            width: 170.0,
            height: 160.0,
            alignment: Alignment.center,
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8),
          Text(
            category,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '$price Euro',
            style: TextStyle(
              fontSize: 16,
              color: Colors.orangeAccent,
            ),
          ),
        ],
      ),
    ),
  );
}