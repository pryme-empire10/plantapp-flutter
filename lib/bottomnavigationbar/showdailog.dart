import 'package:flutter/material.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      showDialog(context: context, builder: (context)=> AlertDialog(
        title: Text('Helo'),
      ));
    }, child: Text('Details'));
  }
}