// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plantapp/pages/cartpage.dart';
import 'package:plantapp/pages/homepage.dart';
import 'package:plantapp/pages/profilepage.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

int _currentIndex = 0;

final screens = [
  const MyHomePage(),
  const CartPage(),
  const ProfilePage()
];

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Color(0xFFEf6f5f5),
        selectedItemColor: Colors.green,
        currentIndex: _currentIndex,
         onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
           BottomNavigationBarItem(icon: const Icon(Icons.home), label: 'Home'),

           BottomNavigationBarItem(icon: const Icon(Icons.shopping_cart_outlined),
           label: 'Cart'),

            BottomNavigationBarItem(icon: const Icon(Icons.person_outlined),label: 'Account')
        ],
      ),
      body: screens [_currentIndex],
    );
  }
}
