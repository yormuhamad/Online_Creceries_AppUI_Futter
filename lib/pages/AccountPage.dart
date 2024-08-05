
import 'package:elogin/pages/second_page.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage("images/Rectangle 82.png"),fit: BoxFit.cover),
          ),
        ),
        const SizedBox(width: 40,),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Afsar Hossen",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            Text("Imshuvo97@gmail.com",style: TextStyle(color: Colors.grey,fontSize: 16),)
          ],
        ),
      ],
    )

   ),
   body: Column(
    children: [
      Container(
              height: 60,
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.one_k_rounded),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Orders")
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined)
                  ],
                ),
              ),
            ),
      Container(
              height: 50,
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.pause_presentation_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Text("My Details")
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined)
                  ],
                ),
              ),
            ),
      Container(
              height: 50,
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Delivery Address")
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined)
                  ],
                ),
              ),
            ),
      Container(
              height: 50,
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.radio),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Payment Methods")
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined)
                  ],
                ),
              ),
            ),
      Container(
              height: 50,
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.turned_in_not_sharp),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Promo Cord")
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined)
                  ],
                ),
              ),
            ),
      Container(
              height: 50,
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.notifications_none_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Notifecations ")
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined)
                  ],
                ),
              ),
            ),
      Container(
              height: 50,
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.radio_button_unchecked_sharp),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Help")
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined)
                  ],
                ),
              ),
            ),
      Container(
              height: 50,
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.radio_button_checked_rounded),
                        SizedBox(
                          width: 20,
                        ),
                        Text("About")
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),

                  Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondPage()));  
                      },
                    child: 
                    Container(
                      alignment: Alignment.center,
                      width: 364,
                      height: 67,
                      decoration: BoxDecoration(
                        color: const Color(0xffF2F3F2),
                        borderRadius: BorderRadiusDirectional.circular(15),
                      ),
                      child: 
                       const Padding(
                         padding: EdgeInsets.all(16.0),
                         child: Row(
                           children: [
                              Icon(Icons.exit_to_app),
                              SizedBox(width: 100,),
                             Text("Log Out",style: TextStyle(color: Colors.black,
                             fontSize: 14,fontWeight: FontWeight.w600),),
                           ],
                         ),
                       ),
                    )
                    ),
                  ],
                ),



    ],
   ),
   );
  }
}
