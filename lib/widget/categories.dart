import 'package:flutter/material.dart';

Widget categoriesWidget(String imagepath, String title,double places){
  return Container(
    height:100 ,
    width: 135.5,
    margin:const  EdgeInsets.all(20),
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
          Container(
            width: 140,
            height: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft:Radius.circular(10) ,topRight: Radius.circular(10)),
            color: Color(0xFFFB9D80) ,
            ),
            child: Image.asset(imagepath),
          ),
          const SizedBox(height:10 ,),
          Text(title,
          style:const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.black,
          ),),
          const SizedBox(height:10 ,),
          Text('${places}places',
          style:const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Color(0xFF494C61),
          ),),
        ]),
      ),
    
  );
}