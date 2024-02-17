import 'package:flutter/material.dart';

Widget popularItemsWidget(String imagepath, String title){
  return Container(
    width: 100,
    height: 150,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 5,
      blurRadius: 7,
      offset: const Offset(4,8),
    ),
  ],
  ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagepath,
          width: 100,
          height: 100,
          fit: BoxFit.fill,),
          const SizedBox(height: 5,),
          Text(title),
        ],
      ),
    ),
  );
}