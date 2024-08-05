
import 'package:elogin/pages/second_page.dart';
import 'package:flutter/material.dart';

class Onbording extends StatelessWidget {
  const Onbording({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          
          decoration:  const BoxDecoration(
            image: DecorationImage(image: AssetImage("images/81401.png",),
             fit: BoxFit.cover),
            
          ),
          
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                const SizedBox(height: 400,),
              Image.asset('images/Group.png'),
              const SizedBox(height: 10,),
            const  Text("Welcome",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600,color: Colors.white),),
            const  Text("to our store",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600,color: Colors.white),),
            const  Text("Ger your groceries in as fast as one hour",
            style: TextStyle(fontSize: 14,color: Colors.grey),),
           const SizedBox(height: 15,),
              
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondPage()));  
                    },
                  child: 
                  Container(
                    alignment: Alignment.center,
                    width: 353,
                    height: 67,
                    decoration: BoxDecoration(
                      color: const Color(0xff53B175),
                      borderRadius: BorderRadiusDirectional.circular(15),
                    ),
                    child: 
                    Center(child: Text("Get Started",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),)),
                  )),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}