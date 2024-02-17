import 'package:flutter/material.dart';

Widget tag(String title){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFFF8800)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(title,
        style:const TextStyle(
          color: Colors.white
        ),),
      ),
    ),
  );
}