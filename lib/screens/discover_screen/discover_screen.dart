import 'package:flutter/material.dart';
import 'package:week6/core/managers/assets_manager/assets_manager.dart';
import 'package:week6/models/fast_delivery_list.dart';
import 'package:week6/models/popular_items_list.dart';
import 'package:week6/widget/dots.dart';
import 'package:week6/widget/fastest_delivery.dart';
import 'package:week6/widget/popular_items.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child:SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: const Color(0xFFF96234),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Icon(Icons.home,color: Color(0xFFFED8CC),),
              ),
              const SizedBox(width: 10,),
              const Text('Home, ', style: 
              TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14
              ),),
              const Text('Jl. Soekarno Hatta 15A', style:
               TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 14
               ),),
               const Icon(Icons.keyboard_arrow_down,color: Color(0xFFF83B01),),
               ]),
               const SizedBox(height: 15,),
               Container(
                height: 184,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient:const  LinearGradient(colors: [
                    Color(0xFFFE8800),
                    Color(0xFFF83B01),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
                  
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Get your 30% daily\n discount now!',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18
                          ,color: Colors.white
                        ),),
                        SizedBox(
                          width: 171,
                          height: 44,
                          child: ElevatedButton(onPressed: (){},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black)
                          )
                          , child: const Text('Order now',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.white
                          ),)),
                        )
                      ],
                    ),
                    const Spacer(),
                    Image.asset(AssetManager.burgerimage)
                ]),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    dots(Colors.black),
                    const SizedBox(width: 10,),
                    dots(const Color(0xFFB6B7C0)),
                    const SizedBox(width: 10,),
                    dots(const Color(0xFFB6B7C0)),
                    const SizedBox(width: 10,),
                    dots(const Color(0xFFB6B7C0)),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(AssetManager.fireicon),
          ElevatedButton(onPressed: (){},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color(0xFFFED8CC))
              ),
              child:const  Text('See all',style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFFF83B01),
              ),
              ),
               )

            ],
          ),
           const SizedBox(height: 15,),
           Container(
            width: double.infinity,
            height: 380,
            padding: const EdgeInsets.all(20),
            child:ListView.separated(
            itemCount: FastDeliverList.fastdeliverlist.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 15,),
            itemBuilder: (context,index)=>fastestDelivery(
              FastDeliverList.fastdeliverlist[index].imagepath,
               FastDeliverList.fastdeliverlist[index].discount
               , FastDeliverList.fastdeliverlist[index].title, 
               FastDeliverList.fastdeliverlist[index].description, FastDeliverList.fastdeliverlist[index].price, FastDeliverList.fastdeliverlist[index].time, FastDeliverList.fastdeliverlist[index].rate)
          ),),
           const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(AssetManager.popularicon),
          ElevatedButton(onPressed: (){},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color(0xFFFED8CC))
              ),
              child:const  Text('See all',style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFFF83B01),
              ),
              ),
               )

            ],
          ),
           const SizedBox(height: 15,),
           Container(
            width: double.infinity,
            height: 200,
            child:ListView.separated(
              padding:const EdgeInsets.all(20),
            itemCount: PopularItemsList.popularitemslist.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 15,),
            itemBuilder: (context,index)=>popularItemsWidget(PopularItemsList.popularitemslist[index].imagepath, PopularItemsList.popularitemslist[index].title)),),
            const SizedBox(height: 20,),
  ])));
}
}