import 'package:flutter/material.dart';

Widget dots(Color color){
  return Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: color,
                ),
              );
}