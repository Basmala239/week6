import 'package:flutter/material.dart';

Widget dataWidget(String iconpath,String title){
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Row(
      children: [
        Image.asset(iconpath,color:const Color(0xFFFE8800),width: 24,height: 24,),
        const SizedBox(width: 5,),
        Text(title,style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xFF0B0C17)
        ),),
      ],
    ),
  );
}