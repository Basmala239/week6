import 'package:flutter/material.dart';
import 'package:week6/core/managers/assets_manager/assets_manager.dart';
import 'package:week6/models/categories_list.dart';
import 'package:week6/widget/categories.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key});

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
               const Spacer(),
               IconButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(0xFFEDEDEF))
                ),
                  onPressed:(){},
                  icon:const Icon(Icons.swap_horiz_outlined),
                  color:const Color(0xFF494C61),
                ),
                const SizedBox(width: 10,),
              IconButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(0xFFEDEDEF))
                ),
                  onPressed:(){},
                  icon:const Icon(Icons.map),
                  color:const Color(0xFF494C61),
                  ),
            ],
          ),
          const SizedBox(height: 10,),
          const Text('Restaurants',
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Categories',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),),
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
          const SizedBox(height: 10,),
          SizedBox(
            width: 422,
            height: 230,
          child:ListView.separated(
            itemCount: CategoriesList.categorieslist.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 15,),
            itemBuilder: (context,index)=>categoriesWidget(
               CategoriesList.categorieslist[index].imagepath, 
               CategoriesList.categorieslist[index].title, 
               CategoriesList.categorieslist[index].places)
          ),),
         
          const SizedBox(height: 15,),
          const Text('All restaurants',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),),
          const SizedBox(height: 10,),
          Container(
            width: 350,
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
                    Image.asset(AssetManager.restaurantimage,
                    width: 350,
                    height: 180,
                    fit: BoxFit.fill,),
                    const SizedBox(height: 5,),
                  const Text('Tasty bowl',
                style:  TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18
                ),),
                const SizedBox(height: 5,),
                const Text('Choose from a variety of bowl options and tas..',
                style:  TextStyle(
                  color: Color(0xFF494C61),
                  fontWeight: FontWeight.w400,
                  fontSize: 12
                ),),
                const SizedBox(height: 5,),
                const Row(
                  children: [
                    Icon(Icons.two_wheeler,color: Color(0xFFFE8800),size: 20,),
                    Text(' €1.00  ',
                    style: TextStyle(
                    color: Color(0xFF494C61),
                    fontWeight: FontWeight.w400,
                    fontSize: 12
                    ),),
                    
                    Icon(Icons.timer,color:  Color(0xFFFE8800),size: 20,),
                    Text(' 40-50min  ',
                    style:  TextStyle(
                    color: Color(0xFF494C61),
                    fontWeight: FontWeight.w400,
                    fontSize: 12
                    ),),
                    Icon(Icons.star,color:  Color(0xFFFE8800),size: 20,),
                    Text(' 9.2',
                    style: TextStyle(
                    color: Color(0xFF494C61),
                    fontWeight: FontWeight.w400,
                    fontSize: 12
                    ),),
                  ],
                )
                        ]),
            ),
          ),
          const SizedBox(height: 10,),
        ]
        ),
      )
    );
  }
}