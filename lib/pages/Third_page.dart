import 'dart:convert';

import 'package:elogin/pages/asosi.dart';

import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';



import 'package:flutter/material.dart';



class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
var emailContoller = TextEditingController(text: 'eve.holt@reqres.in');
  var passwordContoller = TextEditingController(text: 'cityslicka');
  var secureStorage = const FlutterSecureStorage();
  String emailText = '';
  String passwordText = '';
  String gandaToken = '';

  Future logInMethod(String email, String password) async {
    var response = await http.post(Uri.parse("https://reqres.in/api/login"),
        headers: <String, String>{
          'Content-Type': "application/json",
        },
        body: jsonEncode({
          "email": email,
          "password": password,
        }));

    if (response.statusCode == 200) {
      var tok = json.decode(response.body)['token'];

      setState(() {
        gandaToken = tok;
      });

      await secureStorage.write(key: 'token', value: tok);
      print(tok);

      //Navigator.push(context, MaterialPageRoute(builder: (context) =>  ThirdPage()));
    }
  }




  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text("Umar Azizov",
        //     textAlign: TextAlign.center,
        //   ),
        //   centerTitle: true,
        //   backgroundColor: Colors.white,
        //   foregroundColor: Colors.blue,
        // ),
        body: Center(
          child: Column(
            children: [
              // Image.asset('images/image.png',
              //   height: 150,
              // ),
              SizedBox(height: 70,),
              const Column(
                children: [
                  Text('Sign in now',style: TextStyle(fontSize: 26,
                  color: Colors.black),),
                  SizedBox(height: 15,),
                  Text('Please fill the details and create account',
              style: TextStyle(color: Colors.grey),),
                ],
              ),
              SizedBox(height: 30,),
              // const TabBar(
              //   tabs: [
              //     Tab(text: "Телефон",),
              //     Tab(text: "Email"),
              //   ],
              // ),
              Expanded(
                child: TabBarView(
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                           TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
                              labelText: 'Leonardo Smith',
                            ),
                          ),
                          SizedBox(height: 15,),
                           TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
                              labelText: 'www.uihut@gmail.com',
                            ),
                          ),
                          SizedBox(height: 15,),
                           TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
                              labelText: '*******',
                              suffixIcon: Icon(Icons.visibility),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Password must be 8 character'),
                              Text(' ',style: TextStyle(color: Colors.red),),
                            ],
                          ),
                          const SizedBox(height: 16),
                        
                        Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyHomePage()));  
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
                      child: const Text("Get Started",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),),
                    )),
                  ],
                ),



                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Don’t have an account?"),
                              TextButton(
                                onPressed: () {},
                                child: const Text("Sign up",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                            
                          ),
                          SizedBox(height: 10,),
                          Text('Or connect'),

                          SizedBox(height: 10,),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/Group_social.png'),


                        //   Icon(Icons.facebook, color: Colors.blueAccent,),
                        //  Icon(Icons.message, color: Colors.red,),
                        //  Icon(Icons.message_rounded, color: Colors.blue,),
                          ]
                         
                         ),
                         
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
