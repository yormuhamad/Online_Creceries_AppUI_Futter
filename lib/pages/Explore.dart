
import 'package:elogin/pages/gridpage.dart';
import 'package:flutter/material.dart';

class Explore_Page extends StatefulWidget {
  const Explore_Page({super.key});

  @override
  State<Explore_Page> createState() => _Explore_PageState();
}

class _Explore_PageState extends State<Explore_Page> {

  List<String> suratho =[
    "images/pngfuel 3.png",
    "images/pngfuel 6 (1).png",
    "images/pngfuel 6 (2).png",
    "images/pngfuel 6 (3).png",
    "images/pngfuel 6.png",
    "images/pngfuel 9.png",
    "images/pngfuel 6 (2).png",
    "images/pngfuel 3.png",
  ];
  List<String> textyakum =[
    "Frash Fruits",
    "Cooking Oil",
    "Frash Fruits",
    "Cooking Oil",
    "Frash Fruits",
    "Cooking Oil",
    "Frash Fruits",
    "Cooking Oil",
  ];
  List<String>textduyum = [
    "& Vegetable",
    "& Ghee",
    "& Vegetable",
    "& Ghee",
    "& Vegetable",
    "& Ghee",
    "& Vegetable",
    "& Ghee",
  ];
  List<Color>rangho=[
  const  Color(0xff53B175),
  const  Color(0xffF8A44C),
   const  Color(0xffF7A593),
   const  Color(0xffD3B0E0),
   const  Color(0xffFDE598),
   const  Color(0xffB7DFF5),
  const   Color(0xff836AF6),
   const  Color(0xff8B91A0),
  ];
    @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Find Products",
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      ),
      body: Column(
        children: [
          SizedBox(
                width: double.infinity,
                height:550,
                child: 
                GridView.builder(
                
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: suratho.length,
          itemBuilder: (context, index) {
            return GridPage(suratay:suratho[index],text1: textyakum[index],text2: textduyum[index],rang: rangho[index],);
          }
              ),
            ),
        ],
      ),
    );
  }
}