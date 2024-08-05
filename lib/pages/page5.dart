import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _ProductdetailState();
}

class _ProductdetailState extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(''),
       backgroundColor: const Color.fromARGB(255, 238, 242, 239),
            actions: const [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Icon(
                  Icons.exit_to_app,
                ),
              ),
            ],
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: 413,
              height: 371,
              decoration:const BoxDecoration(
                color: Color(0xffF2F3F2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Image.asset("images/Vector.png"),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                const  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text( "Naturel Red Apple",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      Icon(Icons.favorite_outline),
                    ],
                  ),
                 const Text("1kg, Price                                                                   ",
                    style: TextStyle(color: Color(0xff7C7C7C), fontSize: 16),
                  ),
                const  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 130,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              width: 17,
                              height: 2.5,
                              decoration: BoxDecoration(
                                color: const Color(0xffB3B3B3),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          const  SizedBox(
                              width: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                              ),
                              child:const Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          const  SizedBox(
                              width: 10,
                            ),
                          const  Icon(
                              Icons.add,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                      const  Text(
                        "4.99",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w900),
                      )
                    ],
                  ),
                 const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 400,


height: 1,
                    color: Colors.black,
                  ),
                const  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Product Detail",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        size: 30,
                      ),
                    ],
                  ),
               const   SizedBox(
                    height: 20,
                  ),
                 const Text(
                    "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                    style: TextStyle(fontSize: 13, color: Color(0xff7C7C7C)),
                  ),
                const  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 400,
                    height: 1,
                    color: Colors.black,
                  ),
                const  SizedBox(
                    height: 15,
                  ),
               const   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nutritions",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_outlined,
                        size: 30,
                      ),
                    ],
                  ),
               const   SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 400,
                    height: 1,
                    color: Colors.black,
                  ),
                const  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const  Text(
                        "Nutritions",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("images/sitora.png"),
                          const  SizedBox(
                              width: 20,
                            ),
                           const Icon(
                              Icons.keyboard_arrow_right_outlined,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
           const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(alignment: Alignment.center,
                child: Text("Add To Basket",style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w600,color: Color(0xffffffff)),
                ),
                width: 364,
                height: 67,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: const Color(0xff53B175),
                ),
              ),
            ),
          const  SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
