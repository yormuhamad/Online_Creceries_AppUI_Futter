// import 'package:darvesh/bottomnavigationbar_page.dart';
// import 'package:darvesh/shope_page.dart';
import 'package:elogin/pages/asosi.dart';
import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
  const Page6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
 mainAxisAlignment: MainAxisAlignment.center,         
          children: [
            Image.asset("images/Group 6872.png",width: 269,height: 240,),
            SizedBox(height: 50,),
            const Column(
              children: [
                Text("Your Order has been",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 28),),
                Text(" accepted",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 28),),
                SizedBox(height: 15,),
                Text("Your items has been placcd and is on",style: TextStyle(fontSize: 16),),
                Text("it’s way to being processed",style: TextStyle(fontSize: 16),)
              ],
            ),
     const SizedBox(height: 75,),
            Container(
              alignment: Alignment.center,
              width: 364,
              height: 67,
              decoration: BoxDecoration(
                color: const Color(0xff53B175),
                borderRadius: BorderRadius.circular(19),
              ),
              child: const Text("Track Order",
              style: TextStyle(color: Colors.white,
              fontSize:18 ,fontWeight: FontWeight.w600),),
            ),
            const SizedBox(height: 18,),
            TextButton(onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const MyHomePage()),
              (route) => true,
              );
            }, 
            child: const Text("Back to home",style: TextStyle(fontSize:16,
            fontWeight: FontWeight.w600, color: Colors.black ),))
          ],
        )
        ),
    );
  }
}
