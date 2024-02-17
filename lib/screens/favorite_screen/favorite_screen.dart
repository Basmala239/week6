import 'package:flutter/material.dart';
import 'package:week6/models/fast_delivery_list.dart';
import 'package:week6/widget/food_item.dart';
// import 'package:flutter_switch/flutter_switch.dart';
class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  
  bool fooditems=true;
  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
      child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
            const SearchBar(
            leading:  Icon(Icons.search),
          hintText: ' Search',
        ),
          
        //  FlutterSwitch(
        //       showOnOff: true,
        //       value: fooditems,
        //       activeIcon: Text("SELL"),
        //       activeText: "BUY",
        //       inactiveIcon: Text("BUY"),
        //       inactiveText: "SELL",
        //       inactiveColor: Colors.blue,
        //       activeTextFontWeight: FontWeight.normal,
        //       inactiveTextFontWeight: FontWeight.normal,
        //       onToggle: (val) {
        //         setState(() {
        //           fooditems = val;
        //         });
        //       },
        //     )
        const SizedBox(height: 10,),
        Container(
          width: 300,
          height: 80,
          decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: const Color.fromARGB(255, 145, 145, 145)),
                  color: Colors.white
                ),
          child: Row(

            children: [
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xFFF83B01)
                  ),
                  child:const Padding(
                    padding:  EdgeInsets.all(18.0),
                    child:   Text('Food items',
                                    style: TextStyle(
                      color: Colors.white
                                    ),),
                  ),
                ),
              ),
              const Text('Restaurants',
              style: TextStyle(
                  color: Color.fromARGB(255, 145, 145, 145)
              ),)
            ],
          ),
        ),
        const SizedBox(height: 10,),
         ...List.generate(
          FastDeliverList.fastdeliverlist.length,
           (index) => foodItemWidget(
              FastDeliverList.fastdeliverlist[index].imagepath,
               FastDeliverList.fastdeliverlist[index].discount
               , FastDeliverList.fastdeliverlist[index].title, 
               FastDeliverList.fastdeliverlist[index].description, FastDeliverList.fastdeliverlist[index].price, FastDeliverList.fastdeliverlist[index].time, FastDeliverList.fastdeliverlist[index].rate)),
      ],
      ),
    ));
  }
}