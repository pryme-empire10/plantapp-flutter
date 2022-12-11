import 'package:flutter/material.dart';
import 'package:plantapp/widget/categories.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf6f5f5), //backgound color

      appBar: AppBar(
        backgroundColor: const Color(0xFFf6f5f5),
        elevation: 0,
        centerTitle: true,
        title: Text('Welcome',style: TextStyle(fontSize: 30,color: Colors.black),),
      ),

     body: Column(
      children:  [
       Padding(
         padding: EdgeInsets.symmetric(horizontal: 20.0),
         child: Text("Let's find your plants!",
         style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
       ),

      const SizedBox(height: 20,),

       Padding(
         padding: const EdgeInsets.all(20.0),
         child: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search_outlined,color: Colors.black,),
            hintText: 'search product',
            fillColor: const Color(0xFFFFFFFF),
            filled: true,
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.white))
          ),
         ),
       ),
       //Gridview
       const Categories()
      ],
     ),
    );
  }
}