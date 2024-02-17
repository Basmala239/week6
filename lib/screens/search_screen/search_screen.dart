import 'package:flutter/material.dart';
import 'package:week6/widget/tag.dart';
// import 'package:flutter_tags/flutter_tags.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  //initialize an empty list
  //final List<String> _tags = ['burger','vegetarian','healthy','wrap','fast food','salad','snack','sandwich','sushi','desserts','thai','lunch','pizza','kebab','breakfast','wings'];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
           const SearchBar(
            leading:  Icon(Icons.search),
          hintText: ' Search',
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tag('burger'),
            const SizedBox(width: 5,),
            tag('vegetarian'),
            const SizedBox(width: 5,),
            tag('healthy'),
          ],
         
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tag('warp'),
            const SizedBox(width: 5,),
            tag('fast food'),
            const SizedBox(width: 5,),
            tag('salad'),
            const SizedBox(width: 5,),
            tag('snack'),
          ],
         
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tag('sandwich'),
            const SizedBox(width: 5,),
            tag('sushi'),
            const SizedBox(width: 5,),
            tag('desserts'),
          ],
         
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tag('thai'),
            const SizedBox(width: 5,),
            tag('lunch'),
            const SizedBox(width: 5,),
            tag('pizza'),
            const SizedBox(width: 5,),
            tag('kabab'),
          ],
         
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tag('breakfast'),
            const SizedBox(width: 5,),
            tag('wings'),
            const SizedBox(width: 5,),
            tag('dessert'),
          ],
        ),
        ]
         ),
    );
  }
}