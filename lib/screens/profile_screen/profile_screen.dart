import 'package:flutter/material.dart';
import 'package:week6/core/managers/assets_manager/assets_manager.dart';
import 'package:week6/models/data_model.dart';
import 'package:week6/widget/data.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          const SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 216, 216, 216).withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(4,8),
                ),
              ]
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child:
            Image.asset(AssetManager.profileimage),
            ),
          ),
          const SizedBox(height: 20,),
          const Text('Katty Berry',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.black
          ),),
          const Text('kattyberry@gmail.com',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xFF494C61)
          ),),
          ...List.generate(DetailModel.list.length, (index) => dataWidget(DetailModel.list[index].iconpath, DetailModel.list[index].title))
          ,const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:
             [
              
              const SizedBox(width: 20,),
              SizedBox(
                width: 150,
                height: 44,
                
                child: ElevatedButton.icon(
                  onPressed: (){}
                  , icon: Image.asset(AssetManager.logouticon)
                , label: const Text('Log out',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Color(0xFFF83B01)
                ),),
                style: ButtonStyle(
                  
                  backgroundColor: MaterialStateProperty.all(Colors.white)
                ),),
              ),
            ],
          )
          ,const SizedBox(height: 20,),
      ])
      ,
    ));
  }
}