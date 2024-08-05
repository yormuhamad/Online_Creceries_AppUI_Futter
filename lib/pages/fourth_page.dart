import 'package:flutter/material.dart';
import 'package:elogin/pages/fiveth.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Umar Azizov",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blue),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              Image.network('https://via.placeholder.com/150',
                height: 150,
              ),
              const TabBar(
                tabs: [
                  Tab(text: "Телефон"),
                  Tab(text: "Email"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const TextField(
                            decoration: InputDecoration(
                              labelText: 'Ваше имя',
                            ),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              labelText: 'Введите номер',
                            ),
                          ),
                          const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Пароль',
                              suffixIcon: Icon(Icons.visibility),
                            ),
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text("Зарегистрироваться"),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.blue,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Text("При регистрации вы соглашайтесь с Политикой конфиденциальности и Правилами использования платформы",
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [const Text("Уже есть аккаунт?"),
                              TextButton(
                                onPressed: () {},
                                child: const Text("Войти",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const TextField(
                            decoration: InputDecoration(
                              labelText: 'Ваше имя',
                            ),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                            ),
                          ),
                          const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Пароль',
                              suffixIcon: Icon(Icons.visibility),
                            ),
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FifthPage(),
                                  ),
                                );
                              },
                             child: 
                             
                              Text("Зарегистрироваться"),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.blue,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Text( "При регистрации вы соглашайтесь с Политикой конфиденциальности и Правилами использования платформы",
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Уже есть аккаунт?"),
                              TextButton(
                                onPressed: () {
                        
                                },
                                child: const Text(
                                  "Войти",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ],
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
