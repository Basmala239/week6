import 'package:flutter/material.dart';

Widget fastestDelivery(String imagepath,double discount,String title,String description, double price, String time, double rate ){
  return Container(
     margin: const EdgeInsets.all(20),
    width: 350,
    height: 200,
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
                      width: 350,
                      height: 180,
                      fit: BoxFit.fill,),
            Positioned(
              right: 0,
              bottom: 50,
              child: Container(
                width: 150,
                height: 20,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xFFFE8800),
                borderRadius: BorderRadius.only(topLeft:Radius.circular(10),bottomLeft:Radius.circular(10)),
              ),
              child: Text('€$discount off delivery',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.w400
              ),)
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