import 'package:flutter/material.dart';

Widget foodItemWidget(String imagepath,double discount,String title,String description, double price, String time, double rate ){
  return Container(
   margin: const EdgeInsets.all(20),
    height: 300,
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
        Stack(
          children: [
            Image.asset(imagepath,
                      width: 400,
                      height: 180,
                      fit: BoxFit.fill,),
            Positioned(
              right: 10,
              top: 10,
              child: Container(
                width: 50,
                height: 50,
              alignment: Alignment.center,
              decoration:  BoxDecoration(
                color:const  Color(0xFFF83B01),
                borderRadius: BorderRadius.circular(100),
              ),
              child:const Icon(Icons.favorite,color: Colors.white,)
              ),),
            
          ],
        ),
        const SizedBox(height: 5,),
        Text(title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 18
        ),),
        const SizedBox(height: 5,),
        Text(description,
        style: const TextStyle(
          color: Color(0xFF494C61),
          fontWeight: FontWeight.w400,
          fontSize: 12
        ),),
        const SizedBox(height: 5,),
        Row(
          children: [
            const Icon(Icons.two_wheeler,color: Color(0xFFFE8800)),
            Text(' €$price  ',
            style: const TextStyle(
            color: Color(0xFF494C61),
            fontWeight: FontWeight.w400,
            fontSize: 12
            ),),
            const Icon(Icons.timer,color:  Color(0xFFFE8800),),
            Text(' $time  ',
            style: const TextStyle(
            color: Color(0xFF494C61),
            fontWeight: FontWeight.w400,
            fontSize: 12
            ),),
            const Icon(Icons.star,color:  Color(0xFFFE8800),),
            Text(' $rate',
            style: const TextStyle(
            color: Color(0xFF494C61),
            fontWeight: FontWeight.w400,
            fontSize: 12
            ),),
      
          ],
        )
      
      ]),
    ),
  );
}