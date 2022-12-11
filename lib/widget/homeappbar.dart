import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 300,vertical: 50),
      child: Row(
        children: [
         Text(
          'Welcome',style: TextStyle(fontSize: 20),textAlign: TextAlign.right,)
        ],
      ),
    );
  }
}