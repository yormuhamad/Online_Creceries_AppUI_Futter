import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page4 extends StatelessWidget {
  final String? suratay;
  final String? text1;
  final String? text2;

  const Page4({
    super.key,
    required this.suratay,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 323,
        height: 125,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 2, color: Colors.grey)),
            borderRadius: BorderRadius.circular(8),
            color: Colors.white),
        child: Container(
          child:
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                            Image.asset(
                suratay!,
                width: 111,
                height: 74,
                            ),
                            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text1!,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "1kg, Price",
                    style: TextStyle(fontSize: 14),
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Color(0xffF0F0F0),
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(17)),
                        child: Icon(
                          Icons.minimize_sharp,
                          size: 17,
                        ),
                      ),
                      SizedBox(width: 15,),
                      Text("1",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                      SizedBox(width: 15,),
                
                      Container(
                        alignment: Alignment.center,
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Color(0xffF0F0F0),
                            border: Border.all(width: 1, color: Colors.grey,),
                            borderRadius: BorderRadius.circular(17)),
                        child: Icon(
                          Icons.add,
                          size: 17,
                        ),
                      ),
                    ],
                  )
                ],
                            ),
                            Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "x",
                    style: TextStyle(fontSize: 16, color: Color(0xffB3B3B3)),
                  ),
                  Text(
                    text2!,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
                            )
                          ]),
              ),
        ));
  }
}
